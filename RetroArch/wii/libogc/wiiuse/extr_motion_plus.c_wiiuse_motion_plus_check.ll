; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_motion_plus.c_wiiuse_motion_plus_check.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_motion_plus.c_wiiuse_motion_plus_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@WM_EXP_ID = common dso_local global i32 0, align 4
@WIIMOTE_STATE_EXP = common dso_local global i32 0, align 4
@WIIMOTE_STATE_EXP_FAILED = common dso_local global i32 0, align 4
@WIIMOTE_STATE_EXP_HANDSHAKE = common dso_local global i32 0, align 4
@EXP_ID_CODE_MOTION_PLUS = common dso_local global i32 0, align 4
@WIIUSE_MOTION_PLUS_ACTIVATED = common dso_local global i32 0, align 4
@EXP_MOTION_PLUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiiuse_motion_plus_check(%struct.wiimote_t* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.wiimote_t*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wiimote_t* %0, %struct.wiimote_t** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %12 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %13 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @WM_EXP_ID, align 4
  %16 = call i32 @wiiuse_read_data(%struct.wiimote_t* %11, i32 %14, i32 %15, i32 6, void (%struct.wiimote_t*, i32*, i32)* @wiiuse_motion_plus_check)
  br label %62

17:                                               ; preds = %3
  %18 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %19 = load i32, i32* @WIIMOTE_STATE_EXP, align 4
  %20 = call i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t* %18, i32 %19)
  %21 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %22 = load i32, i32* @WIIMOTE_STATE_EXP_FAILED, align 4
  %23 = call i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t* %21, i32 %22)
  %24 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %25 = load i32, i32* @WIIMOTE_STATE_EXP_HANDSHAKE, align 4
  %26 = call i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t* %24, i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 16
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 24
  %35 = or i32 %30, %34
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = or i32 %35, %39
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %40, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @EXP_ID_CODE_MOTION_PLUS, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %17
  %49 = load i32, i32* @WIIUSE_MOTION_PLUS_ACTIVATED, align 4
  %50 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %51 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @EXP_MOTION_PLUS, align 4
  %53 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %54 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %57 = load i32, i32* @WIIMOTE_STATE_EXP, align 4
  %58 = call i32 @WIIMOTE_ENABLE_STATE(%struct.wiimote_t* %56, i32 %57)
  %59 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %60 = call i32 @wiiuse_set_ir_mode(%struct.wiimote_t* %59)
  br label %61

61:                                               ; preds = %48, %17
  br label %62

62:                                               ; preds = %61, %10
  ret void
}

declare dso_local i32 @wiiuse_read_data(%struct.wiimote_t*, i32, i32, i32, void (%struct.wiimote_t*, i32*, i32)*) #1

declare dso_local i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t*, i32) #1

declare dso_local i32 @WIIMOTE_ENABLE_STATE(%struct.wiimote_t*, i32) #1

declare dso_local i32 @wiiuse_set_ir_mode(%struct.wiimote_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
