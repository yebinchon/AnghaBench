; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_mix.c_S_PaintChannelFromWavelet.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_mix.c_S_PaintChannelFromWavelet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_11__* }
%struct.TYPE_14__ = type { i32, i32 }

@snd_vol = common dso_local global i32 0, align 4
@paintbuffer = common dso_local global %struct.TYPE_13__* null, align 8
@SND_CHUNK_SIZE_FLOAT = common dso_local global i32 0, align 4
@sfxScratchIndex = common dso_local global i32 0, align 4
@sfxScratchPointer = common dso_local global %struct.TYPE_12__* null, align 8
@sfxScratchBuffer = common dso_local global i16* null, align 8
@SND_CHUNK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_PaintChannelFromWavelet(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i16*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @snd_vol, align 4
  %22 = mul nsw i32 %20, %21
  store i32 %22, i32* %12, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @snd_vol, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** @paintbuffer, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i64 %30
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %15, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %16, align 8
  br label %35

35:                                               ; preds = %40, %5
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @SND_CHUNK_SIZE_FLOAT, align 4
  %38 = mul nsw i32 %37, 4
  %39 = icmp sge i32 %36, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %16, align 8
  %44 = load i32, i32* @SND_CHUNK_SIZE_FLOAT, align 4
  %45 = mul nsw i32 %44, 4
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  br label %35

50:                                               ; preds = %35
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @sfxScratchIndex, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sfxScratchPointer, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = icmp ne %struct.TYPE_12__* %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54, %50
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %60 = load i16*, i16** @sfxScratchBuffer, align 8
  %61 = call i32 @S_AdpcmGetSamples(%struct.TYPE_11__* %59, i16* %60)
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* @sfxScratchIndex, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** @sfxScratchPointer, align 8
  br label %64

64:                                               ; preds = %58, %54
  %65 = load i16*, i16** @sfxScratchBuffer, align 8
  store i16* %65, i16** %17, align 8
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %114, %64
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %117

70:                                               ; preds = %66
  %71 = load i16*, i16** %17, align 8
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i16, i16* %71, i64 %74
  %76 = load i16, i16* %75, align 2
  %77 = sext i16 %76 to i32
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = mul nsw i32 %78, %79
  %81 = ashr i32 %80, 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %81
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %13, align 4
  %91 = mul nsw i32 %89, %90
  %92 = ashr i32 %91, 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, %92
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %102 = mul nsw i32 %101, 2
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %70
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  store %struct.TYPE_11__* %107, %struct.TYPE_11__** %16, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %109 = load i16*, i16** @sfxScratchBuffer, align 8
  %110 = call i32 @decodeWavelet(%struct.TYPE_11__* %108, i16* %109)
  %111 = load i32, i32* @sfxScratchIndex, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* @sfxScratchIndex, align 4
  store i32 0, i32* %9, align 4
  br label %113

113:                                              ; preds = %104, %70
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  br label %66

117:                                              ; preds = %66
  ret void
}

declare dso_local i32 @S_AdpcmGetSamples(%struct.TYPE_11__*, i16*) #1

declare dso_local i32 @decodeWavelet(%struct.TYPE_11__*, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
