; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_ctr_dsp_audio.c_ctr_dsp_audio_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_ctr_dsp_audio.c_ctr_dsp_audio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i64 }

@CTR_DSP_AUDIO_COUNT_MASK = common dso_local global i32 0, align 4
@CTR_DSP_AUDIO_COUNT = common dso_local global i32 0, align 4
@CTR_DSP_AUDIO_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64)* @ctr_dsp_audio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ctr_dsp_audio_write(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ndspChnGetSamplePos(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %16, %19
  %21 = load i32, i32* @CTR_DSP_AUDIO_COUNT_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @CTR_DSP_AUDIO_COUNT, align 4
  %24 = ashr i32 %23, 2
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %49, label %26

26:                                               ; preds = %3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load i32, i32* @CTR_DSP_AUDIO_COUNT_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @CTR_DSP_AUDIO_COUNT, align 4
  %35 = ashr i32 %34, 4
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %38, %41
  %43 = load i32, i32* @CTR_DSP_AUDIO_COUNT_MASK, align 4
  %44 = and i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %6, align 8
  %47 = lshr i64 %46, 2
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %106

49:                                               ; preds = %37, %26, %3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @CTR_DSP_AUDIO_COUNT, align 4
  %57 = ashr i32 %56, 1
  %58 = add nsw i32 %55, %57
  %59 = load i32, i32* @CTR_DSP_AUDIO_COUNT_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %105

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %102, %63
  %65 = call i32 @svcSleepThread(i32 100000)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ndspChnGetSamplePos(i32 %68)
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %6, align 8
  %78 = lshr i64 %77, 2
  %79 = add i64 %76, %78
  %80 = sub i64 %72, %79
  %81 = load i32, i32* @CTR_DSP_AUDIO_COUNT_MASK, align 4
  %82 = sext i32 %81 to i64
  %83 = and i64 %80, %82
  %84 = load i32, i32* @CTR_DSP_AUDIO_COUNT, align 4
  %85 = ashr i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = icmp ugt i64 %83, %86
  br i1 %87, label %102, label %88

88:                                               ; preds = %70
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CTR_DSP_AUDIO_COUNT, align 4
  %93 = ashr i32 %92, 4
  %94 = sub nsw i32 %91, %93
  %95 = load i32, i32* %9, align 4
  %96 = sub nsw i32 %94, %95
  %97 = load i32, i32* @CTR_DSP_AUDIO_COUNT_MASK, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* @CTR_DSP_AUDIO_COUNT, align 4
  %100 = ashr i32 %99, 1
  %101 = icmp sgt i32 %98, %100
  br label %102

102:                                              ; preds = %88, %70
  %103 = phi i1 [ true, %70 ], [ %101, %88 ]
  br i1 %103, label %64, label %104

104:                                              ; preds = %102
  br label %105

105:                                              ; preds = %104, %54
  br label %106

106:                                              ; preds = %105, %37
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = shl i32 %109, 2
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %7, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* %6, align 8
  %114 = add i64 %112, %113
  %115 = load i64, i64* @CTR_DSP_AUDIO_SIZE, align 8
  %116 = icmp ugt i64 %114, %115
  br i1 %116, label %117, label %164

117:                                              ; preds = %106
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %7, align 8
  %123 = add i64 %121, %122
  %124 = load i8*, i8** %5, align 8
  %125 = load i64, i64* @CTR_DSP_AUDIO_SIZE, align 8
  %126 = load i64, i64* %7, align 8
  %127 = sub i64 %125, %126
  %128 = call i32 @memcpy(i64 %123, i8* %124, i64 %127)
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %7, align 8
  %134 = add i64 %132, %133
  %135 = load i64, i64* @CTR_DSP_AUDIO_SIZE, align 8
  %136 = load i64, i64* %7, align 8
  %137 = sub i64 %135, %136
  %138 = call i32 @DSP_FlushDataCache(i64 %134, i64 %137)
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i8*, i8** %5, align 8
  %144 = load i64, i64* @CTR_DSP_AUDIO_SIZE, align 8
  %145 = load i64, i64* %7, align 8
  %146 = sub i64 %144, %145
  %147 = getelementptr i8, i8* %143, i64 %146
  %148 = load i64, i64* %7, align 8
  %149 = load i64, i64* %6, align 8
  %150 = add i64 %148, %149
  %151 = load i64, i64* @CTR_DSP_AUDIO_SIZE, align 8
  %152 = sub i64 %150, %151
  %153 = call i32 @memcpy(i64 %142, i8* %147, i64 %152)
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %7, align 8
  %159 = load i64, i64* %6, align 8
  %160 = add i64 %158, %159
  %161 = load i64, i64* @CTR_DSP_AUDIO_SIZE, align 8
  %162 = sub i64 %160, %161
  %163 = call i32 @DSP_FlushDataCache(i64 %157, i64 %162)
  br label %182

164:                                              ; preds = %106
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %7, align 8
  %170 = add i64 %168, %169
  %171 = load i8*, i8** %5, align 8
  %172 = load i64, i64* %6, align 8
  %173 = call i32 @memcpy(i64 %170, i8* %171, i64 %172)
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* %7, align 8
  %179 = add i64 %177, %178
  %180 = load i64, i64* %6, align 8
  %181 = call i32 @DSP_FlushDataCache(i64 %179, i64 %180)
  br label %182

182:                                              ; preds = %164, %117
  %183 = load i64, i64* %6, align 8
  %184 = lshr i64 %183, 2
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = sext i32 %187 to i64
  %189 = add i64 %188, %184
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %186, align 8
  %191 = load i32, i32* @CTR_DSP_AUDIO_COUNT_MASK, align 4
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = and i32 %194, %191
  store i32 %195, i32* %193, align 8
  %196 = load i64, i64* %6, align 8
  ret i64 %196
}

declare dso_local i32 @ndspChnGetSamplePos(i32) #1

declare dso_local i32 @svcSleepThread(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @DSP_FlushDataCache(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
