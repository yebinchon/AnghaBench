; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorlevels.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorlevels.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_20__*, %struct.TYPE_24__**, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_25__*, i32, %struct.thread_data*, i32*, i32)* }
%struct.thread_data = type { double, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32*, i32** }

@ENOMEM = common dso_local global i32 0, align 4
@UINT8_MAX = common dso_local global i32 0, align 4
@colorlevel_slice_8 = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i32 0, align 4
@colorlevel_slice_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_23__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca %struct.thread_data, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_21__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca double, align 8
  %35 = alloca %struct.thread_data, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %39, align 8
  store %struct.TYPE_25__* %40, %struct.TYPE_25__** %6, align 8
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %42, align 8
  store %struct.TYPE_22__* %43, %struct.TYPE_22__** %7, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %46, i64 0
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %47, align 8
  store %struct.TYPE_24__* %48, %struct.TYPE_24__** %8, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %9, align 4
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %53 = call i64 @av_frame_is_writable(%struct.TYPE_23__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %2
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %56, %struct.TYPE_23__** %10, align 8
  br label %76

57:                                               ; preds = %2
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.TYPE_23__* @ff_get_video_buffer(%struct.TYPE_24__* %58, i32 %61, i32 %64)
  store %struct.TYPE_23__* %65, %struct.TYPE_23__** %10, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %67 = icmp ne %struct.TYPE_23__* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %57
  %69 = call i32 @av_frame_free(%struct.TYPE_23__** %5)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = call i32 @AVERROR(i32 %70)
  store i32 %71, i32* %3, align 4
  br label %512

72:                                               ; preds = %57
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %75 = call i32 @av_frame_copy_props(%struct.TYPE_23__* %73, %struct.TYPE_23__* %74)
  br label %76

76:                                               ; preds = %72, %55
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %502 [
    i32 1, label %80
    i32 2, label %291
  ]

80:                                               ; preds = %76
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %287, %80
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %290

87:                                               ; preds = %81
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 5
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i64 %92
  store %struct.TYPE_21__* %93, %struct.TYPE_21__** %14, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %15, align 4
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 1
  %103 = load i32**, i32*** %102, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 0
  %105 = load i32*, i32** %104, align 8
  store i32* %105, i32** %16, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 1
  %108 = load i32**, i32*** %107, align 8
  %109 = getelementptr inbounds i32*, i32** %108, i64 0
  %110 = load i32*, i32** %109, align 8
  store i32* %110, i32** %17, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @UINT8_MAX, align 4
  %115 = mul nsw i32 %113, %114
  %116 = call i32 @lrint(i32 %115)
  store i32 %116, i32* %18, align 4
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @UINT8_MAX, align 4
  %121 = mul nsw i32 %119, %120
  %122 = call i32 @lrint(i32 %121)
  store i32 %122, i32* %19, align 4
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @UINT8_MAX, align 4
  %127 = mul nsw i32 %125, %126
  %128 = call i32 @lrint(i32 %127)
  store i32 %128, i32* %20, align 4
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @UINT8_MAX, align 4
  %133 = mul nsw i32 %131, %132
  %134 = call i32 @lrint(i32 %133)
  store i32 %134, i32* %21, align 4
  %135 = load i32, i32* %18, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %180

137:                                              ; preds = %87
  %138 = load i32, i32* @UINT8_MAX, align 4
  store i32 %138, i32* %18, align 4
  store i32 0, i32* %12, align 4
  br label %139

139:                                              ; preds = %176, %137
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %179

145:                                              ; preds = %139
  %146 = load i32*, i32** %16, align 8
  store i32* %146, i32** %24, align 8
  store i32 0, i32* %11, align 4
  br label %147

147:                                              ; preds = %163, %145
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %167

153:                                              ; preds = %147
  %154 = load i32, i32* %18, align 4
  %155 = load i32*, i32** %24, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %155, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @FFMIN(i32 %154, i32 %161)
  store i32 %162, i32* %18, align 4
  br label %163

163:                                              ; preds = %153
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %11, align 4
  br label %147

167:                                              ; preds = %147
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %16, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32* %175, i32** %16, align 8
  br label %176

176:                                              ; preds = %167
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %12, align 4
  br label %139

179:                                              ; preds = %139
  br label %180

180:                                              ; preds = %179, %87
  %181 = load i32, i32* %19, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %230

183:                                              ; preds = %180
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 1
  %186 = load i32**, i32*** %185, align 8
  %187 = getelementptr inbounds i32*, i32** %186, i64 0
  %188 = load i32*, i32** %187, align 8
  store i32* %188, i32** %16, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %12, align 4
  br label %189

189:                                              ; preds = %226, %183
  %190 = load i32, i32* %12, align 4
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp slt i32 %190, %193
  br i1 %194, label %195, label %229

195:                                              ; preds = %189
  %196 = load i32*, i32** %16, align 8
  store i32* %196, i32** %25, align 8
  store i32 0, i32* %11, align 4
  br label %197

197:                                              ; preds = %213, %195
  %198 = load i32, i32* %11, align 4
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = icmp slt i32 %198, %201
  br i1 %202, label %203, label %217

203:                                              ; preds = %197
  %204 = load i32, i32* %19, align 4
  %205 = load i32*, i32** %25, align 8
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* %15, align 4
  %208 = add nsw i32 %206, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %205, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @FFMAX(i32 %204, i32 %211)
  store i32 %212, i32* %19, align 4
  br label %213

213:                                              ; preds = %203
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %11, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %11, align 4
  br label %197

217:                                              ; preds = %197
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** %16, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  store i32* %225, i32** %16, align 8
  br label %226

226:                                              ; preds = %217
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %12, align 4
  br label %189

229:                                              ; preds = %189
  br label %230

230:                                              ; preds = %229, %180
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 1
  %233 = load i32**, i32*** %232, align 8
  %234 = getelementptr inbounds i32*, i32** %233, i64 0
  %235 = load i32*, i32** %234, align 8
  store i32* %235, i32** %16, align 8
  %236 = load i32, i32* %21, align 4
  %237 = load i32, i32* %20, align 4
  %238 = sub nsw i32 %236, %237
  %239 = sitofp i32 %238 to double
  %240 = load i32, i32* %19, align 4
  %241 = load i32, i32* %18, align 4
  %242 = sub nsw i32 %240, %241
  %243 = sitofp i32 %242 to double
  %244 = fdiv double %239, %243
  store double %244, double* %22, align 8
  %245 = load i32*, i32** %16, align 8
  %246 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %23, i32 0, i32 8
  store i32* %245, i32** %246, align 8
  %247 = load i32*, i32** %17, align 8
  %248 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %23, i32 0, i32 7
  store i32* %247, i32** %248, align 8
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 0
  %253 = load i32, i32* %252, align 4
  %254 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %23, i32 0, i32 6
  store i32 %253, i32* %254, align 4
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  %259 = load i32, i32* %258, align 4
  %260 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %23, i32 0, i32 5
  store i32 %259, i32* %260, align 8
  %261 = load double, double* %22, align 8
  %262 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %23, i32 0, i32 0
  store double %261, double* %262, align 8
  %263 = load i32, i32* %15, align 4
  %264 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %23, i32 0, i32 4
  store i32 %263, i32* %264, align 4
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %23, i32 0, i32 1
  store i32 %267, i32* %268, align 8
  %269 = load i32, i32* %18, align 4
  %270 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %23, i32 0, i32 2
  store i32 %269, i32* %270, align 4
  %271 = load i32, i32* %20, align 4
  %272 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %23, i32 0, i32 3
  store i32 %271, i32* %272, align 8
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 0
  %277 = load i32 (%struct.TYPE_25__*, i32, %struct.thread_data*, i32*, i32)*, i32 (%struct.TYPE_25__*, i32, %struct.thread_data*, i32*, i32)** %276, align 8
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %279 = load i32, i32* @colorlevel_slice_8, align 4
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %284 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_25__* %283)
  %285 = call i32 @FFMIN(i32 %282, i32 %284)
  %286 = call i32 %277(%struct.TYPE_25__* %278, i32 %279, %struct.thread_data* %23, i32* null, i32 %285)
  br label %287

