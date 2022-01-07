; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_psp.c_psp_pad_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_psp.c_psp_pad_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@PBTN_NUB_UP = common dso_local global i32 0, align 4
@PBTN_NUB_DOWN = common dso_local global i32 0, align 4
@PBTN_NUB_LEFT = common dso_local global i32 0, align 4
@PBTN_NUB_RIGHT = common dso_local global i32 0, align 4
@ANALOG_DEADZONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psp_pad_read(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @sceCtrlReadBufferPositive(%struct.TYPE_4__* %4, i32 1)
  br label %11

9:                                                ; preds = %1
  %10 = call i32 @sceCtrlPeekBufferPositive(%struct.TYPE_4__* %4, i32 1)
  br label %11

11:                                               ; preds = %9, %7
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @PBTN_NUB_UP, align 4
  %15 = load i32, i32* @PBTN_NUB_DOWN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PBTN_NUB_LEFT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PBTN_NUB_RIGHT, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ANALOG_DEADZONE, align 4
  %27 = sub nsw i32 128, %26
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %11
  %30 = load i32, i32* @PBTN_NUB_LEFT, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %11
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ANALOG_DEADZONE, align 4
  %37 = add nsw i32 128, %36
  %38 = icmp sgt i32 %35, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @PBTN_NUB_RIGHT, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %33
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ANALOG_DEADZONE, align 4
  %47 = sub nsw i32 128, %46
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @PBTN_NUB_UP, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ANALOG_DEADZONE, align 4
  %57 = add nsw i32 128, %56
  %58 = icmp sgt i32 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @PBTN_NUB_DOWN, align 4
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %53
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @sceCtrlReadBufferPositive(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @sceCtrlPeekBufferPositive(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
