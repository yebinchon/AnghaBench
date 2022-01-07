; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_UpdateBackgroundTrack.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_UpdateBackgroundTrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@S_UpdateBackgroundTrack.musicVolume = internal global float 5.000000e-01, align 4
@s_backgroundFile = common dso_local global i64 0, align 8
@s_musicVolume = common dso_local global %struct.TYPE_4__* null, align 8
@s_rawend = common dso_local global i64 0, align 8
@s_soundtime = common dso_local global i64 0, align 8
@MAX_RAW_SAMPLES = common dso_local global i64 0, align 8
@s_backgroundInfo = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@dma = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@s_backgroundSamples = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"StreamedRead failure on music track\0A\00", align 1
@s_backgroundLoop = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_UpdateBackgroundTrack() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [30000 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i64, i64* @s_backgroundFile, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %115

9:                                                ; preds = %0
  %10 = load float, float* @S_UpdateBackgroundTrack.musicVolume, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_musicVolume, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 2
  %15 = sitofp i32 %14 to float
  %16 = fadd float %10, %15
  %17 = fdiv float %16, 4.000000e+00
  store float %17, float* @S_UpdateBackgroundTrack.musicVolume, align 4
  %18 = load float, float* @S_UpdateBackgroundTrack.musicVolume, align 4
  %19 = fcmp ole float %18, 0.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  br label %115

21:                                               ; preds = %9
  %22 = load i64, i64* @s_rawend, align 8
  %23 = load i64, i64* @s_soundtime, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* @s_soundtime, align 8
  store i64 %26, i64* @s_rawend, align 8
  br label %27

27:                                               ; preds = %25, %21
  br label %28

28:                                               ; preds = %114, %27
  %29 = load i64, i64* @s_rawend, align 8
  %30 = load i64, i64* @s_soundtime, align 8
  %31 = load i64, i64* @MAX_RAW_SAMPLES, align 8
  %32 = add nsw i64 %30, %31
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %115

34:                                               ; preds = %28
  %35 = load i64, i64* @MAX_RAW_SAMPLES, align 8
  %36 = load i64, i64* @s_rawend, align 8
  %37 = load i64, i64* @s_soundtime, align 8
  %38 = sub nsw i64 %36, %37
  %39 = sub nsw i64 %35, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_backgroundInfo, i32 0, i32 0), align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 0), align 4
  %45 = sdiv i32 %43, %44
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @s_backgroundSamples, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* @s_backgroundSamples, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %34
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_backgroundInfo, i32 0, i32 1), align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_backgroundInfo, i32 0, i32 2), align 4
  %55 = mul nsw i32 %53, %54
  %56 = mul nsw i32 %52, %55
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ugt i64 %58, 120000
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  store i32 120000, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_backgroundInfo, i32 0, i32 1), align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_backgroundInfo, i32 0, i32 2), align 4
  %64 = mul nsw i32 %62, %63
  %65 = sdiv i32 %61, %64
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %60, %51
  %67 = getelementptr inbounds [30000 x i32], [30000 x i32]* %3, i64 0, i64 0
  %68 = load i32, i32* %4, align 4
  %69 = load i64, i64* @s_backgroundFile, align 8
  %70 = call i32 @Sys_StreamedRead(i32* %67, i32 1, i32 %68, i64 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = call i32 @Com_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %76 = call i32 (...) @S_StopBackgroundTrack()
  br label %115

77:                                               ; preds = %66
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_backgroundInfo, i32 0, i32 1), align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_backgroundInfo, i32 0, i32 2), align 4
  %81 = getelementptr inbounds [30000 x i32], [30000 x i32]* %3, i64 0, i64 0
  %82 = call i32 @S_ByteSwapRawSamples(i32 %78, i32 %79, i32 %80, i32* %81)
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_backgroundInfo, i32 0, i32 0), align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_backgroundInfo, i32 0, i32 1), align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_backgroundInfo, i32 0, i32 2), align 4
  %87 = getelementptr inbounds [30000 x i32], [30000 x i32]* %3, i64 0, i64 0
  %88 = load float, float* @S_UpdateBackgroundTrack.musicVolume, align 4
  %89 = call i32 @S_RawSamples(i32 %83, i32 %84, i32 %85, i32 %86, i32* %87, float %88)
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* @s_backgroundSamples, align 4
  %92 = sub nsw i32 %91, %90
  store i32 %92, i32* @s_backgroundSamples, align 4
  %93 = load i32, i32* @s_backgroundSamples, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %114, label %95

95:                                               ; preds = %77
  %96 = load i64*, i64** @s_backgroundLoop, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %95
  %101 = load i64, i64* @s_backgroundFile, align 8
  %102 = call i32 @Sys_EndStreamedFile(i64 %101)
  %103 = load i64, i64* @s_backgroundFile, align 8
  %104 = call i32 @FS_FCloseFile(i64 %103)
  store i64 0, i64* @s_backgroundFile, align 8
  %105 = load i64*, i64** @s_backgroundLoop, align 8
  %106 = load i64*, i64** @s_backgroundLoop, align 8
  %107 = call i32 @S_StartBackgroundTrack(i64* %105, i64* %106)
  %108 = load i64, i64* @s_backgroundFile, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %100
  br label %115

111:                                              ; preds = %100
  br label %113

112:                                              ; preds = %95
  store i64 0, i64* @s_backgroundFile, align 8
  br label %115

113:                                              ; preds = %111
  br label %114

114:                                              ; preds = %113, %77
  br label %28

115:                                              ; preds = %8, %20, %74, %110, %112, %28
  ret void
}

declare dso_local i32 @Sys_StreamedRead(i32*, i32, i32, i64) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @S_StopBackgroundTrack(...) #1

declare dso_local i32 @S_ByteSwapRawSamples(i32, i32, i32, i32*) #1

declare dso_local i32 @S_RawSamples(i32, i32, i32, i32, i32*, float) #1

declare dso_local i32 @Sys_EndStreamedFile(i64) #1

declare dso_local i32 @FS_FCloseFile(i64) #1

declare dso_local i32 @S_StartBackgroundTrack(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