287:                                              ; preds = %230
  %288 = load i32, i32* %13, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %13, align 4
  br label %81

290:                                              ; preds = %81
  br label %502

291:                                              ; preds = %76
  store i32 0, i32* %13, align 4
  br label %292

292:                                              ; preds = %498, %291
  %293 = load i32, i32* %13, align 4
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = icmp slt i32 %293, %296
  br i1 %297, label %298, label %501

298:                                              ; preds = %292
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 5
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %300, align 8
  %302 = load i32, i32* %13, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %301, i64 %303
  store %struct.TYPE_21__* %304, %struct.TYPE_21__** %26, align 8
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 4
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %13, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %310, align 4
  store i32 %311, i32* %27, align 4
  %312 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %312, i32 0, i32 1
  %314 = load i32**, i32*** %313, align 8
  %315 = getelementptr inbounds i32*, i32** %314, i64 0
  %316 = load i32*, i32** %315, align 8
  store i32* %316, i32** %28, align 8
  %317 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %318 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %317, i32 0, i32 1
  %319 = load i32**, i32*** %318, align 8
  %320 = getelementptr inbounds i32*, i32** %319, i64 0
  %321 = load i32*, i32** %320, align 8
  store i32* %321, i32** %29, align 8
  %322 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %323 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @UINT16_MAX, align 4
  %326 = mul nsw i32 %324, %325
  %327 = call i32 @lrint(i32 %326)
  store i32 %327, i32* %30, align 4
  %328 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @UINT16_MAX, align 4
  %332 = mul nsw i32 %330, %331
  %333 = call i32 @lrint(i32 %332)
  store i32 %333, i32* %31, align 4
  %334 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %335 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @UINT16_MAX, align 4
  %338 = mul nsw i32 %336, %337
  %339 = call i32 @lrint(i32 %338)
  store i32 %339, i32* %32, align 4
  %340 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %341 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* @UINT16_MAX, align 4
  %344 = mul nsw i32 %342, %343
  %345 = call i32 @lrint(i32 %344)
  store i32 %345, i32* %33, align 4
  %346 = load i32, i32* %30, align 4
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %348, label %391

