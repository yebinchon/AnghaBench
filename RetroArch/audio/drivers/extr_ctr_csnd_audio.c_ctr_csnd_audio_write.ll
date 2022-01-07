; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_ctr_csnd_audio.c_ctr_csnd_audio_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_ctr_csnd_audio.c_ctr_csnd_audio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32*, i64 }

@CTR_CSND_AUDIO_COUNT_MASK = common dso_local global i32 0, align 4
@CTR_CSND_AUDIO_COUNT = common dso_local global i32 0, align 4
@CTR_CSND_AUDIO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64)* @ctr_csnd_audio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ctr_csnd_audio_write(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %10, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %11, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %21 = call i32 @ctr_csnd_audio_update_playpos(%struct.TYPE_3__* %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %24, %27
  %29 = load i32, i32* @CTR_CSND_AUDIO_COUNT_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @CTR_CSND_AUDIO_COUNT, align 4
  %32 = ashr i32 %31, 2
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %61, label %34

34:                                               ; preds = %3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %37, %40
  %42 = load i32, i32* @CTR_CSND_AUDIO_COUNT_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @CTR_CSND_AUDIO_COUNT, align 4
  %45 = ashr i32 %44, 4
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %61, label %47

47:                                               ; preds = %34
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  %55 = load i32, i32* @CTR_CSND_AUDIO_COUNT_MASK, align 4
  %56 = and i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %6, align 8
  %59 = lshr i64 %58, 2
  %60 = icmp ult i64 %57, %59
  br i1 %60, label %61, label %112

61:                                               ; preds = %47, %34, %3
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @CTR_CSND_AUDIO_COUNT, align 4
  %71 = ashr i32 %70, 1
  %72 = add nsw i32 %69, %71
  %73 = load i32, i32* @CTR_CSND_AUDIO_COUNT_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %111

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %108, %77
  %79 = call i32 @retro_sleep(i32 1)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %81 = call i32 @ctr_csnd_audio_update_playpos(%struct.TYPE_3__* %80)
  br label %82

82:                                               ; preds = %78
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %85, %88
  %90 = load i32, i32* @CTR_CSND_AUDIO_COUNT_MASK, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @CTR_CSND_AUDIO_COUNT, align 4
  %93 = ashr i32 %92, 1
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %108, label %95

95:                                               ; preds = %82
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %98, %101
  %103 = load i32, i32* @CTR_CSND_AUDIO_COUNT_MASK, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* @CTR_CSND_AUDIO_COUNT, align 4
  %106 = ashr i32 %105, 4
  %107 = icmp slt i32 %104, %106
  br label %108

108:                                              ; preds = %95, %82
  %109 = phi i1 [ true, %82 ], [ %107, %95 ]
  br i1 %109, label %78, label %110

110:                                              ; preds = %108
  br label %111

111:                                              ; preds = %110, %66
  br label %112

112:                                              ; preds = %111, %47
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %156, %112
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %6, align 8
  %117 = lshr i64 %116, 1
  %118 = icmp ult i64 %115, %117
  br i1 %118, label %119, label %159

119:                                              ; preds = %113
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  store i32 %124, i32* %132, align 4
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  store i32 %138, i32* %146, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* @CTR_CSND_AUDIO_COUNT_MASK, align 4
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %119
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 2
  store i32 %158, i32* %7, align 4
  br label %113

159:                                              ; preds = %113
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* @CTR_CSND_AUDIO_SIZE, align 4
  %164 = call i32 @GSPGPU_FlushDataCache(i32* %162, i32 %163)
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* @CTR_CSND_AUDIO_SIZE, align 4
  %169 = call i32 @GSPGPU_FlushDataCache(i32* %167, i32 %168)
  %170 = load i64, i64* %6, align 8
  ret i64 %170
}

declare dso_local i32 @ctr_csnd_audio_update_playpos(%struct.TYPE_3__*) #1

declare dso_local i32 @retro_sleep(i32) #1

declare dso_local i32 @GSPGPU_FlushDataCache(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
