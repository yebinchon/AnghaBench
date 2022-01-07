; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_refs.c_ff_h264_build_ref_list.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_refs.c_ff_h264_build_ref_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_29__*, i32*, i32, %struct.TYPE_27__**, %struct.TYPE_27__**, i32 }
%struct.TYPE_29__ = type { i64, i32, %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_27__ = type { i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32*, i32, i32*, %struct.TYPE_29__**, %struct.TYPE_24__** }
%struct.TYPE_24__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"abs_diff_pic_num overflow\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"long_term_pic_idx overflow\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"reference picture missing during reorder\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"mismatching reference\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Missing reference picture, default is %d\0A\00", align 1
@INT_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_h264_build_ref_list(%struct.TYPE_28__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %20 = call i32 @print_short_term(%struct.TYPE_28__* %19)
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %22 = call i32 @print_long_term(%struct.TYPE_28__* %21)
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %25 = call i32 @h264_initialise_ref_list(%struct.TYPE_28__* %23, %struct.TYPE_26__* %24)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %381, %2
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %384

32:                                               ; preds = %26
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %377, %32
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %37, %44
  br i1 %45, label %46, label %380

46:                                               ; preds = %36
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 6
  %49 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %49, i64 %51
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 6
  %61 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %61, i64 %63
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %11, align 4
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %14, align 8
  %71 = load i32, i32* %10, align 4
  switch i32 %71, label %213 [
    i32 0, label %72
    i32 1, label %72
    i32 2, label %159
  ]

72:                                               ; preds = %46, %46
  %73 = load i32, i32* %11, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = icmp ugt i32 %75, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @AV_LOG_ERROR, align 4
  %85 = call i32 (i32, i32, i8*, ...) @av_log(i32 %83, i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %86, i32* %3, align 4
  br label %551

87:                                               ; preds = %72
  %88 = load i32, i32* %10, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %9, align 4
  %93 = sub i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %98

94:                                               ; preds = %87
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %94, %90
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = sub i32 %101, 1
  %103 = load i32, i32* %9, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %9, align 4
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @pic_num_extract(%struct.TYPE_28__* %105, i32 %106, i32* %8)
  store i32 %107, i32* %16, align 4
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %148, %98
  %113 = load i32, i32* %13, align 4
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %115, label %151

115:                                              ; preds = %112
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %118, i64 %120
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %121, align 8
  store %struct.TYPE_27__* %122, %struct.TYPE_27__** %14, align 8
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @assert(i32 %125)
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %115
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %8, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %151

147:                                              ; preds = %139, %115
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %13, align 4
  br label %112

151:                                              ; preds = %146, %112
  %152 = load i32, i32* %13, align 4
  %153 = icmp sge i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load i32, i32* %9, align 4
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 4
  br label %158

158:                                              ; preds = %154, %151
  br label %215

159:                                              ; preds = %46
  %160 = load i32, i32* %11, align 4
  store i32 %160, i32* %12, align 4
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @pic_num_extract(%struct.TYPE_28__* %161, i32 %162, i32* %8)
  store i32 %163, i32* %17, align 4
  %164 = load i32, i32* %17, align 4
  %165 = icmp ugt i32 %164, 31
  br i1 %165, label %166, label %173

166:                                              ; preds = %159
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @AV_LOG_ERROR, align 4
  %171 = call i32 (i32, i32, i8*, ...) @av_log(i32 %169, i32 %170, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %172 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %172, i32* %3, align 4
  br label %551

173:                                              ; preds = %159
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %175, align 8
  %177 = load i32, i32* %17, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %176, i64 %178
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %179, align 8
  store %struct.TYPE_27__* %180, %struct.TYPE_27__** %14, align 8
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %182 = icmp ne %struct.TYPE_27__* %181, null
  br i1 %182, label %183, label %189

183:                                              ; preds = %173
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  br label %189

189:                                              ; preds = %183, %173
  %190 = phi i1 [ false, %173 ], [ %188, %183 ]
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %195 = icmp ne %struct.TYPE_27__* %194, null
  br i1 %195, label %196, label %211

196:                                              ; preds = %189
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %8, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %196
  %204 = load i32, i32* %12, align 4
  %205 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %205, i32 0, i32 3
  store i32 %204, i32* %206, align 4
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @assert(i32 %209)
  store i32 0, i32* %13, align 4
  br label %212

211:                                              ; preds = %196, %189
  store i32 -1, i32* %13, align 4
  br label %212

212:                                              ; preds = %211, %203
  br label %215

213:                                              ; preds = %46
  %214 = call i32 @av_assert0(i32 0)
  br label %215

215:                                              ; preds = %213, %212, %158
  %216 = load i32, i32* %13, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %215
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %220 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %221 = call i64 @mismatches_ref(%struct.TYPE_28__* %219, %struct.TYPE_27__* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %244

223:                                              ; preds = %218, %215
  %224 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @AV_LOG_ERROR, align 4
  %228 = load i32, i32* %13, align 4
  %229 = icmp slt i32 %228, 0
  %230 = zext i1 %229 to i64
  %231 = select i1 %229, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)
  %232 = call i32 (i32, i32, i8*, ...) @av_log(i32 %226, i32 %227, i8* %231)
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %233, i32 0, i32 5
  %235 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %234, align 8
  %236 = load i32, i32* %6, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %235, i64 %237
  %239 = load %struct.TYPE_29__*, %struct.TYPE_29__** %238, align 8
  %240 = load i32, i32* %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %239, i64 %241
  %243 = call i32 @memset(%struct.TYPE_29__* %242, i32 0, i32 32)
  br label %376

244:                                              ; preds = %218
  %245 = load i32, i32* %7, align 4
  store i32 %245, i32* %13, align 4
  br label %246

246:                                              ; preds = %311, %244
  %247 = load i32, i32* %13, align 4
  %248 = add nsw i32 %247, 1
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 4
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %6, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = icmp slt i32 %248, %255
  br i1 %256, label %257, label %314

257:                                              ; preds = %246
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i32 0, i32 5
  %260 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %259, align 8
  %261 = load i32, i32* %6, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %260, i64 %262
  %264 = load %struct.TYPE_29__*, %struct.TYPE_29__** %263, align 8
  %265 = load i32, i32* %13, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_25__*, %struct.TYPE_25__** %268, align 8
  %270 = icmp ne %struct.TYPE_25__* %269, null
  br i1 %270, label %271, label %310

271:                                              ; preds = %257
  %272 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %273 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %276, i32 0, i32 5
  %278 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %277, align 8
  %279 = load i32, i32* %6, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %278, i64 %280
  %282 = load %struct.TYPE_29__*, %struct.TYPE_29__** %281, align 8
  %283 = load i32, i32* %13, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %285, i32 0, i32 2
  %287 = load %struct.TYPE_25__*, %struct.TYPE_25__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = icmp eq i64 %275, %289
  br i1 %290, label %291, label %310

291:                                              ; preds = %271
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %293 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %296, i32 0, i32 5
  %298 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %297, align 8
  %299 = load i32, i32* %6, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %298, i64 %300
  %302 = load %struct.TYPE_29__*, %struct.TYPE_29__** %301, align 8
  %303 = load i32, i32* %13, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp eq i64 %295, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %291
  br label %314

310:                                              ; preds = %291, %271, %257
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %13, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %13, align 4
  br label %246

314:                                              ; preds = %309, %246
  br label %315

315:                                              ; preds = %343, %314
  %316 = load i32, i32* %13, align 4
  %317 = load i32, i32* %7, align 4
  %318 = icmp sgt i32 %316, %317
  br i1 %318, label %319, label %346

319:                                              ; preds = %315
  %320 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %320, i32 0, i32 5
  %322 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %321, align 8
  %323 = load i32, i32* %6, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %322, i64 %324
  %326 = load %struct.TYPE_29__*, %struct.TYPE_29__** %325, align 8
  %327 = load i32, i32* %13, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %326, i64 %328
  %330 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %330, i32 0, i32 5
  %332 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %331, align 8
  %333 = load i32, i32* %6, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %332, i64 %334
  %336 = load %struct.TYPE_29__*, %struct.TYPE_29__** %335, align 8
  %337 = load i32, i32* %13, align 4
  %338 = sub nsw i32 %337, 1
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %336, i64 %339
  %341 = bitcast %struct.TYPE_29__* %329 to i8*
  %342 = bitcast %struct.TYPE_29__* %340 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %341, i8* align 8 %342, i64 32, i1 false)
  br label %343

343:                                              ; preds = %319
  %344 = load i32, i32* %13, align 4
  %345 = add nsw i32 %344, -1
  store i32 %345, i32* %13, align 4
  br label %315

346:                                              ; preds = %315
  %347 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %347, i32 0, i32 5
  %349 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %348, align 8
  %350 = load i32, i32* %6, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %349, i64 %351
  %353 = load %struct.TYPE_29__*, %struct.TYPE_29__** %352, align 8
  %354 = load i32, i32* %7, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %353, i64 %355
  %357 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %358 = call i32 @ref_from_h264pic(%struct.TYPE_29__* %356, %struct.TYPE_27__* %357)
  %359 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %360 = call i64 @FIELD_PICTURE(%struct.TYPE_28__* %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %375

362:                                              ; preds = %346
  %363 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %363, i32 0, i32 5
  %365 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %364, align 8
  %366 = load i32, i32* %6, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %365, i64 %367
  %369 = load %struct.TYPE_29__*, %struct.TYPE_29__** %368, align 8
  %370 = load i32, i32* %7, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %369, i64 %371
  %373 = load i32, i32* %8, align 4
  %374 = call i32 @pic_as_field(%struct.TYPE_29__* %372, i32 %373)
  br label %375

375:                                              ; preds = %362, %346
  br label %376

376:                                              ; preds = %375, %223
  br label %377

377:                                              ; preds = %376
  %378 = load i32, i32* %7, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %7, align 4
  br label %36

380:                                              ; preds = %36
  br label %381

381:                                              ; preds = %380
  %382 = load i32, i32* %6, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %6, align 4
  br label %26

384:                                              ; preds = %26
  store i32 0, i32* %6, align 4
  br label %385

385:                                              ; preds = %540, %384
  %386 = load i32, i32* %6, align 4
  %387 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = icmp slt i32 %386, %389
  br i1 %390, label %391, label %543

391:                                              ; preds = %385
  store i32 0, i32* %7, align 4
  br label %392

392:                                              ; preds = %536, %391
  %393 = load i32, i32* %7, align 4
  %394 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %394, i32 0, i32 4
  %396 = load i32*, i32** %395, align 8
  %397 = load i32, i32* %6, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %396, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = icmp slt i32 %393, %400
  br i1 %401, label %402, label %539

402:                                              ; preds = %392
  %403 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %403, i32 0, i32 5
  %405 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %404, align 8
  %406 = load i32, i32* %6, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %405, i64 %407
  %409 = load %struct.TYPE_29__*, %struct.TYPE_29__** %408, align 8
  %410 = load i32, i32* %7, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %409, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %412, i32 0, i32 2
  %414 = load %struct.TYPE_25__*, %struct.TYPE_25__** %413, align 8
  %415 = icmp ne %struct.TYPE_25__* %414, null
  br i1 %415, label %416, label %435

416:                                              ; preds = %402
  %417 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %418 = call i64 @FIELD_PICTURE(%struct.TYPE_28__* %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %513, label %420

420:                                              ; preds = %416
  %421 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %421, i32 0, i32 5
  %423 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %422, align 8
  %424 = load i32, i32* %6, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %423, i64 %425
  %427 = load %struct.TYPE_29__*, %struct.TYPE_29__** %426, align 8
  %428 = load i32, i32* %7, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %427, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 8
  %433 = and i32 %432, 3
  %434 = icmp ne i32 %433, 3
  br i1 %434, label %435, label %513

435:                                              ; preds = %420, %402
  %436 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %437 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 8
  %439 = load i32, i32* @AV_LOG_ERROR, align 4
  %440 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %441 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %440, i32 0, i32 0
  %442 = load %struct.TYPE_29__*, %struct.TYPE_29__** %441, align 8
  %443 = load i32, i32* %6, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %442, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %445, i32 0, i32 3
  %447 = load i32, i32* %446, align 8
  %448 = call i32 (i32, i32, i8*, ...) @av_log(i32 %438, i32 %439, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %447)
  store i32 0, i32* %18, align 4
  br label %449

449:                                              ; preds = %464, %435
  %450 = load i32, i32* %18, align 4
  %451 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %452 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %451, i32 0, i32 1
  %453 = load i32*, i32** %452, align 8
  %454 = call i32 @FF_ARRAY_ELEMS(i32* %453)
  %455 = icmp slt i32 %450, %454
  br i1 %455, label %456, label %467

456:                                              ; preds = %449
  %457 = load i32, i32* @INT_MIN, align 4
  %458 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %459 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %458, i32 0, i32 1
  %460 = load i32*, i32** %459, align 8
  %461 = load i32, i32* %18, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %460, i64 %462
  store i32 %457, i32* %463, align 4
  br label %464

464:                                              ; preds = %456
  %465 = load i32, i32* %18, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %18, align 4
  br label %449

467:                                              ; preds = %449
  %468 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %469 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %468, i32 0, i32 0
  %470 = load %struct.TYPE_29__*, %struct.TYPE_29__** %469, align 8
  %471 = load i32, i32* %6, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %470, i64 %472
  %474 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %473, i32 0, i32 2
  %475 = load %struct.TYPE_25__*, %struct.TYPE_25__** %474, align 8
  %476 = icmp ne %struct.TYPE_25__* %475, null
  br i1 %476, label %477, label %511

477:                                              ; preds = %467
  %478 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %479 = call i64 @FIELD_PICTURE(%struct.TYPE_28__* %478)
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %492, label %481

481:                                              ; preds = %477
  %482 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %483 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %482, i32 0, i32 0
  %484 = load %struct.TYPE_29__*, %struct.TYPE_29__** %483, align 8
  %485 = load i32, i32* %6, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %484, i64 %486
  %488 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 8
  %490 = and i32 %489, 3
  %491 = icmp ne i32 %490, 3
  br i1 %491, label %511, label %492

492:                                              ; preds = %481, %477
  %493 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %494 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %493, i32 0, i32 5
  %495 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %494, align 8
  %496 = load i32, i32* %6, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %495, i64 %497
  %499 = load %struct.TYPE_29__*, %struct.TYPE_29__** %498, align 8
  %500 = load i32, i32* %7, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %499, i64 %501
  %503 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %504 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %503, i32 0, i32 0
  %505 = load %struct.TYPE_29__*, %struct.TYPE_29__** %504, align 8
  %506 = load i32, i32* %6, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %505, i64 %507
  %509 = bitcast %struct.TYPE_29__* %502 to i8*
  %510 = bitcast %struct.TYPE_29__* %508 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %509, i8* align 8 %510, i64 32, i1 false)
  br label %512

511:                                              ; preds = %481, %467
  store i32 -1, i32* %3, align 4
  br label %551

512:                                              ; preds = %492
  br label %513

513:                                              ; preds = %512, %420, %416
  %514 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %515 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %514, i32 0, i32 5
  %516 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %515, align 8
  %517 = load i32, i32* %6, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %516, i64 %518
  %520 = load %struct.TYPE_29__*, %struct.TYPE_29__** %519, align 8
  %521 = load i32, i32* %7, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %520, i64 %522
  %524 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %523, i32 0, i32 2
  %525 = load %struct.TYPE_25__*, %struct.TYPE_25__** %524, align 8
  %526 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %525, i32 0, i32 1
  %527 = load %struct.TYPE_23__*, %struct.TYPE_23__** %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %527, i32 0, i32 0
  %529 = load i32*, i32** %528, align 8
  %530 = getelementptr inbounds i32, i32* %529, i64 0
  %531 = load i32, i32* %530, align 4
  %532 = call i64 @av_buffer_get_ref_count(i32 %531)
  %533 = icmp sgt i64 %532, 0
  %534 = zext i1 %533 to i32
  %535 = call i32 @av_assert0(i32 %534)
  br label %536

536:                                              ; preds = %513
  %537 = load i32, i32* %7, align 4
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %7, align 4
  br label %392

539:                                              ; preds = %392
  br label %540

540:                                              ; preds = %539
  %541 = load i32, i32* %6, align 4
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %6, align 4
  br label %385

543:                                              ; preds = %385
  %544 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %545 = call i64 @FRAME_MBAFF(%struct.TYPE_28__* %544)
  %546 = icmp ne i64 %545, 0
  br i1 %546, label %547, label %550

547:                                              ; preds = %543
  %548 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %549 = call i32 @h264_fill_mbaff_ref_list(%struct.TYPE_26__* %548)
  br label %550

550:                                              ; preds = %547, %543
  store i32 0, i32* %3, align 4
  br label %551

551:                                              ; preds = %550, %511, %166, %80
  %552 = load i32, i32* %3, align 4
  ret i32 %552
}

declare dso_local i32 @print_short_term(%struct.TYPE_28__*) #1

declare dso_local i32 @print_long_term(%struct.TYPE_28__*) #1

declare dso_local i32 @h264_initialise_ref_list(%struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @pic_num_extract(%struct.TYPE_28__*, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i64 @mismatches_ref(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @memset(%struct.TYPE_29__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ref_from_h264pic(%struct.TYPE_29__*, %struct.TYPE_27__*) #1

declare dso_local i64 @FIELD_PICTURE(%struct.TYPE_28__*) #1

declare dso_local i32 @pic_as_field(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i64 @av_buffer_get_ref_count(i32) #1

declare dso_local i64 @FRAME_MBAFF(%struct.TYPE_28__*) #1

declare dso_local i32 @h264_fill_mbaff_ref_list(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