348:                                              ; preds = %298
  %349 = load i32, i32* @UINT16_MAX, align 4
  store i32 %349, i32* %30, align 4
  store i32 0, i32* %12, align 4
  br label %350

350:                                              ; preds = %387, %348
  %351 = load i32, i32* %12, align 4
  %352 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = icmp slt i32 %351, %354
  br i1 %355, label %356, label %390

356:                                              ; preds = %350
  %357 = load i32*, i32** %28, align 8
  store i32* %357, i32** %36, align 8
  store i32 0, i32* %11, align 4
  br label %358

358:                                              ; preds = %374, %356
  %359 = load i32, i32* %11, align 4
  %360 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 4
  %363 = icmp slt i32 %359, %362
  br i1 %363, label %364, label %378

364:                                              ; preds = %358
  %365 = load i32, i32* %30, align 4
  %366 = load i32*, i32** %36, align 8
  %367 = load i32, i32* %11, align 4
  %368 = load i32, i32* %27, align 4
  %369 = add nsw i32 %367, %368
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %366, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @FFMIN(i32 %365, i32 %372)
  store i32 %373, i32* %30, align 4
  br label %374

374:                                              ; preds = %364
  %375 = load i32, i32* %9, align 4
  %376 = load i32, i32* %11, align 4
  %377 = add nsw i32 %376, %375
  store i32 %377, i32* %11, align 4
  br label %358

378:                                              ; preds = %358
  %379 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %379, i32 0, i32 0
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 0
  %383 = load i32, i32* %382, align 4
  %384 = load i32*, i32** %28, align 8
  %385 = sext i32 %383 to i64
  %386 = getelementptr inbounds i32, i32* %384, i64 %385
  store i32* %386, i32** %28, align 8
  br label %387

387:                                              ; preds = %378
  %388 = load i32, i32* %12, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %12, align 4
  br label %350

390:                                              ; preds = %350
  br label %391

391:                                              ; preds = %390, %298
  %392 = load i32, i32* %31, align 4
  %393 = icmp slt i32 %392, 0
  br i1 %393, label %394, label %441

394:                                              ; preds = %391
  %395 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %395, i32 0, i32 1
  %397 = load i32**, i32*** %396, align 8
  %398 = getelementptr inbounds i32*, i32** %397, i64 0
  %399 = load i32*, i32** %398, align 8
  store i32* %399, i32** %28, align 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %12, align 4
  br label %400

400:                                              ; preds = %437, %394
  %401 = load i32, i32* %12, align 4
  %402 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = icmp slt i32 %401, %404
  br i1 %405, label %406, label %440

406:                                              ; preds = %400
  %407 = load i32*, i32** %28, align 8
  store i32* %407, i32** %37, align 8
  store i32 0, i32* %11, align 4
  br label %408

408:                                              ; preds = %424, %406
  %409 = load i32, i32* %11, align 4
  %410 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %411 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %410, i32 0, i32 3
  %412 = load i32, i32* %411, align 4
  %413 = icmp slt i32 %409, %412
  br i1 %413, label %414, label %428

414:                                              ; preds = %408
  %415 = load i32, i32* %31, align 4
  %416 = load i32*, i32** %37, align 8
  %417 = load i32, i32* %11, align 4
  %418 = load i32, i32* %27, align 4
  %419 = add nsw i32 %417, %418
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %416, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = call i32 @FFMAX(i32 %415, i32 %422)
  store i32 %423, i32* %31, align 4
  br label %424

424:                                              ; preds = %414
  %425 = load i32, i32* %9, align 4
  %426 = load i32, i32* %11, align 4
  %427 = add nsw i32 %426, %425
  store i32 %427, i32* %11, align 4
  br label %408

