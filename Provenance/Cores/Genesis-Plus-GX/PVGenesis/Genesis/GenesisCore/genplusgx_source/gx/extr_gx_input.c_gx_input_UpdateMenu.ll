; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_input.c_gx_input_UpdateMenu.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_input.c_gx_input_UpdateMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@inputs_disabled = common dso_local global i64 0, align 8
@PAD_BUTTONS_HELD = common dso_local global i32 0, align 4
@ANALOG_SENSITIVITY = common dso_local global i32 0, align 4
@PAD_BUTTON_RIGHT = common dso_local global i32 0, align 4
@PAD_BUTTON_LEFT = common dso_local global i32 0, align 4
@PAD_BUTTON_UP = common dso_local global i32 0, align 4
@PAD_BUTTON_DOWN = common dso_local global i32 0, align 4
@held_cnt = common dso_local global i64 0, align 8
@HELD_DELAY = common dso_local global i64 0, align 8
@HELD_SPEED = common dso_local global i64 0, align 8
@m_input = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PAD_BUTTON_A = common dso_local global i32 0, align 4
@PAD_BUTTON_B = common dso_local global i32 0, align 4
@PAD_TRIGGER_L = common dso_local global i32 0, align 4
@PAD_TRIGGER_R = common dso_local global i32 0, align 4
@PAD_TRIGGER_Z = common dso_local global i32 0, align 4
@WPAD_BUTTONS_HELD = common dso_local global i32 0, align 4
@WPAD_BUTTON_1 = common dso_local global i32 0, align 4
@WPAD_BUTTON_2 = common dso_local global i32 0, align 4
@WPAD_BUTTON_A = common dso_local global i32 0, align 4
@WPAD_BUTTON_B = common dso_local global i32 0, align 4
@WPAD_BUTTON_DOWN = common dso_local global i32 0, align 4
@WPAD_BUTTON_HOME = common dso_local global i32 0, align 4
@WPAD_BUTTON_LEFT = common dso_local global i32 0, align 4
@WPAD_BUTTON_MINUS = common dso_local global i32 0, align 4
@WPAD_BUTTON_PLUS = common dso_local global i32 0, align 4
@WPAD_BUTTON_RIGHT = common dso_local global i32 0, align 4
@WPAD_BUTTON_UP = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_A = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_B = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_DOWN = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_FULL_L = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_FULL_R = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_HOME = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_LEFT = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_RIGHT = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gx_input_UpdateMenu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i64, i64* @inputs_disabled, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %77

8:                                                ; preds = %0
  %9 = call i32 (...) @PAD_ScanPads()
  %10 = call i32 @PAD_ButtonsDown(i32 0)
  store i32 %10, i32* %1, align 4
  %11 = call i32 @PAD_ButtonsHeld(i32 0)
  %12 = load i32, i32* @PAD_BUTTONS_HELD, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %2, align 4
  %14 = call i32 @PAD_StickX(i32 0)
  store i32 %14, i32* %3, align 4
  %15 = call i32 @PAD_StickY(i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @ANALOG_SENSITIVITY, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %8
  %20 = load i32, i32* @PAD_BUTTON_RIGHT, align 4
  %21 = load i32, i32* %2, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %2, align 4
  br label %52

23:                                               ; preds = %8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @ANALOG_SENSITIVITY, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @PAD_BUTTON_LEFT, align 4
  %30 = load i32, i32* %2, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %2, align 4
  br label %51

32:                                               ; preds = %23
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @ANALOG_SENSITIVITY, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @PAD_BUTTON_UP, align 4
  %38 = load i32, i32* %2, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %2, align 4
  br label %50

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @ANALOG_SENSITIVITY, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @PAD_BUTTON_DOWN, align 4
  %47 = load i32, i32* %2, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %40
  br label %50

50:                                               ; preds = %49, %36
  br label %51

51:                                               ; preds = %50, %28
  br label %52

52:                                               ; preds = %51, %19
  %53 = load i32, i32* %1, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i64 0, i64* @held_cnt, align 8
  br label %64

56:                                               ; preds = %52
  %57 = load i32, i32* %2, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i64, i64* @held_cnt, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* @held_cnt, align 8
  br label %63

62:                                               ; preds = %56
  store i64 0, i64* @held_cnt, align 8
  br label %63

63:                                               ; preds = %62, %59
  br label %64

64:                                               ; preds = %63, %55
  %65 = load i64, i64* @held_cnt, align 8
  %66 = load i64, i64* @HELD_DELAY, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* %1, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %1, align 4
  %72 = load i64, i64* @HELD_SPEED, align 8
  %73 = load i64, i64* @held_cnt, align 8
  %74 = sub nsw i64 %73, %72
  store i64 %74, i64* @held_cnt, align 8
  br label %75

75:                                               ; preds = %68, %64
  %76 = load i32, i32* %1, align 4
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @m_input, i32 0, i32 0), align 8
  br label %77

77:                                               ; preds = %75, %7
  ret void
}

declare dso_local i32 @PAD_ScanPads(...) #1

declare dso_local i32 @PAD_ButtonsDown(i32) #1

declare dso_local i32 @PAD_ButtonsHeld(i32) #1

declare dso_local i32 @PAD_StickX(i32) #1

declare dso_local i32 @PAD_StickY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
