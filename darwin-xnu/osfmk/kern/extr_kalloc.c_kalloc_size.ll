; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kalloc.c_kalloc_size.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kalloc.c_kalloc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kalloc_map_min = common dso_local global i64 0, align 8
@kalloc_map_max = common dso_local global i64 0, align 8
@kalloc_map = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kalloc_size(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @zone_element_size(i8* %6, i32* null)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %2, align 8
  br label %35

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = load i64, i64* @kalloc_map_min, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load i64, i64* @kalloc_map_max, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @kalloc_map, align 4
  store i32 %23, i32* %4, align 4
  br label %26

24:                                               ; preds = %17, %12
  %25 = load i32, i32* @kernel_map, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @vm_map_lock_read(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @vm_map_lookup_kalloc_entry_locked(i32 %29, i8* %30)
  store i64 %31, i64* %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @vm_map_unlock_read(i32 %32)
  %34 = load i64, i64* %5, align 8
  store i64 %34, i64* %2, align 8
  br label %35

35:                                               ; preds = %26, %10
  %36 = load i64, i64* %2, align 8
  ret i64 %36
}

declare dso_local i64 @zone_element_size(i8*, i32*) #1

declare dso_local i32 @vm_map_lock_read(i32) #1

declare dso_local i64 @vm_map_lookup_kalloc_entry_locked(i32, i8*) #1

declare dso_local i32 @vm_map_unlock_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
