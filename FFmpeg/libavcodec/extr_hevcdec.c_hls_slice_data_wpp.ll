; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_hls_slice_data_wpp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_hls_slice_data_wpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_25__, %struct.TYPE_29__*, %struct.TYPE_23__, i32, %struct.TYPE_20__**, %struct.TYPE_19__**, i32*, %struct.TYPE_26__* }
%struct.TYPE_25__ = type { i32, i32, i32*, i32*, i32* }
%struct.TYPE_29__ = type { i32 (%struct.TYPE_29__*, i32, i32*, i32*, i32)* }
%struct.TYPE_23__ = type { %struct.TYPE_21__*, %struct.TYPE_22__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_26__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"WPP ctb addresses are wrong (%d %d %d %d)\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"entry_point_offset table is corrupted\0A\00", align 1
@hls_decode_entry_wpp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_28__*)* @hls_slice_data_wpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hls_slice_data_wpp(%struct.TYPE_27__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 8
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  store %struct.TYPE_26__* %25, %struct.TYPE_26__** %8, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  %31 = call i32* @av_malloc_array(i32 %30, i32 4)
  store i32* %31, i32** %9, align 8
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  %37 = call i32* @av_malloc_array(i32 %36, i32 4)
  store i32* %37, i32** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load i32*, i32** %10, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %40, %2
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @av_free(i32* %44)
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @av_free(i32* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = call i32 @AVERROR(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %528

50:                                               ; preds = %40
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %58, %64
  %66 = add nsw i32 %54, %65
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %72, %78
  %80 = icmp sge i32 %66, %79
  br i1 %80, label %81, label %108

81:                                               ; preds = %50
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %83, align 8
  %85 = load i32, i32* @AV_LOG_ERROR, align 4
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (%struct.TYPE_29__*, i32, i8*, ...) @av_log(%struct.TYPE_29__* %84, i32 %85, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %93, i32 %99, i32 %105)
  %107 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %107, i32* %16, align 4
  br label %522

108:                                              ; preds = %50
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_29__*, %struct.TYPE_29__** %110, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  %117 = call i32 @ff_alloc_entries(%struct.TYPE_29__* %111, i32 %116)
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 6
  %120 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %120, i64 1
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %121, align 8
  %123 = icmp ne %struct.TYPE_19__* %122, null
  br i1 %123, label %174, label %124

124:                                              ; preds = %108
  store i32 1, i32* %14, align 4
  br label %125

125:                                              ; preds = %170, %124
  %126 = load i32, i32* %14, align 4
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %173

131:                                              ; preds = %125
  %132 = call %struct.TYPE_19__* @av_malloc(i32 104)
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 6
  %135 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %135, i64 %137
  store %struct.TYPE_19__* %132, %struct.TYPE_19__** %138, align 8
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 6
  %141 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %140, align 8
  %142 = load i32, i32* %14, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %141, i64 %143
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %144, align 8
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %147 = call i32 @memcpy(%struct.TYPE_19__* %145, %struct.TYPE_27__* %146, i32 104)
  %148 = call %struct.TYPE_20__* @av_mallocz(i32 4)
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 5
  %151 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %150, align 8
  %152 = load i32, i32* %14, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %151, i64 %153
  store %struct.TYPE_20__* %148, %struct.TYPE_20__** %154, align 8
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 5
  %157 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %156, align 8
  %158 = load i32, i32* %14, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %157, i64 %159
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %160, align 8
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 6
  %164 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %163, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %164, i64 %166
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  store %struct.TYPE_20__* %161, %struct.TYPE_20__** %169, align 8
  br label %170

170:                                              ; preds = %131
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %14, align 4
  br label %125

173:                                              ; preds = %125
  br label %174

174:                                              ; preds = %173, %108
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = ashr i32 %178, 3
  store i32 %179, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  %180 = load i32, i32* %11, align 4
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %180, %186
  store i32 %187, i32* %12, align 4
  br label %188

188:                                              ; preds = %220, %174
  %189 = load i32, i32* %15, align 4
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %223

194:                                              ; preds = %188
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %15, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %11, align 4
  %203 = icmp sge i32 %201, %202
  br i1 %203, label %204, label %219

204:                                              ; preds = %194
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %15, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %12, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %204
  %215 = load i32, i32* %12, align 4
  %216 = add nsw i32 %215, -1
  store i32 %216, i32* %12, align 4
  %217 = load i32, i32* %13, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %13, align 4
  br label %219

219:                                              ; preds = %214, %204, %194
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %15, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %15, align 4
  br label %188

223:                                              ; preds = %188
  store i32 1, i32* %14, align 4
  br label %224

224:                                              ; preds = %318, %223
  %225 = load i32, i32* %14, align 4
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp slt i32 %225, %229
  br i1 %230, label %231, label %321

231:                                              ; preds = %224
  %232 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %14, align 4
  %237 = sub nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %235, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %13, align 4
  %242 = sub nsw i32 %240, %241
  %243 = load i32, i32* %11, align 4
  %244 = add nsw i32 %243, %242
  store i32 %244, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  %245 = load i32, i32* %11, align 4
  %246 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %14, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %245, %253
  store i32 %254, i32* %12, align 4
  br label %255

255:                                              ; preds = %287, %231
  %256 = load i32, i32* %15, align 4
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = icmp slt i32 %256, %259
  br i1 %260, label %261, label %290

261:                                              ; preds = %255
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %262, i32 0, i32 2
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %15, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %11, align 4
  %270 = icmp sge i32 %268, %269
  br i1 %270, label %271, label %286

271:                                              ; preds = %261
  %272 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %272, i32 0, i32 2
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %15, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %12, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %286

281:                                              ; preds = %271
  %282 = load i32, i32* %12, align 4
  %283 = add nsw i32 %282, -1
  store i32 %283, i32* %12, align 4
  %284 = load i32, i32* %13, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %13, align 4
  br label %286

286:                                              ; preds = %281, %271, %261
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %15, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %15, align 4
  br label %255

290:                                              ; preds = %255
  %291 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %292, i32 0, i32 2
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %14, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* %13, align 4
  %300 = sub nsw i32 %298, %299
  %301 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %302, i32 0, i32 3
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %14, align 4
  %306 = sub nsw i32 %305, 1
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %304, i64 %307
  store i32 %300, i32* %308, align 4
  %309 = load i32, i32* %11, align 4
  %310 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %311, i32 0, i32 4
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %14, align 4
  %315 = sub nsw i32 %314, 1
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %313, i64 %316
  store i32 %309, i32* %317, align 4
  br label %318

318:                                              ; preds = %290
  %319 = load i32, i32* %14, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %14, align 4
  br label %224

321:                                              ; preds = %224
  %322 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %381

327:                                              ; preds = %321
  %328 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %329, i32 0, i32 2
  %331 = load i32*, i32** %330, align 8
  %332 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = sub nsw i32 %335, 1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %331, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* %13, align 4
  %341 = sub nsw i32 %339, %340
  %342 = load i32, i32* %11, align 4
  %343 = add nsw i32 %342, %341
  store i32 %343, i32* %11, align 4
  %344 = load i32, i32* %7, align 4
  %345 = load i32, i32* %11, align 4
  %346 = icmp slt i32 %344, %345
  br i1 %346, label %347, label %354

347:                                              ; preds = %327
  %348 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %348, i32 0, i32 2
  %350 = load %struct.TYPE_29__*, %struct.TYPE_29__** %349, align 8
  %351 = load i32, i32* @AV_LOG_ERROR, align 4
  %352 = call i32 (%struct.TYPE_29__*, i32, i8*, ...) @av_log(%struct.TYPE_29__* %350, i32 %351, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %353 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %353, i32* %16, align 4
  br label %522

354:                                              ; preds = %327
  %355 = load i32, i32* %7, align 4
  %356 = load i32, i32* %11, align 4
  %357 = sub nsw i32 %355, %356
  %358 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %359, i32 0, i32 3
  %361 = load i32*, i32** %360, align 8
  %362 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = sub nsw i32 %365, 1
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %361, i64 %367
  store i32 %357, i32* %368, align 4
  %369 = load i32, i32* %11, align 4
  %370 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %371, i32 0, i32 4
  %373 = load i32*, i32** %372, align 8
  %374 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = sub nsw i32 %377, 1
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %373, i64 %379
  store i32 %369, i32* %380, align 4
  br label %381

381:                                              ; preds = %354, %321
  %382 = load i32*, i32** %6, align 8
  %383 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %383, i32 0, i32 7
  store i32* %382, i32** %384, align 8
  store i32 1, i32* %14, align 4
  br label %385

385:                                              ; preds = %445, %381
  %386 = load i32, i32* %14, align 4
  %387 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = icmp slt i32 %386, %389
  br i1 %390, label %391, label %448

391:                                              ; preds = %385
  %392 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %392, i32 0, i32 6
  %394 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %393, align 8
  %395 = load i32, i32* %14, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %394, i64 %396
  %398 = load %struct.TYPE_19__*, %struct.TYPE_19__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %398, i32 0, i32 0
  %400 = load %struct.TYPE_20__*, %struct.TYPE_20__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 0
  store i32 1, i32* %401, align 4
  %402 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %402, i32 0, i32 6
  %404 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %404, i64 0
  %406 = load %struct.TYPE_19__*, %struct.TYPE_19__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %406, i32 0, i32 0
  %408 = load %struct.TYPE_20__*, %struct.TYPE_20__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %411, i32 0, i32 6
  %413 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %412, align 8
  %414 = load i32, i32* %14, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %413, i64 %415
  %417 = load %struct.TYPE_19__*, %struct.TYPE_19__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %417, i32 0, i32 0
  %419 = load %struct.TYPE_20__*, %struct.TYPE_20__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %419, i32 0, i32 1
  store i32 %410, i32* %420, align 4
  %421 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %422 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %421, i32 0, i32 6
  %423 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %422, align 8
  %424 = load i32, i32* %14, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %423, i64 %425
  %427 = load %struct.TYPE_19__*, %struct.TYPE_19__** %426, align 8
  %428 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %429 = call i32 @memcpy(%struct.TYPE_19__* %427, %struct.TYPE_27__* %428, i32 104)
  %430 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %431 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %430, i32 0, i32 5
  %432 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %431, align 8
  %433 = load i32, i32* %14, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %432, i64 %434
  %436 = load %struct.TYPE_20__*, %struct.TYPE_20__** %435, align 8
  %437 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %437, i32 0, i32 6
  %439 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %438, align 8
  %440 = load i32, i32* %14, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %439, i64 %441
  %443 = load %struct.TYPE_19__*, %struct.TYPE_19__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %443, i32 0, i32 0
  store %struct.TYPE_20__* %436, %struct.TYPE_20__** %444, align 8
  br label %445

445:                                              ; preds = %391
  %446 = load i32, i32* %14, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %14, align 4
  br label %385

448:                                              ; preds = %385
  %449 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %450 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %449, i32 0, i32 4
  %451 = call i32 @atomic_store(i32* %450, i32 0)
  %452 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %453 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %452, i32 0, i32 2
  %454 = load %struct.TYPE_29__*, %struct.TYPE_29__** %453, align 8
  %455 = call i32 @ff_reset_entries(%struct.TYPE_29__* %454)
  store i32 0, i32* %14, align 4
  br label %456

456:                                              ; preds = %473, %448
  %457 = load i32, i32* %14, align 4
  %458 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %459 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %458, i32 0, i32 1
  %460 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = icmp sle i32 %457, %461
  br i1 %462, label %463, label %476

463:                                              ; preds = %456
  %464 = load i32, i32* %14, align 4
  %465 = load i32*, i32** %10, align 8
  %466 = load i32, i32* %14, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %465, i64 %467
  store i32 %464, i32* %468, align 4
  %469 = load i32*, i32** %9, align 8
  %470 = load i32, i32* %14, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %469, i64 %471
  store i32 0, i32* %472, align 4
  br label %473

473:                                              ; preds = %463
  %474 = load i32, i32* %14, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %14, align 4
  br label %456

476:                                              ; preds = %456
  %477 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %478 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %477, i32 0, i32 3
  %479 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %478, i32 0, i32 0
  %480 = load %struct.TYPE_21__*, %struct.TYPE_21__** %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %480, i32 0, i32 0
  %482 = load i64, i64* %481, align 8
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %502

484:                                              ; preds = %476
  %485 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %486 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %485, i32 0, i32 2
  %487 = load %struct.TYPE_29__*, %struct.TYPE_29__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %487, i32 0, i32 0
  %489 = load i32 (%struct.TYPE_29__*, i32, i32*, i32*, i32)*, i32 (%struct.TYPE_29__*, i32, i32*, i32*, i32)** %488, align 8
  %490 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %491 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %490, i32 0, i32 2
  %492 = load %struct.TYPE_29__*, %struct.TYPE_29__** %491, align 8
  %493 = load i32, i32* @hls_decode_entry_wpp, align 4
  %494 = load i32*, i32** %10, align 8
  %495 = load i32*, i32** %9, align 8
  %496 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %497 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %496, i32 0, i32 1
  %498 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = add nsw i32 %499, 1
  %501 = call i32 %489(%struct.TYPE_29__* %492, i32 %493, i32* %494, i32* %495, i32 %500)
  br label %502

502:                                              ; preds = %484, %476
  store i32 0, i32* %14, align 4
  br label %503

503:                                              ; preds = %518, %502
  %504 = load i32, i32* %14, align 4
  %505 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %506 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %505, i32 0, i32 1
  %507 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = icmp sle i32 %504, %508
  br i1 %509, label %510, label %521

510:                                              ; preds = %503
  %511 = load i32*, i32** %9, align 8
  %512 = load i32, i32* %14, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32, i32* %511, i64 %513
  %515 = load i32, i32* %514, align 4
  %516 = load i32, i32* %16, align 4
  %517 = add nsw i32 %516, %515
  store i32 %517, i32* %16, align 4
  br label %518

518:                                              ; preds = %510
  %519 = load i32, i32* %14, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %14, align 4
  br label %503

521:                                              ; preds = %503
  br label %522

522:                                              ; preds = %521, %347, %81
  %523 = load i32*, i32** %9, align 8
  %524 = call i32 @av_free(i32* %523)
  %525 = load i32*, i32** %10, align 8
  %526 = call i32 @av_free(i32* %525)
  %527 = load i32, i32* %16, align 4
  store i32 %527, i32* %3, align 4
  br label %528

528:                                              ; preds = %522, %43
  %529 = load i32, i32* %3, align 4
  ret i32 %529
}

declare dso_local i32* @av_malloc_array(i32, i32) #1

declare dso_local i32 @av_free(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_29__*, i32, i8*, ...) #1

declare dso_local i32 @ff_alloc_entries(%struct.TYPE_29__*, i32) #1

declare dso_local %struct.TYPE_19__* @av_malloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_19__*, %struct.TYPE_27__*, i32) #1

declare dso_local %struct.TYPE_20__* @av_mallocz(i32) #1

declare dso_local i32 @atomic_store(i32*, i32) #1

declare dso_local i32 @ff_reset_entries(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
