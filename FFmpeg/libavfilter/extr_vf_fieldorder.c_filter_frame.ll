; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fieldorder.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fieldorder.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__**, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32* }
%struct.TYPE_17__ = type { i64, i32, i32*, i32**, i64 }

@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Skipping %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"frame with same field order\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"progressive frame\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"picture will move %s one line\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %6, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %7, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %26, i64 0
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %8, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %2
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %33, %2
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %43 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)
  %50 = call i32 @av_log(%struct.TYPE_19__* %42, i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %53 = call i32 @ff_filter_frame(%struct.TYPE_18__* %51, %struct.TYPE_17__* %52)
  store i32 %53, i32* %3, align 4
  br label %281

54:                                               ; preds = %33
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %56 = call i64 @av_frame_is_writable(%struct.TYPE_17__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %59, %struct.TYPE_17__** %17, align 8
  br label %79

60:                                               ; preds = %54
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.TYPE_17__* @ff_get_video_buffer(%struct.TYPE_18__* %61, i32 %64, i32 %67)
  store %struct.TYPE_17__* %68, %struct.TYPE_17__** %17, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %70 = icmp ne %struct.TYPE_17__* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %60
  %72 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = call i32 @AVERROR(i32 %73)
  store i32 %74, i32* %3, align 4
  br label %281

75:                                               ; preds = %60
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %78 = call i32 @av_frame_copy_props(%struct.TYPE_17__* %76, %struct.TYPE_17__* %77)
  br label %79

79:                                               ; preds = %75, %58
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %81 = load i32, i32* @AV_LOG_TRACE, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %88 = call i32 @av_log(%struct.TYPE_19__* %80, i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %263, %79
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %113

95:                                               ; preds = %92
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 3
  %98 = load i32**, i32*** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %95
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br label %113

113:                                              ; preds = %104, %95, %92
  %114 = phi i1 [ false, %95 ], [ false, %92 ], [ %112, %104 ]
  br i1 %114, label %115, label %266

115:                                              ; preds = %113
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp sgt i32 %123, 2
  %125 = zext i1 %124 to i32
  %126 = mul nsw i32 %122, %125
  store i32 %126, i32* %12, align 4
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp sgt i32 %134, 2
  %136 = zext i1 %135 to i32
  %137 = mul nsw i32 %133, %136
  store i32 %137, i32* %11, align 4
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %13, align 4
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 3
  %147 = load i32**, i32*** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  %151 = load i32*, i32** %150, align 8
  store i32* %151, i32** %15, align 8
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 3
  %154 = load i32**, i32*** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32*, i32** %154, i64 %156
  %158 = load i32*, i32** %157, align 8
  store i32* %158, i32** %16, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %206

163:                                              ; preds = %115
  store i32 0, i32* %14, align 4
  br label %164

164:                                              ; preds = %202, %163
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %205

168:                                              ; preds = %164
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 1, %169
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %183

175:                                              ; preds = %168
  %176 = load i32*, i32** %15, align 8
  %177 = load i32*, i32** %16, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %13, align 4
  %182 = call i32 @memcpy(i32* %176, i32* %180, i32 %181)
  br label %193

183:                                              ; preds = %168
  %184 = load i32*, i32** %15, align 8
  %185 = load i32*, i32** %16, align 8
  %186 = load i32, i32* %11, align 4
  %187 = mul nsw i32 2, %186
  %188 = sext i32 %187 to i64
  %189 = sub i64 0, %188
  %190 = getelementptr inbounds i32, i32* %185, i64 %189
  %191 = load i32, i32* %13, align 4
  %192 = call i32 @memcpy(i32* %184, i32* %190, i32 %191)
  br label %193

193:                                              ; preds = %183, %175
  %194 = load i32, i32* %12, align 4
  %195 = load i32*, i32** %15, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  store i32* %197, i32** %15, align 8
  %198 = load i32, i32* %11, align 4
  %199 = load i32*, i32** %16, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  store i32* %201, i32** %16, align 8
  br label %202

202:                                              ; preds = %193
  %203 = load i32, i32* %14, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %14, align 4
  br label %164

205:                                              ; preds = %164
  br label %262

206:                                              ; preds = %115
  %207 = load i32, i32* %9, align 4
  %208 = sub nsw i32 %207, 1
  %209 = load i32, i32* %12, align 4
  %210 = mul nsw i32 %208, %209
  %211 = load i32*, i32** %15, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32* %213, i32** %15, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sub nsw i32 %214, 1
  %216 = load i32, i32* %11, align 4
  %217 = mul nsw i32 %215, %216
  %218 = load i32*, i32** %16, align 8
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  store i32* %220, i32** %16, align 8
  %221 = load i32, i32* %9, align 4
  %222 = sub nsw i32 %221, 1
  store i32 %222, i32* %14, align 4
  br label %223

223:                                              ; preds = %258, %206
  %224 = load i32, i32* %14, align 4
  %225 = icmp sge i32 %224, 0
  br i1 %225, label %226, label %261

226:                                              ; preds = %223
  %227 = load i32, i32* %14, align 4
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %238

229:                                              ; preds = %226
  %230 = load i32*, i32** %15, align 8
  %231 = load i32*, i32** %16, align 8
  %232 = load i32, i32* %11, align 4
  %233 = sext i32 %232 to i64
  %234 = sub i64 0, %233
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  %236 = load i32, i32* %13, align 4
  %237 = call i32 @memcpy(i32* %230, i32* %235, i32 %236)
  br label %247

238:                                              ; preds = %226
  %239 = load i32*, i32** %15, align 8
  %240 = load i32*, i32** %16, align 8
  %241 = load i32, i32* %11, align 4
  %242 = mul nsw i32 2, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  %245 = load i32, i32* %13, align 4
  %246 = call i32 @memcpy(i32* %239, i32* %244, i32 %245)
  br label %247

247:                                              ; preds = %238, %229
  %248 = load i32, i32* %12, align 4
  %249 = load i32*, i32** %15, align 8
  %250 = sext i32 %248 to i64
  %251 = sub i64 0, %250
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32* %252, i32** %15, align 8
  %253 = load i32, i32* %11, align 4
  %254 = load i32*, i32** %16, align 8
  %255 = sext i32 %253 to i64
  %256 = sub i64 0, %255
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  store i32* %257, i32** %16, align 8
  br label %258

258:                                              ; preds = %247
  %259 = load i32, i32* %14, align 4
  %260 = add nsw i32 %259, -1
  store i32 %260, i32* %14, align 4
  br label %223

261:                                              ; preds = %223
  br label %262

262:                                              ; preds = %261, %205
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %10, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %10, align 4
  br label %92

266:                                              ; preds = %113
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 0
  store i64 %269, i64* %271, align 8
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %274 = icmp ne %struct.TYPE_17__* %272, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %266
  %276 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  br label %277

277:                                              ; preds = %275, %266
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %280 = call i32 @ff_filter_frame(%struct.TYPE_18__* %278, %struct.TYPE_17__* %279)
  store i32 %280, i32* %3, align 4
  br label %281

281:                                              ; preds = %277, %71, %41
  %282 = load i32, i32* %3, align 4
  ret i32 %282
}

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*, i8*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @ff_get_video_buffer(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_17__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
