; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host.c_host_processor_set_priv.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host.c_host_processor_set_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HOST_PRIV_NULL = common dso_local global i64 0, align 8
@PROCESSOR_SET_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host_processor_set_priv(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @HOST_PRIV_NULL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @PROCESSOR_SET_NULL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11, %3
  %16 = load i64, i64* @PROCESSOR_SET_NULL, align 8
  %17 = load i64*, i64** %7, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %18, i32* %4, align 4
  br label %23

19:                                               ; preds = %11
  %20 = load i64, i64* %6, align 8
  %21 = load i64*, i64** %7, align 8
  store i64 %20, i64* %21, align 8
  %22 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
