; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anlms.c_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anlms.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32*, %struct.TYPE_23__**, %struct.TYPE_19__*, %struct.TYPE_20__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_22__*, i32, %struct.TYPE_21__*, i32*, i32)* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_24__** }
%struct.TYPE_24__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@process_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %4, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %16, i64 0
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %20 = call i32 @FF_FILTER_FORWARD_STATUS_BACK_ALL(%struct.TYPE_23__* %18, %struct.TYPE_22__* %19)
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @ff_inlink_queued_samples(i32 %25)
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ff_inlink_queued_samples(i32 %31)
  %33 = call i32 @FFMIN(i64 %26, i64 %32)
  store i32 %33, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %89, %1
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %41, 0
  br label %43

43:                                               ; preds = %40, %34
  %44 = phi i1 [ false, %34 ], [ %42, %40 ]
  br i1 %44, label %45, label %92

45:                                               ; preds = %43
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %48, i64 %50
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  %53 = icmp ne %struct.TYPE_24__* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %89

55:                                               ; preds = %45
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @ff_inlink_check_available_samples(i32 %62, i32 %63)
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %55
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %78, i64 %80
  %82 = call i32 @ff_inlink_consume_samples(i32 %73, i32 %74, i32 %75, %struct.TYPE_24__** %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %66
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %254

87:                                               ; preds = %66
  br label %88

88:                                               ; preds = %87, %55
  br label %89

89:                                               ; preds = %88, %54
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %34

92:                                               ; preds = %43
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %95, i64 0
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %96, align 8
  %98 = icmp ne %struct.TYPE_24__* %97, null
  br i1 %98, label %99, label %186

99:                                               ; preds = %92
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %102, i64 1
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %103, align 8
  %105 = icmp ne %struct.TYPE_24__* %104, null
  br i1 %105, label %106, label %186

106:                                              ; preds = %99
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %109, i64 0
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %110, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %114, i64 0
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call %struct.TYPE_21__* @ff_get_audio_buffer(%struct.TYPE_23__* %111, i32 %118)
  store %struct.TYPE_21__* %119, %struct.TYPE_21__** %10, align 8
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %121 = icmp ne %struct.TYPE_21__* %120, null
  br i1 %121, label %135, label %122

122:                                              ; preds = %106
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %125, i64 0
  %127 = call i32 @av_frame_free(%struct.TYPE_24__** %126)
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %130, i64 1
  %132 = call i32 @av_frame_free(%struct.TYPE_24__** %131)
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = call i32 @AVERROR(i32 %133)
  store i32 %134, i32* %2, align 4
  br label %254

135:                                              ; preds = %106
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load i32 (%struct.TYPE_22__*, i32, %struct.TYPE_21__*, i32*, i32)*, i32 (%struct.TYPE_22__*, i32, %struct.TYPE_21__*, i32*, i32)** %139, align 8
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %142 = load i32, i32* @process_channels, align 4
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %146, i64 0
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %152 = call i64 @ff_filter_get_nb_threads(%struct.TYPE_22__* %151)
  %153 = call i32 @FFMIN(i64 %150, i64 %152)
  %154 = call i32 %140(%struct.TYPE_22__* %141, i32 %142, %struct.TYPE_21__* %143, i32* null, i32 %153)
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %157, i64 0
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %166, i64 0
  %168 = call i32 @av_frame_free(%struct.TYPE_24__** %167)
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %171, i64 1
  %173 = call i32 @av_frame_free(%struct.TYPE_24__** %172)
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %176, i64 0
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %177, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %180 = call i32 @ff_filter_frame(%struct.TYPE_23__* %178, %struct.TYPE_21__* %179)
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %135
  %184 = load i32, i32* %6, align 4
  store i32 %184, i32* %2, align 4
  br label %254

185:                                              ; preds = %135
  br label %186

186:                                              ; preds = %185, %99, %92
  %187 = load i32, i32* %8, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %217, label %189

189:                                              ; preds = %186
  store i32 0, i32* %5, align 4
  br label %190

190:                                              ; preds = %213, %189
  %191 = load i32, i32* %5, align 4
  %192 = icmp slt i32 %191, 2
  br i1 %192, label %193, label %216

193:                                              ; preds = %190
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @ff_inlink_acknowledge_status(i32 %200, i32* %7, i32* %9)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %193
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %206, i64 0
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %207, align 8
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* %9, align 4
  %211 = call i32 @ff_outlink_set_status(%struct.TYPE_23__* %208, i32 %209, i32 %210)
  store i32 0, i32* %2, align 4
  br label %254

212:                                              ; preds = %193
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %5, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %5, align 4
  br label %190

216:                                              ; preds = %190
  br label %217

217:                                              ; preds = %216, %186
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %220, i64 0
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %221, align 8
  %223 = call i64 @ff_outlink_frame_wanted(%struct.TYPE_23__* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %253

225:                                              ; preds = %217
  store i32 0, i32* %5, align 4
  br label %226

226:                                              ; preds = %249, %225
  %227 = load i32, i32* %5, align 4
  %228 = icmp slt i32 %227, 2
  br i1 %228, label %229, label %252

229:                                              ; preds = %226
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %5, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = call i64 @ff_inlink_queued_samples(i32 %236)
  %238 = icmp sgt i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %229
  br label %249

240:                                              ; preds = %229
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %5, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @ff_inlink_request_frame(i32 %247)
  store i32 0, i32* %2, align 4
  br label %254

249:                                              ; preds = %239
  %250 = load i32, i32* %5, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %5, align 4
  br label %226

252:                                              ; preds = %226
  br label %253

253:                                              ; preds = %252, %217
  store i32 0, i32* %2, align 4
  br label %254

254:                                              ; preds = %253, %240, %203, %183, %122, %85
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local i32 @FF_FILTER_FORWARD_STATUS_BACK_ALL(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @FFMIN(i64, i64) #1

declare dso_local i64 @ff_inlink_queued_samples(i32) #1

declare dso_local i64 @ff_inlink_check_available_samples(i32, i32) #1

declare dso_local i32 @ff_inlink_consume_samples(i32, i32, i32, %struct.TYPE_24__**) #1

declare dso_local %struct.TYPE_21__* @ff_get_audio_buffer(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_24__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @ff_filter_get_nb_threads(%struct.TYPE_22__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i64 @ff_inlink_acknowledge_status(i32, i32*, i32*) #1

declare dso_local i32 @ff_outlink_set_status(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i64 @ff_outlink_frame_wanted(%struct.TYPE_23__*) #1

declare dso_local i32 @ff_inlink_request_frame(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
