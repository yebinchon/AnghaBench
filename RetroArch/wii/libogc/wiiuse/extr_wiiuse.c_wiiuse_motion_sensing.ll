; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wiiuse.c_wiiuse_motion_sensing.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wiiuse.c_wiiuse_motion_sensing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32 }

@WIIMOTE_STATE_ACC = common dso_local global i32 0, align 4
@WIIMOTE_STATE_HANDSHAKE_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiiuse_motion_sensing(%struct.wiimote_t* %0, i32 %1) #0 {
  %3 = alloca %struct.wiimote_t*, align 8
  %4 = alloca i32, align 4
  store %struct.wiimote_t* %0, %struct.wiimote_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %9 = load i32, i32* @WIIMOTE_STATE_ACC, align 4
  %10 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %36

13:                                               ; preds = %7
  %14 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %15 = load i32, i32* @WIIMOTE_STATE_ACC, align 4
  %16 = call i32 @WIIMOTE_ENABLE_STATE(%struct.wiimote_t* %14, i32 %15)
  br label %27

17:                                               ; preds = %2
  %18 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %19 = load i32, i32* @WIIMOTE_STATE_ACC, align 4
  %20 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %36

23:                                               ; preds = %17
  %24 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %25 = load i32, i32* @WIIMOTE_STATE_ACC, align 4
  %26 = call i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %13
  %28 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %29 = load i32, i32* @WIIMOTE_STATE_HANDSHAKE_COMPLETE, align 4
  %30 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %36

33:                                               ; preds = %27
  %34 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %35 = call i32 @wiiuse_status(%struct.wiimote_t* %34, i32* null)
  br label %36

36:                                               ; preds = %33, %32, %22, %12
  ret void
}

declare dso_local i64 @WIIMOTE_IS_SET(%struct.wiimote_t*, i32) #1

declare dso_local i32 @WIIMOTE_ENABLE_STATE(%struct.wiimote_t*, i32) #1

declare dso_local i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t*, i32) #1

declare dso_local i32 @wiiuse_status(%struct.wiimote_t*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