428:                                              ; preds = %408
  %429 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %429, i32 0, i32 0
  %431 = load i32*, i32** %430, align 8
  %432 = getelementptr inbounds i32, i32* %431, i64 0
  %433 = load i32, i32* %432, align 4
  %434 = load i32*, i32** %28, align 8
  %435 = sext i32 %433 to i64
  %436 = getelementptr inbounds i32, i32* %434, i64 %435
  store i32* %436, i32** %28, align 8
  br label %437

437:                                              ; preds = %428
  %438 = load i32, i32* %12, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %12, align 4
  br label %400

440:                                              ; preds = %400
  br label %441

441:                                              ; preds = %440, %391
  %442 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %443 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %442, i32 0, i32 1
  %444 = load i32**, i32*** %443, align 8
  %445 = getelementptr inbounds i32*, i32** %444, i64 0
  %446 = load i32*, i32** %445, align 8
  store i32* %446, i32** %28, align 8
  %447 = load i32, i32* %33, align 4
  %448 = load i32, i32* %32, align 4
  %449 = sub nsw i32 %447, %448
  %450 = sitofp i32 %449 to double
  %451 = load i32, i32* %31, align 4
  %452 = load i32, i32* %30, align 4
  %453 = sub nsw i32 %451, %452
  %454 = sitofp i32 %453 to double
  %455 = fdiv double %450, %454
  store double %455, double* %34, align 8
  %456 = load i32*, i32** %28, align 8
  %457 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %35, i32 0, i32 8
  store i32* %456, i32** %457, align 8
  %458 = load i32*, i32** %29, align 8
  %459 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %35, i32 0, i32 7
  store i32* %458, i32** %459, align 8
  %460 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %461 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %460, i32 0, i32 0
  %462 = load i32*, i32** %461, align 8
  %463 = getelementptr inbounds i32, i32* %462, i64 0
  %464 = load i32, i32* %463, align 4
  %465 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %35, i32 0, i32 6
  store i32 %464, i32* %465, align 4
  %466 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %467 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %466, i32 0, i32 0
  %468 = load i32*, i32** %467, align 8
  %469 = getelementptr inbounds i32, i32* %468, i64 0
  %470 = load i32, i32* %469, align 4
  %471 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %35, i32 0, i32 5
  store i32 %470, i32* %471, align 8
  %472 = load double, double* %34, align 8
  %473 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %35, i32 0, i32 0
  store double %472, double* %473, align 8
  %474 = load i32, i32* %27, align 4
  %475 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %35, i32 0, i32 4
  store i32 %474, i32* %475, align 4
  %476 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %477 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %35, i32 0, i32 1
  store i32 %478, i32* %479, align 8
  %480 = load i32, i32* %30, align 4
  %481 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %35, i32 0, i32 2
  store i32 %480, i32* %481, align 4
  %482 = load i32, i32* %32, align 4
  %483 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %35, i32 0, i32 3
  store i32 %482, i32* %483, align 8
  %484 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %485 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %484, i32 0, i32 0
  %486 = load %struct.TYPE_20__*, %struct.TYPE_20__** %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %486, i32 0, i32 0
  %488 = load i32 (%struct.TYPE_25__*, i32, %struct.thread_data*, i32*, i32)*, i32 (%struct.TYPE_25__*, i32, %struct.thread_data*, i32*, i32)** %487, align 8
  %489 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %490 = load i32, i32* @colorlevel_slice_16, align 4
  %491 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %492 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %495 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_25__* %494)
  %496 = call i32 @FFMIN(i32 %493, i32 %495)
  %497 = call i32 %488(%struct.TYPE_25__* %489, i32 %490, %struct.thread_data* %35, i32* null, i32 %496)
  br label %498

498:                                              ; preds = %441
  %499 = load i32, i32* %13, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %13, align 4
  br label %292

501:                                              ; preds = %292
  br label %502

502:                                              ; preds = %501, %76, %290
  %503 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %504 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %505 = icmp ne %struct.TYPE_23__* %503, %504
  br i1 %505, label %506, label %508

506:                                              ; preds = %502
  %507 = call i32 @av_frame_free(%struct.TYPE_23__** %5)
  br label %508

508:                                              ; preds = %506, %502
  %509 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %510 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %511 = call i32 @ff_filter_frame(%struct.TYPE_24__* %509, %struct.TYPE_23__* %510)
  store i32 %511, i32* %3, align 4
  br label %512

512:                                              ; preds = %508, %68
  %513 = load i32, i32* %3, align 4
  ret i32 %513
}

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @ff_get_video_buffer(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_23__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @lrint(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_25__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
