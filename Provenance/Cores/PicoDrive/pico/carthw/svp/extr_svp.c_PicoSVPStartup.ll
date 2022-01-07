; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_svp.c_PicoSVPStartup.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_svp.c_PicoSVPStartup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32*, i32* }
%struct.TYPE_6__ = type { i32* }

@EL_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SVP startup\00", align 1
@Pico = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@EL_SVP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"OOM for SVP data\00", align 1
@svp = common dso_local global %struct.TYPE_7__* null, align 8
@svp_dyn_ready = common dso_local global i32 0, align 4
@PicoSVPMemSetup = common dso_local global i32 0, align 4
@PicoCartMemSetup = common dso_local global i32 0, align 4
@PicoSVPDma = common dso_local global i32 0, align 4
@PicoDmaHook = common dso_local global i32 0, align 4
@PicoSVPReset = common dso_local global i32 0, align 4
@PicoResetHook = common dso_local global i32 0, align 4
@PicoSVPLine = common dso_local global i32 0, align 4
@PicoLineHook = common dso_local global i32 0, align 4
@PicoSVPExit = common dso_local global i32 0, align 4
@PicoCartUnloadHook = common dso_local global i32 0, align 4
@svp_states = common dso_local global %struct.TYPE_6__* null, align 8
@carthw_chunks = common dso_local global %struct.TYPE_6__* null, align 8
@PAHW_SVP = common dso_local global i32 0, align 4
@PicoAHW = common dso_local global i32 0, align 4
@POPT_EN_DRC = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoSVPStartup() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @EL_STATUS, align 4
  %3 = call i32 @elprintf(i32 %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0), align 8
  %5 = sext i32 %4 to i64
  %6 = add i64 %5, 24
  %7 = trunc i64 %6 to i32
  %8 = call i32 @PicoCartResize(i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = load i32, i32* @EL_STATUS, align 4
  %13 = load i32, i32* @EL_SVP, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @elprintf(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %51

16:                                               ; preds = %0
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 1), align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0), align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = bitcast i8* %21 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** @svp, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @svp, align 8
  %24 = call i32 @memset(%struct.TYPE_7__* %23, i32 0, i32 24)
  store i32 0, i32* @svp_dyn_ready, align 4
  %25 = load i32, i32* @PicoSVPMemSetup, align 4
  store i32 %25, i32* @PicoCartMemSetup, align 4
  %26 = load i32, i32* @PicoSVPDma, align 4
  store i32 %26, i32* @PicoDmaHook, align 4
  %27 = load i32, i32* @PicoSVPReset, align 4
  store i32 %27, i32* @PicoResetHook, align 4
  %28 = load i32, i32* @PicoSVPLine, align 4
  store i32 %28, i32* @PicoLineHook, align 4
  %29 = load i32, i32* @PicoSVPExit, align 4
  store i32 %29, i32* @PicoCartUnloadHook, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @svp, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @svp_states, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32* %32, i32** %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @svp, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @svp_states, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32* %38, i32** %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @svp, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @svp_states, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32* %43, i32** %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @svp_states, align 8
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** @carthw_chunks, align 8
  %48 = load i32, i32* @PAHW_SVP, align 4
  %49 = load i32, i32* @PicoAHW, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* @PicoAHW, align 4
  br label %51

51:                                               ; preds = %16, %11
  ret void
}

declare dso_local i32 @elprintf(i32, i8*) #1

declare dso_local i32 @PicoCartResize(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
