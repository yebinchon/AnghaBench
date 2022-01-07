; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_events.c_idle_cycle.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_events.c_idle_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32, i32 }

@WIIUSE_SMOOTHING = common dso_local global i32 0, align 4
@SMOOTH_ROLL = common dso_local global i32 0, align 4
@SMOOTH_PITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @idle_cycle(%struct.wiimote_t* %0) #0 {
  %2 = alloca %struct.wiimote_t*, align 8
  store %struct.wiimote_t* %0, %struct.wiimote_t** %2, align 8
  %3 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %4 = call i64 @WIIUSE_USING_ACC(%struct.wiimote_t* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %8 = load i32, i32* @WIIUSE_SMOOTHING, align 4
  %9 = call i64 @WIIMOTE_IS_FLAG_SET(%struct.wiimote_t* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %13 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %12, i32 0, i32 1
  %14 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %15 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %14, i32 0, i32 0
  %16 = load i32, i32* @SMOOTH_ROLL, align 4
  %17 = call i32 @apply_smoothing(i32* %13, i32* %15, i32 %16)
  %18 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %19 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %18, i32 0, i32 1
  %20 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %21 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %20, i32 0, i32 0
  %22 = load i32, i32* @SMOOTH_PITCH, align 4
  %23 = call i32 @apply_smoothing(i32* %19, i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %11, %6, %1
  ret void
}

declare dso_local i64 @WIIUSE_USING_ACC(%struct.wiimote_t*) #1

declare dso_local i64 @WIIMOTE_IS_FLAG_SET(%struct.wiimote_t*, i32) #1

declare dso_local i32 @apply_smoothing(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
