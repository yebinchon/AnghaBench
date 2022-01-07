; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_join.c_try_push_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_join.c_try_push_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_18__** }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__**, %struct.TYPE_20__**, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32, i32*, i32, i8**, i8**, i32, i32, i32, i32, i32, i8**, i8** }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @try_push_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_push_frame(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %18, i64 0
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %4, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %5, align 8
  %24 = load i32, i32* @INT_MAX, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @INT_MAX, align 4
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %54, %1
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %26
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %35, i64 %37
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %40 = icmp ne %struct.TYPE_17__* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %392

42:                                               ; preds = %32
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %46, i64 %48
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @FFMIN(i32 %43, i32 %52)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %26

57:                                               ; preds = %26
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %392

61:                                               ; preds = %57
  %62 = call %struct.TYPE_17__* (...) @av_frame_alloc()
  store %struct.TYPE_17__* %62, %struct.TYPE_17__** %6, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %64 = icmp ne %struct.TYPE_17__* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = call i32 @AVERROR(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %392

68:                                               ; preds = %61
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 3
  %74 = load i8**, i8*** %73, align 8
  %75 = call i32 @FF_ARRAY_ELEMS(i8** %74)
  %76 = icmp sgt i32 %71, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %68
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @av_mallocz_array(i32 %80, i32 8)
  %82 = bitcast i8* %81 to i8**
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 4
  store i8** %82, i8*** %84, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 4
  %87 = load i8**, i8*** %86, align 8
  %88 = icmp ne i8** %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %77
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = call i32 @AVERROR(i32 %90)
  store i32 %91, i32* %12, align 4
  br label %389

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92, %68
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %184, %93
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %187

100:                                              ; preds = %94
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i64 %105
  store %struct.TYPE_16__* %106, %struct.TYPE_16__** %13, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %108, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %109, i64 %112
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  store %struct.TYPE_17__* %114, %struct.TYPE_17__** %14, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 4
  %117 = load i8**, i8*** %116, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i8*, i8** %117, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 4
  %125 = load i8**, i8*** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  store i8* %122, i8** %128, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @FFMIN(i32 %129, i32 %134)
  store i32 %135, i32* %7, align 4
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call %struct.TYPE_20__* @av_frame_get_plane_buffer(%struct.TYPE_17__* %136, i64 %139)
  store %struct.TYPE_20__* %140, %struct.TYPE_20__** %15, align 8
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %142 = icmp ne %struct.TYPE_20__* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %100
  %144 = load i32, i32* @EINVAL, align 4
  %145 = call i32 @AVERROR(i32 %144)
  store i32 %145, i32* %12, align 4
  br label %389

146:                                              ; preds = %100
  store i32 0, i32* %11, align 4
  br label %147

147:                                              ; preds = %167, %146
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %170

151:                                              ; preds = %147
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %154, i64 %156
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %160, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %151
  br label %170

166:                                              ; preds = %151
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %147

170:                                              ; preds = %165, %147
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %183

174:                                              ; preds = %170
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %178, i64 %181
  store %struct.TYPE_20__* %175, %struct.TYPE_20__** %182, align 8
  br label %183

183:                                              ; preds = %174, %170
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %10, align 4
  br label %94

187:                                              ; preds = %94
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 11
  %191 = load i8**, i8*** %190, align 8
  %192 = call i32 @FF_ARRAY_ELEMS(i8** %191)
  %193 = icmp sgt i32 %188, %192
  br i1 %193, label %194, label %220

194:                                              ; preds = %187
  %195 = load i32, i32* %9, align 4
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 11
  %198 = load i8**, i8*** %197, align 8
  %199 = call i32 @FF_ARRAY_ELEMS(i8** %198)
  %200 = sub nsw i32 %195, %199
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i8* @av_mallocz_array(i32 %205, i32 8)
  %207 = bitcast i8* %206 to i8**
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 10
  store i8** %207, i8*** %209, align 8
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 10
  %212 = load i8**, i8*** %211, align 8
  %213 = icmp ne i8** %212, null
  br i1 %213, label %219, label %214

214:                                              ; preds = %194
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 2
  store i32 0, i32* %216, align 8
  %217 = load i32, i32* @ENOMEM, align 4
  %218 = call i32 @AVERROR(i32 %217)
  store i32 %218, i32* %12, align 4
  br label %389

219:                                              ; preds = %194
  br label %220

220:                                              ; preds = %219, %187
  store i32 0, i32* %10, align 4
  br label %221

221:                                              ; preds = %257, %220
  %222 = load i32, i32* %10, align 4
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 11
  %225 = load i8**, i8*** %224, align 8
  %226 = call i32 @FF_ARRAY_ELEMS(i8** %225)
  %227 = load i32, i32* %9, align 4
  %228 = call i32 @FFMIN(i32 %226, i32 %227)
  %229 = icmp slt i32 %222, %228
  br i1 %229, label %230, label %260

230:                                              ; preds = %221
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %232, align 8
  %234 = load i32, i32* %10, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %233, i64 %235
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %236, align 8
  %238 = call i8* @av_buffer_ref(%struct.TYPE_20__* %237)
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 11
  %241 = load i8**, i8*** %240, align 8
  %242 = load i32, i32* %10, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8*, i8** %241, i64 %243
  store i8* %238, i8** %244, align 8
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 11
  %247 = load i8**, i8*** %246, align 8
  %248 = load i32, i32* %10, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8*, i8** %247, i64 %249
  %251 = load i8*, i8** %250, align 8
  %252 = icmp ne i8* %251, null
  br i1 %252, label %256, label %253

253:                                              ; preds = %230
  %254 = load i32, i32* @ENOMEM, align 4
  %255 = call i32 @AVERROR(i32 %254)
  store i32 %255, i32* %12, align 4
  br label %389

256:                                              ; preds = %230
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %10, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %10, align 4
  br label %221

260:                                              ; preds = %221
  store i32 0, i32* %10, align 4
  br label %261

261:                                              ; preds = %299, %260
  %262 = load i32, i32* %10, align 4
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = icmp slt i32 %262, %265
  br i1 %266, label %267, label %302

267:                                              ; preds = %261
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 2
  %270 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %269, align 8
  %271 = load i32, i32* %10, align 4
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 11
  %274 = load i8**, i8*** %273, align 8
  %275 = call i32 @FF_ARRAY_ELEMS(i8** %274)
  %276 = add nsw i32 %271, %275
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %270, i64 %277
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %278, align 8
  %280 = call i8* @av_buffer_ref(%struct.TYPE_20__* %279)
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 10
  %283 = load i8**, i8*** %282, align 8
  %284 = load i32, i32* %10, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8*, i8** %283, i64 %285
  store i8* %280, i8** %286, align 8
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 10
  %289 = load i8**, i8*** %288, align 8
  %290 = load i32, i32* %10, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8*, i8** %289, i64 %291
  %293 = load i8*, i8** %292, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %298, label %295

295:                                              ; preds = %267
  %296 = load i32, i32* @ENOMEM, align 4
  %297 = call i32 @AVERROR(i32 %296)
  store i32 %297, i32* %12, align 4
  br label %389

298:                                              ; preds = %267
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %10, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %10, align 4
  br label %261

302:                                              ; preds = %261
  %303 = load i32, i32* %8, align 4
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 0
  store i32 %303, i32* %305, align 8
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 9
  store i32 %308, i32* %310, align 8
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 8
  store i32 %313, i32* %315, align 4
  %316 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 7
  store i32 %318, i32* %320, align 8
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %324, i32 0, i32 6
  store i32 %323, i32* %325, align 4
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %328, i64 0
  %330 = load %struct.TYPE_17__*, %struct.TYPE_17__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %330, i32 0, i32 5
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %333, i32 0, i32 5
  store i32 %332, i32* %334, align 8
  %335 = load i32, i32* %7, align 4
  %336 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %336, i32 0, i32 1
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 0
  store i32 %335, i32* %339, align 4
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 3
  %342 = load i8**, i8*** %341, align 8
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 4
  %345 = load i8**, i8*** %344, align 8
  %346 = icmp ne i8** %342, %345
  br i1 %346, label %347, label %366

347:                                              ; preds = %302
  %348 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 3
  %350 = load i8**, i8*** %349, align 8
  %351 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %351, i32 0, i32 4
  %353 = load i8**, i8*** %352, align 8
  %354 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %354, i32 0, i32 3
  %356 = load i8**, i8*** %355, align 8
  %357 = call i32 @FF_ARRAY_ELEMS(i8** %356)
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = call i32 @FFMIN(i32 %357, i32 %360)
  %362 = sext i32 %361 to i64
  %363 = mul i64 8, %362
  %364 = trunc i64 %363 to i32
  %365 = call i32 @memcpy(i8** %350, i8** %353, i32 %364)
  br label %366

366:                                              ; preds = %347, %302
  %367 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %368 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %369 = call i32 @ff_filter_frame(%struct.TYPE_18__* %367, %struct.TYPE_17__* %368)
  store i32 %369, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %370

370:                                              ; preds = %384, %366
  %371 = load i32, i32* %10, align 4
  %372 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %373 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = icmp slt i32 %371, %374
  br i1 %375, label %376, label %387

376:                                              ; preds = %370
  %377 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %377, i32 0, i32 1
  %379 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %378, align 8
  %380 = load i32, i32* %10, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %379, i64 %381
  %383 = call i32 @av_frame_free(%struct.TYPE_17__** %382)
  br label %384

384:                                              ; preds = %376
  %385 = load i32, i32* %10, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %10, align 4
  br label %370

387:                                              ; preds = %370
  %388 = load i32, i32* %12, align 4
  store i32 %388, i32* %2, align 4
  br label %392

389:                                              ; preds = %295, %253, %214, %143, %89
  %390 = call i32 @av_frame_free(%struct.TYPE_17__** %6)
  %391 = load i32, i32* %12, align 4
  store i32 %391, i32* %2, align 4
  br label %392

392:                                              ; preds = %389, %387, %65, %60, %41
  %393 = load i32, i32* %2, align 4
  ret i32 %393
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local %struct.TYPE_17__* @av_frame_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i8**) #1

declare dso_local i8* @av_mallocz_array(i32, i32) #1

declare dso_local %struct.TYPE_20__* @av_frame_get_plane_buffer(%struct.TYPE_17__*, i64) #1

declare dso_local i8* @av_buffer_ref(%struct.TYPE_20__*) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_17__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
