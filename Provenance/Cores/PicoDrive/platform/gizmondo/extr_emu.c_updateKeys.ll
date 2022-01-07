; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_emu.c_updateKeys.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_emu.c_updateKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@updateKeys.prevEvents = internal global i32 0, align 4
@PBTN_HOME = common dso_local global i32 0, align 4
@PGS_Menu = common dso_local global i32 0, align 4
@engineState = common dso_local global i32 0, align 4
@CONFIGURABLE_KEYS = common dso_local global i32 0, align 4
@PicoPad = common dso_local global i32* null, align 8
@PsndOut = common dso_local global i32* null, align 8
@currentConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@noticeMsg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"VOL: %02i \00", align 1
@noticeMsgTime = common dso_local global i32 0, align 4
@movie_data = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @updateKeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updateKeys() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast [2 x i32]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = call i32 (...) @Framework_PollGetButtons()
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @PBTN_HOME, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i32, i32* @PGS_Menu, align 4
  store i32 %13, i32* @engineState, align 4
  br label %14

14:                                               ; preds = %12, %0
  %15 = load i32, i32* @CONFIGURABLE_KEYS, align 4
  %16 = load i32, i32* %1, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %1, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 4095
  %21 = load i32*, i32** @PicoPad, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 4095
  %26 = load i32*, i32** @PicoPad, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 28672
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %14
  %33 = load i32*, i32** @PicoPad, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @emu_DoTurbo(i32* %34, i32 %36)
  br label %38

38:                                               ; preds = %32, %14
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 28672
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32*, i32** @PicoPad, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @emu_DoTurbo(i32* %45, i32 %47)
  br label %49

49:                                               ; preds = %43, %38
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %51, %53
  %55 = lshr i32 %54, 16
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = and i32 %56, 24576
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %90

59:                                               ; preds = %49
  %60 = load i32*, i32** @PsndOut, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %90

62:                                               ; preds = %59
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %3, align 4
  %65 = and i32 %64, 8192
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 100
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %70, %67
  br label %81

74:                                               ; preds = %62
  %75 = load i32, i32* %5, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %74
  br label %81

81:                                               ; preds = %80, %73
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @FrameworkAudio_SetVolume(i32 %82, i32 %83)
  %85 = load i32, i32* @noticeMsg, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @sprintf(i32 %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = call i32 (...) @GetTickCount()
  store i32 %88, i32* @noticeMsgTime, align 4
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  br label %90

90:                                               ; preds = %81, %59, %49
  %91 = load i32, i32* @updateKeys.prevEvents, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %3, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %3, align 4
  %95 = load i32, i32* %3, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @RunEvents(i32 %98)
  br label %100

100:                                              ; preds = %97, %90
  %101 = load i64, i64* @movie_data, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i32 (...) @emu_updateMovie()
  br label %105

105:                                              ; preds = %103, %100
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %107, %109
  %111 = lshr i32 %110, 16
  store i32 %111, i32* @updateKeys.prevEvents, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @Framework_PollGetButtons(...) #2

declare dso_local i32 @emu_DoTurbo(i32*, i32) #2

declare dso_local i32 @FrameworkAudio_SetVolume(i32, i32) #2

declare dso_local i32 @sprintf(i32, i8*, i32) #2

declare dso_local i32 @GetTickCount(...) #2

declare dso_local i32 @RunEvents(i32) #2

declare dso_local i32 @emu_updateMovie(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
