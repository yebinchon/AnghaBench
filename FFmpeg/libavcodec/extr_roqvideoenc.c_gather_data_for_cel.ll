; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_roqvideoenc.c_gather_data_for_cel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_roqvideoenc.c_gather_data_for_cel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32*, i64, i32, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i64, i64, i64*, i64, i64* }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_19__*, %struct.TYPE_14__*, i32* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, i32* }
%struct.TYPE_15__ = type { i32*, i32*, i32, i32 }

@__const.gather_data_for_cel.bitsUsed = private unnamed_addr constant [4 x i32] [i32 2, i32 10, i32 10, i32 0], align 16
@RoQ_ID_FCC = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i8* null, align 8
@RoQ_ID_MOT = common dso_local global i64 0, align 8
@RoQ_ID_SLD = common dso_local global i64 0, align 8
@RoQ_ID_CCC = common dso_local global i64 0, align 8
@ROQ_LAMBDA_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__*)* @gather_data_for_cel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gather_data_for_cel(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca [192 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %6, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %16, %19
  %21 = sdiv i32 %20, 64
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 8
  %26 = add nsw i32 %21, %25
  store i32 %26, i32* %8, align 4
  %27 = bitcast [4 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 bitcast ([4 x i32]* @__const.gather_data_for_cel.bitsUsed to i8*), i64 16, i1 false)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 1
  br i1 %31, label %32, label %62

32:                                               ; preds = %3
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @eval_motion_dist(%struct.TYPE_17__* %42, i32 %45, i32 %48, i32 %55, i32 8)
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @RoQ_ID_FCC, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 %56, i32* %61, align 4
  br label %70

62:                                               ; preds = %3
  %63 = load i8*, i8** @INT_MAX, align 8
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @RoQ_ID_FCC, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %64, i32* %69, align 4
  br label %70

70:                                               ; preds = %62, %32
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %73, 2
  br i1 %74, label %75, label %114

75:                                               ; preds = %70
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @block_sse(i32 %80, i32 %85, i32 %88, i32 %91, i32 %94, i32 %97, i32 %102, i32 %107, i32 8)
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @RoQ_ID_MOT, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32 %108, i32* %113, align 4
  br label %122

114:                                              ; preds = %70
  %115 = load i8*, i8** @INT_MAX, align 8
  %116 = ptrtoint i8* %115 to i32
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* @RoQ_ID_MOT, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32 %116, i32* %121, align 4
  br label %122

122:                                              ; preds = %114, %75
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds [192 x i32], [192 x i32]* %7, i64 0, i64 0
  %133 = call i32 @get_frame_mb(%struct.TYPE_19__* %125, i32 %128, i32 %131, i32* %132, i32 8)
  %134 = getelementptr inbounds [192 x i32], [192 x i32]* %7, i64 0, i64 0
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 3
  %145 = call i32 @index_mb(i32* %134, i32 %138, i32 %142, i64* %144, i32 8)
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* @RoQ_ID_SLD, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32 %145, i32* %150, align 4
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 5
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i64 0
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 0
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 0
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %165 = call i32 @gather_data_for_subcel(%struct.TYPE_20__* %154, i32 %158, i32 %162, %struct.TYPE_17__* %163, %struct.TYPE_16__* %164)
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 5
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i64 1
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 4
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 0
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %180 = call i32 @gather_data_for_subcel(%struct.TYPE_20__* %169, i32 %173, i32 %177, %struct.TYPE_17__* %178, %struct.TYPE_16__* %179)
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 5
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i64 2
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 0
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 4
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %195 = call i32 @gather_data_for_subcel(%struct.TYPE_20__* %184, i32 %188, i32 %192, %struct.TYPE_17__* %193, %struct.TYPE_16__* %194)
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 5
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i64 3
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 4
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = add nsw i32 %206, 4
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %210 = call i32 @gather_data_for_subcel(%struct.TYPE_20__* %199, i32 %203, i32 %207, %struct.TYPE_17__* %208, %struct.TYPE_16__* %209)
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* @RoQ_ID_CCC, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  store i32 0, i32* %215, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %216

216:                                              ; preds = %259, %122
  %217 = load i32, i32* %9, align 4
  %218 = icmp slt i32 %217, 4
  br i1 %218, label %219, label %262

219:                                              ; preds = %216
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 5
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %221, align 8
  %223 = load i32, i32* %9, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 4
  %227 = load i64*, i64** %226, align 8
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 5
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %229, align 8
  %231 = load i32, i32* %9, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds i64, i64* %227, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = load i64, i64* @RoQ_ID_CCC, align 8
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = add nsw i64 %244, %237
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %242, align 4
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 5
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %248, align 8
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 3
  %254 = load i64, i64* %253, align 8
  %255 = load i32, i32* %12, align 4
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %256, %254
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %12, align 4
  br label %259

259:                                              ; preds = %219
  %260 = load i32, i32* %9, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %9, align 4
  br label %216

262:                                              ; preds = %216
  %263 = load i8*, i8** @INT_MAX, align 8
  %264 = ptrtoint i8* %263 to i32
  store i32 %264, i32* %11, align 4
  %265 = load i32, i32* %12, align 4
  %266 = add nsw i32 2, %265
  %267 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  store i32 %266, i32* %267, align 4
  store i32 0, i32* %9, align 4
  br label %268

268:                                              ; preds = %315, %262
  %269 = load i32, i32* %9, align 4
  %270 = icmp slt i32 %269, 4
  br i1 %270, label %271, label %318

271:                                              ; preds = %268
  %272 = load i32, i32* @ROQ_LAMBDA_SCALE, align 4
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 2
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %9, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = mul nsw i32 %272, %279
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* %9, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = mul nsw i32 %283, %287
  %289 = add nsw i32 %280, %288
  %290 = load i32, i32* %11, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %314

292:                                              ; preds = %271
  %293 = load i32, i32* %9, align 4
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 4
  store i32 %293, i32* %295, align 8
  %296 = load i32, i32* @ROQ_LAMBDA_SCALE, align 4
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 2
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* %9, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = mul nsw i32 %296, %303
  %305 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* %9, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = mul nsw i32 %307, %311
  %313 = add nsw i32 %304, %312
  store i32 %313, i32* %11, align 4
  br label %314

314:                                              ; preds = %292, %271
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %9, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %9, align 4
  br label %268

318:                                              ; preds = %268
  %319 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 2
  %321 = load i32*, i32** %320, align 8
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %322, i32 0, i32 4
  %324 = load i32, i32* %323, align 8
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %321, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %326, align 4
  %329 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %329, i32 0, i32 4
  %331 = load i32, i32* %330, align 8
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = add nsw i32 %337, %334
  store i32 %338, i32* %336, align 8
  %339 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 8
  %342 = sext i32 %341 to i64
  %343 = load i64, i64* @RoQ_ID_SLD, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %345, label %356

345:                                              ; preds = %318
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i32 0, i32 1
  %349 = load i32*, i32** %348, align 8
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %350, i32 0, i32 3
  %352 = load i64, i64* %351, align 8
  %353 = getelementptr inbounds i32, i32* %349, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %353, align 4
  br label %356

356:                                              ; preds = %345, %318
  %357 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %357, i32 0, i32 4
  %359 = load i32, i32* %358, align 8
  %360 = sext i32 %359 to i64
  %361 = load i64, i64* @RoQ_ID_CCC, align 8
  %362 = icmp eq i64 %360, %361
  br i1 %362, label %363, label %439

363:                                              ; preds = %356
  store i32 0, i32* %9, align 4
  br label %364

364:                                              ; preds = %435, %363
  %365 = load i32, i32* %9, align 4
  %366 = icmp slt i32 %365, 4
  br i1 %366, label %367, label %438

367:                                              ; preds = %364
  %368 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i32 0, i32 5
  %370 = load %struct.TYPE_20__*, %struct.TYPE_20__** %369, align 8
  %371 = load i32, i32* %9, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %370, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @RoQ_ID_SLD, align 8
  %377 = icmp eq i64 %375, %376
  br i1 %377, label %378, label %394

378:                                              ; preds = %367
  %379 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %380 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %380, i32 0, i32 1
  %382 = load i32*, i32** %381, align 8
  %383 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %383, i32 0, i32 5
  %385 = load %struct.TYPE_20__*, %struct.TYPE_20__** %384, align 8
  %386 = load i32, i32* %9, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %385, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %388, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = getelementptr inbounds i32, i32* %382, i64 %390
  %392 = load i32, i32* %391, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %391, align 4
  br label %434

394:                                              ; preds = %367
  %395 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 5
  %397 = load %struct.TYPE_20__*, %struct.TYPE_20__** %396, align 8
  %398 = load i32, i32* %9, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %397, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = load i64, i64* @RoQ_ID_CCC, align 8
  %404 = icmp eq i64 %402, %403
  br i1 %404, label %405, label %433

405:                                              ; preds = %394
  store i32 0, i32* %10, align 4
  br label %406

406:                                              ; preds = %429, %405
  %407 = load i32, i32* %10, align 4
  %408 = icmp slt i32 %407, 4
  br i1 %408, label %409, label %432

409:                                              ; preds = %406
  %410 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %411, i32 0, i32 0
  %413 = load i32*, i32** %412, align 8
  %414 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %415 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %414, i32 0, i32 5
  %416 = load %struct.TYPE_20__*, %struct.TYPE_20__** %415, align 8
  %417 = load i32, i32* %9, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %416, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %419, i32 0, i32 2
  %421 = load i64*, i64** %420, align 8
  %422 = load i32, i32* %10, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i64, i64* %421, i64 %423
  %425 = load i64, i64* %424, align 8
  %426 = getelementptr inbounds i32, i32* %413, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %426, align 4
  br label %429

429:                                              ; preds = %409
  %430 = load i32, i32* %10, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %10, align 4
  br label %406

432:                                              ; preds = %406
  br label %433

433:                                              ; preds = %432, %394
  br label %434

434:                                              ; preds = %433, %378
  br label %435

435:                                              ; preds = %434
  %436 = load i32, i32* %9, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %9, align 4
  br label %364

438:                                              ; preds = %364
  br label %439

439:                                              ; preds = %438, %356
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @eval_motion_dist(%struct.TYPE_17__*, i32, i32, i32, i32) #2

declare dso_local i32 @block_sse(i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @get_frame_mb(%struct.TYPE_19__*, i32, i32, i32*, i32) #2

declare dso_local i32 @index_mb(i32*, i32, i32, i64*, i32) #2

declare dso_local i32 @gather_data_for_subcel(%struct.TYPE_20__*, i32, i32, %struct.TYPE_17__*, %struct.TYPE_16__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
