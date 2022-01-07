; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_pager.c_compressor_memory_object_data_initialize.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_pager.c_compressor_memory_object_data_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [50 x i8] c"do a data_return() if slot for this page is empty\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compressor_memory_object_data_initialize(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @compressor_pager_lookup(i32 %9, i32 %10)
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @compressor_pager_lock(i32 %12)
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* %8, align 8
  br label %15

15:                                               ; preds = %23, %3
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = add nsw i64 %17, %18
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21
  %24 = load i64, i64* @PAGE_SIZE, align 8
  %25 = load i64, i64* %8, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* %8, align 8
  br label %15

27:                                               ; preds = %15
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @compressor_pager_unlock(i32 %28)
  %30 = load i32, i32* @KERN_SUCCESS, align 4
  ret i32 %30
}

declare dso_local i32 @compressor_pager_lookup(i32, i32) #1

declare dso_local i32 @compressor_pager_lock(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @compressor_pager_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
