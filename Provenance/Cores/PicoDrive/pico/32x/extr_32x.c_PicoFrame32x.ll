; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_32x.c_PicoFrame32x.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_32x.c_PicoFrame32x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32*, i32*, i32 }
%struct.TYPE_8__ = type { i32 }

@Pico = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@P32XV_VBLK = common dso_local global i32 0, align 4
@Pico32x = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@P32XV_Mx = common dso_local global i32 0, align 4
@P32XV_PEN = common dso_local global i32 0, align 4
@msh2 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@SH2_STATE_VPOLL = common dso_local global i32 0, align 4
@ssh2 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@PicoAHW = common dso_local global i32 0, align 4
@PAHW_MCD = common dso_local global i32 0, align 4
@EL_32X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"poll: %02x %02x %02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoFrame32x() #0 {
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Pico, i32 0, i32 0, i32 0), align 8
  %1 = load i32, i32* @P32XV_VBLK, align 4
  %2 = xor i32 %1, -1
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico32x, i32 0, i32 0), align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 5
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, %2
  store i32 %6, i32* %4, align 4
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico32x, i32 0, i32 0), align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @P32XV_Mx, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %0
  %14 = load i32, i32* @P32XV_PEN, align 4
  %15 = xor i32 %14, -1
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico32x, i32 0, i32 0), align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 5
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %13, %0
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico32x, i32 0, i32 1), align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 128
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = call i32 (...) @SekCyclesDone()
  %28 = call i32 @p32x_schedule_hint(i32* null, i32 %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i32, i32* @SH2_STATE_VPOLL, align 4
  %31 = call i32 @p32x_sh2_poll_event(%struct.TYPE_8__* @msh2, i32 %30, i32 0)
  %32 = load i32, i32* @SH2_STATE_VPOLL, align 4
  %33 = call i32 @p32x_sh2_poll_event(%struct.TYPE_8__* @ssh2, i32 %32, i32 0)
  %34 = load i32, i32* @PicoAHW, align 4
  %35 = load i32, i32* @PAHW_MCD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 (...) @pcd_prepare_frame()
  br label %40

40:                                               ; preds = %38, %29
  %41 = call i32 (...) @PicoFrameStart()
  %42 = call i32 (...) @PicoFrameHints()
  %43 = call i32 (...) @sh2_drc_frame()
  %44 = load i32, i32* @EL_32X, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Pico32x, i32 0, i32 2), align 8
  %46 = and i32 %45, 3
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @msh2, i32 0, i32 0), align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ssh2, i32 0, i32 0), align 4
  %49 = call i32 @elprintf(i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  ret void
}

declare dso_local i32 @p32x_schedule_hint(i32*, i32) #1

declare dso_local i32 @SekCyclesDone(...) #1

declare dso_local i32 @p32x_sh2_poll_event(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @pcd_prepare_frame(...) #1

declare dso_local i32 @PicoFrameStart(...) #1

declare dso_local i32 @PicoFrameHints(...) #1

declare dso_local i32 @sh2_drc_frame(...) #1

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
