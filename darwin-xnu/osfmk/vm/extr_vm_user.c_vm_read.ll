; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_vm_read.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_vm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_MAP_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_read(i64 %0, i64 %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @VM_MAP_NULL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %19, i64* %6, align 8
  br label %50

20:                                               ; preds = %5
  %21 = load i64, i64* %9, align 8
  %22 = call i64 @os_convert_overflow(i64 %21, i64* %14)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %25, i64* %6, align 8
  br label %50

26:                                               ; preds = %20
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i64, i64* %9, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @FALSE, align 4
  %33 = call i64 @vm_map_copyin(i64 %27, i32 %29, i32 %31, i32 %32, i64* %13)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* @KERN_SUCCESS, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %26
  %38 = load i64, i64* %13, align 8
  %39 = load i64*, i64** %10, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i64*, i64** %11, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i64*, i64** %11, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  br label %48

48:                                               ; preds = %37, %26
  %49 = load i64, i64* %12, align 8
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %48, %24, %18
  %51 = load i64, i64* %6, align 8
  ret i64 %51
}

declare dso_local i64 @os_convert_overflow(i64, i64*) #1

declare dso_local i64 @vm_map_copyin(i64, i32, i32, i32, i64*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
