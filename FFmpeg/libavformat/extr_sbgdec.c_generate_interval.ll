; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_generate_interval.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_generate_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_script = type { i32 }
%struct.ws_intervals = type { i32 }
%struct.sbg_script_synth = type { i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@WS_SINE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Spinning noise not implemented, using pink noise instead.\0A\00", align 1
@WS_NOISE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Type %d is not implemented\0A\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sbg_script*, %struct.ws_intervals*, i64, i64, %struct.sbg_script_synth*, %struct.sbg_script_synth*, i32)* @generate_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_interval(i8* %0, %struct.sbg_script* %1, %struct.ws_intervals* %2, i64 %3, i64 %4, %struct.sbg_script_synth* %5, %struct.sbg_script_synth* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sbg_script*, align 8
  %12 = alloca %struct.ws_intervals*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.sbg_script_synth*, align 8
  %16 = alloca %struct.sbg_script_synth*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store %struct.sbg_script* %1, %struct.sbg_script** %11, align 8
  store %struct.ws_intervals* %2, %struct.ws_intervals** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store %struct.sbg_script_synth* %5, %struct.sbg_script_synth** %15, align 8
  store %struct.sbg_script_synth* %6, %struct.sbg_script_synth** %16, align 8
  store i32 %7, i32* %17, align 4
  %19 = load i64, i64* %14, align 8
  %20 = load i64, i64* %13, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %32, label %22

22:                                               ; preds = %8
  %23 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %15, align 8
  %24 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %16, align 8
  %29 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %8
  store i32 0, i32* %9, align 4
  br label %237

33:                                               ; preds = %27, %22
  %34 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %15, align 8
  %35 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %228 [
    i32 130, label %37
    i32 129, label %38
    i32 133, label %164
    i32 128, label %185
    i32 131, label %189
    i32 132, label %227
  ]

37:                                               ; preds = %33
  br label %236

38:                                               ; preds = %33
  %39 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %15, align 8
  %40 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %38
  %44 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %16, align 8
  %45 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %82

48:                                               ; preds = %43
  %49 = load %struct.ws_intervals*, %struct.ws_intervals** %12, align 8
  %50 = load i32, i32* @WS_SINE, align 4
  %51 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %15, align 8
  %52 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %15, align 8
  %57 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %15, align 8
  %60 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %16, align 8
  %64 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %16, align 8
  %67 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @add_interval(%struct.ws_intervals* %49, i32 %50, i32 3, i32 %54, i64 %55, i32 %58, i64 %61, i64 %62, i32 %65, i64 %68)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %48
  %73 = load i32, i32* %18, align 4
  store i32 %73, i32* %9, align 4
  br label %237

74:                                               ; preds = %48
  %75 = load i32, i32* %18, align 4
  %76 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %16, align 8
  %77 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %16, align 8
  %80 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %75, i32* %81, align 8
  br label %163

82:                                               ; preds = %43, %38
  %83 = load %struct.ws_intervals*, %struct.ws_intervals** %12, align 8
  %84 = load i32, i32* @WS_SINE, align 4
  %85 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %15, align 8
  %86 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %13, align 8
  %90 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %15, align 8
  %91 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %15, align 8
  %94 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = sdiv i32 %95, 2
  %97 = add nsw i32 %92, %96
  %98 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %15, align 8
  %99 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %14, align 8
  %102 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %16, align 8
  %103 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %16, align 8
  %106 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = sdiv i32 %107, 2
  %109 = add nsw i32 %104, %108
  %110 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %16, align 8
  %111 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @add_interval(%struct.ws_intervals* %83, i32 %84, i32 1, i32 %88, i64 %89, i32 %97, i64 %100, i64 %101, i32 %109, i64 %112)
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %18, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %82
  %117 = load i32, i32* %18, align 4
  store i32 %117, i32* %9, align 4
  br label %237

118:                                              ; preds = %82
  %119 = load i32, i32* %18, align 4
  %120 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %16, align 8
  %121 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load %struct.ws_intervals*, %struct.ws_intervals** %12, align 8
  %124 = load i32, i32* @WS_SINE, align 4
  %125 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %15, align 8
  %126 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i64, i64* %13, align 8
  %130 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %15, align 8
  %131 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %15, align 8
  %134 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = sdiv i32 %135, 2
  %137 = sub nsw i32 %132, %136
  %138 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %15, align 8
  %139 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %14, align 8
  %142 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %16, align 8
  %143 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %16, align 8
  %146 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = sdiv i32 %147, 2
  %149 = sub nsw i32 %144, %148
  %150 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %16, align 8
  %151 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @add_interval(%struct.ws_intervals* %123, i32 %124, i32 2, i32 %128, i64 %129, i32 %137, i64 %140, i64 %141, i32 %149, i64 %152)
  store i32 %153, i32* %18, align 4
  %154 = load i32, i32* %18, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %118
  %157 = load i32, i32* %18, align 4
  store i32 %157, i32* %9, align 4
  br label %237

158:                                              ; preds = %118
  %159 = load i32, i32* %18, align 4
  %160 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %16, align 8
  %161 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  store i32 %159, i32* %162, align 4
  br label %163

163:                                              ; preds = %158, %74
  br label %236

164:                                              ; preds = %33
  %165 = load i32, i32* %17, align 4
  %166 = icmp eq i32 %165, 2
  br i1 %166, label %167, label %184

167:                                              ; preds = %164
  %168 = load %struct.ws_intervals*, %struct.ws_intervals** %12, align 8
  %169 = load %struct.sbg_script*, %struct.sbg_script** %11, align 8
  %170 = load i64, i64* %13, align 8
  %171 = load i64, i64* %14, align 8
  %172 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %15, align 8
  %173 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %16, align 8
  %176 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @add_bell(%struct.ws_intervals* %168, %struct.sbg_script* %169, i64 %170, i64 %171, i32 %174, i64 %177)
  store i32 %178, i32* %18, align 4
  %179 = load i32, i32* %18, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %167
  %182 = load i32, i32* %18, align 4
  store i32 %182, i32* %9, align 4
  br label %237

183:                                              ; preds = %167
  br label %184

184:                                              ; preds = %183, %164
  br label %236

185:                                              ; preds = %33
  %186 = load i8*, i8** %10, align 8
  %187 = load i32, i32* @AV_LOG_WARNING, align 4
  %188 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %186, i32 %187, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %189

189:                                              ; preds = %33, %185
  %190 = load %struct.ws_intervals*, %struct.ws_intervals** %12, align 8
  %191 = load i32, i32* @WS_NOISE, align 4
  %192 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %15, align 8
  %193 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i64, i64* %13, align 8
  %197 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %15, align 8
  %198 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %15, align 8
  %201 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = sdiv i64 %202, 4
  %204 = sub nsw i64 %199, %203
  %205 = load i64, i64* %14, align 8
  %206 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %16, align 8
  %207 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %16, align 8
  %210 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = sdiv i64 %211, 4
  %213 = sub nsw i64 %208, %212
  %214 = call i32 @add_interval(%struct.ws_intervals* %190, i32 %191, i32 3, i32 %195, i64 %196, i32 0, i64 %204, i64 %205, i32 0, i64 %213)
  store i32 %214, i32* %18, align 4
  %215 = load i32, i32* %18, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %189
  %218 = load i32, i32* %18, align 4
  store i32 %218, i32* %9, align 4
  br label %237

219:                                              ; preds = %189
  %220 = load i32, i32* %18, align 4
  %221 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %16, align 8
  %222 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 1
  store i32 %220, i32* %223, align 4
  %224 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %16, align 8
  %225 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  store i32 %220, i32* %226, align 8
  br label %236

227:                                              ; preds = %33
  br label %228

228:                                              ; preds = %33, %227
  %229 = load i8*, i8** %10, align 8
  %230 = load i32, i32* @AV_LOG_ERROR, align 4
  %231 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %15, align 8
  %232 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %229, i32 %230, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %235, i32* %9, align 4
  br label %237

236:                                              ; preds = %219, %184, %163, %37
  store i32 0, i32* %9, align 4
  br label %237

237:                                              ; preds = %236, %228, %217, %181, %156, %116, %72, %32
  %238 = load i32, i32* %9, align 4
  ret i32 %238
}

declare dso_local i32 @add_interval(%struct.ws_intervals*, i32, i32, i32, i64, i32, i64, i64, i32, i64) #1

declare dso_local i32 @add_bell(%struct.ws_intervals*, %struct.sbg_script*, i64, i64, i32, i64) #1

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
