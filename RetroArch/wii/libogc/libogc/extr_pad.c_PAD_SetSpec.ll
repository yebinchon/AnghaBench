; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c_PAD_SetSpec.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c_PAD_SetSpec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__pad_initialized = common dso_local global i64 0, align 8
@__pad_spec = common dso_local global i32 0, align 4
@SPEC0_MakeStatus = common dso_local global i32 0, align 4
@__pad_makestatus = common dso_local global i32 0, align 4
@SPEC1_MakeStatus = common dso_local global i32 0, align 4
@SPEC2_MakeStatus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PAD_SetSpec(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @__pad_initialized, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %25

6:                                                ; preds = %1
  store i32 0, i32* @__pad_spec, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = load i32, i32* @SPEC0_MakeStatus, align 4
  store i32 %10, i32* @__pad_makestatus, align 4
  br label %23

11:                                               ; preds = %6
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @SPEC1_MakeStatus, align 4
  store i32 %15, i32* @__pad_makestatus, align 4
  br label %22

16:                                               ; preds = %11
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %17, 6
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @SPEC2_MakeStatus, align 4
  store i32 %20, i32* @__pad_makestatus, align 4
  br label %21

21:                                               ; preds = %19, %16
  br label %22

22:                                               ; preds = %21, %14
  br label %23

23:                                               ; preds = %22, %9
  %24 = load i32, i32* %2, align 4
  store i32 %24, i32* @__pad_spec, align 4
  br label %25

25:                                               ; preds = %23, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
