; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_io.c_wiiuse_disable_expansion.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_io.c_wiiuse_disable_expansion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@WIIMOTE_STATE_EXP = common dso_local global i32 0, align 4
@WIIUSE_NUNCHUK_REMOVED = common dso_local global i32 0, align 4
@WIIUSE_CLASSIC_CTRL_REMOVED = common dso_local global i32 0, align 4
@WIIUSE_MOTION_PLUS_REMOVED = common dso_local global i32 0, align 4
@EXP_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiiuse_disable_expansion(%struct.wiimote_t* %0) #0 {
  %2 = alloca %struct.wiimote_t*, align 8
  store %struct.wiimote_t* %0, %struct.wiimote_t** %2, align 8
  %3 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %4 = load i32, i32* @WIIMOTE_STATE_EXP, align 4
  %5 = call i32 @WIIMOTE_IS_SET(%struct.wiimote_t* %3, i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %50

8:                                                ; preds = %1
  %9 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %10 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %37 [
    i32 128, label %13
    i32 130, label %21
    i32 129, label %29
  ]

13:                                               ; preds = %8
  %14 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %15 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = call i32 @nunchuk_disconnected(i32* %16)
  %18 = load i32, i32* @WIIUSE_NUNCHUK_REMOVED, align 4
  %19 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %20 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %38

21:                                               ; preds = %8
  %22 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %23 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = call i32 @classic_ctrl_disconnected(i32* %24)
  %26 = load i32, i32* @WIIUSE_CLASSIC_CTRL_REMOVED, align 4
  %27 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %28 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %38

29:                                               ; preds = %8
  %30 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %31 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i32 @motion_plus_disconnected(i32* %32)
  %34 = load i32, i32* @WIIUSE_MOTION_PLUS_REMOVED, align 4
  %35 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %36 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %38

37:                                               ; preds = %8
  br label %38

38:                                               ; preds = %37, %29, %21, %13
  %39 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %40 = load i32, i32* @WIIMOTE_STATE_EXP, align 4
  %41 = call i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t* %39, i32 %40)
  %42 = load i32, i32* @EXP_NONE, align 4
  %43 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %44 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %47 = call i32 @wiiuse_set_ir_mode(%struct.wiimote_t* %46)
  %48 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %49 = call i32 @wiiuse_status(%struct.wiimote_t* %48, i32* null)
  br label %50

50:                                               ; preds = %38, %7
  ret void
}

declare dso_local i32 @WIIMOTE_IS_SET(%struct.wiimote_t*, i32) #1

declare dso_local i32 @nunchuk_disconnected(i32*) #1

declare dso_local i32 @classic_ctrl_disconnected(i32*) #1

declare dso_local i32 @motion_plus_disconnected(i32*) #1

declare dso_local i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t*, i32) #1

declare dso_local i32 @wiiuse_set_ir_mode(%struct.wiimote_t*) #1

declare dso_local i32 @wiiuse_status(%struct.wiimote_t*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
