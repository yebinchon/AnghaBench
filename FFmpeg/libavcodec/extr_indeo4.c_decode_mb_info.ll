; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_indeo4.c_decode_mb_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_indeo4.c_decode_mb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_13__, i64, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@IVI4_FRAMETYPE_BIDIR = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"num_MBs mismatch %d %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Insufficient input for mb info\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@IVI4_FRAMETYPE_INTRA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Empty macroblock in an INTRA picture!\0A\00", align 1
@IVI_VLC_BITS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"ref_mb unavailable\0A\00", align 1
@IVI4_FRAMETYPE_INTRA1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"motion vector %d %d outside reference\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_16__*, i32*)* @decode_mb_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_mb_info(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, %struct.TYPE_16__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_17__*, align 8
  %22 = alloca %struct.TYPE_17__*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  store i32 %30, i32* %23, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %21, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  store %struct.TYPE_17__* %36, %struct.TYPE_17__** %22, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  store i32 %47, i32* %15, align 4
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %50, %53
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 4, i32 1
  store i32 %56, i32* %17, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IVI4_FRAMETYPE_BIDIR, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 2, i32 1
  store i32 %63, i32* %19, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 3
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = ashr i32 %76, 3
  %78 = sub nsw i32 %73, %77
  store i32 %78, i32* %18, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %81, %84
  %86 = sub nsw i32 %85, 1
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sdiv i32 %86, %89
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %93, %96
  %98 = sub nsw i32 %97, 1
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sdiv i32 %98, %101
  %103 = mul nsw i32 %90, %102
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %103, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %4
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* @AV_LOG_ERROR, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %109, i32 %110, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %116, i32 %119, i32 %122)
  store i32 -1, i32* %5, align 4
  br label %673

124:                                              ; preds = %4
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %663, %124
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %132, %135
  %137 = icmp slt i32 %129, %136
  br i1 %137, label %138, label %669

138:                                              ; preds = %128
  %139 = load i32, i32* %15, align 4
  store i32 %139, i32* %16, align 4
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %653, %138
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %147, %150
  %152 = icmp slt i32 %144, %151
  br i1 %152, label %153, label %659

153:                                              ; preds = %143
  %154 = load i32, i32* %10, align 4
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %16, align 4
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 4
  store i32 0, i32* %164, align 8
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 3
  store i32 0, i32* %166, align 4
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 1
  %169 = call i32 @get_bits_left(i32* %168)
  %170 = icmp slt i32 %169, 1
  br i1 %170, label %171, label %176

171:                                              ; preds = %153
  %172 = load i32*, i32** %9, align 8
  %173 = load i32, i32* @AV_LOG_ERROR, align 4
  %174 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %172, i32 %173, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %175 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %175, i32* %5, align 4
  br label %673

176:                                              ; preds = %153
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 1
  %179 = call i64 @get_bits1(i32* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %279

181:                                              ; preds = %176
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @IVI4_FRAMETYPE_INTRA, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %181
  %188 = load i32*, i32** %9, align 8
  %189 = load i32, i32* @AV_LOG_ERROR, align 4
  %190 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %188, i32 %189, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %191 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %191, i32* %5, align 4
  br label %673

192:                                              ; preds = %181
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 5
  store i32 1, i32* %194, align 4
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 9
  store i8* null, i8** %196, align 8
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 6
  store i32 0, i32* %198, align 8
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %234, label %203

203:                                              ; preds = %192
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %234, label %208

208:                                              ; preds = %203
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %234

213:                                              ; preds = %208
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @IVI_VLC_BITS, align 4
  %223 = call i8* @get_vlc2(i32* %215, i32 %221, i32 %222, i32 1)
  %224 = ptrtoint i8* %223 to i32
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 6
  store i32 %224, i32* %226, align 8
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 8
  %230 = call i8* @IVI_TOSIGNED(i32 %229)
  %231 = ptrtoint i8* %230 to i32
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 6
  store i32 %231, i32* %233, align 8
  br label %234

234:                                              ; preds = %213, %208, %203, %192
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 8
  store i32 0, i32* %236, align 8
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 7
  store i32 0, i32* %238, align 4
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 5
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %278

243:                                              ; preds = %234
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %245 = icmp ne %struct.TYPE_17__* %244, null
  br i1 %245, label %246, label %278

246:                                              ; preds = %243
  %247 = load i32, i32* %18, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %266

249:                                              ; preds = %246
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 7
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %18, align 4
  %254 = call i8* @ivi_scale_mv(i32 %252, i32 %253)
  %255 = ptrtoint i8* %254 to i32
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 7
  store i32 %255, i32* %257, align 4
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 8
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* %18, align 4
  %262 = call i8* @ivi_scale_mv(i32 %260, i32 %261)
  %263 = ptrtoint i8* %262 to i32
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 8
  store i32 %263, i32* %265, align 8
  br label %277

266:                                              ; preds = %246
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 7
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 7
  store i32 %269, i32* %271, align 4
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 8
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 8
  store i32 %274, i32* %276, align 8
  br label %277

277:                                              ; preds = %266, %249
  br label %278

278:                                              ; preds = %277, %243, %234
  br label %551

279:                                              ; preds = %176
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 5
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %298

284:                                              ; preds = %279
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %286 = icmp ne %struct.TYPE_17__* %285, null
  br i1 %286, label %292, label %287

287:                                              ; preds = %284
  %288 = load i32*, i32** %9, align 8
  %289 = load i32, i32* @AV_LOG_ERROR, align 4
  %290 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %288, i32 %289, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %291 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %291, i32* %5, align 4
  br label %673

292:                                              ; preds = %284
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 5
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 5
  store i32 %295, i32* %297, align 4
  br label %322

298:                                              ; preds = %279
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @IVI4_FRAMETYPE_INTRA, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %310, label %304

304:                                              ; preds = %298
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @IVI4_FRAMETYPE_INTRA1, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %304, %298
  %311 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %312 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %311, i32 0, i32 5
  store i32 0, i32* %312, align 4
  br label %321

313:                                              ; preds = %304
  %314 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %314, i32 0, i32 1
  %316 = load i32, i32* %19, align 4
  %317 = call i8* @get_bits(i32* %315, i32 %316)
  %318 = ptrtoint i8* %317 to i32
  %319 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 5
  store i32 %318, i32* %320, align 4
  br label %321

321:                                              ; preds = %313, %310
  br label %322

322:                                              ; preds = %321, %292
  %323 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %323, i32 0, i32 1
  %325 = load i32, i32* %17, align 4
  %326 = call i8* @get_bits(i32* %324, i32 %325)
  %327 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %328 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %327, i32 0, i32 9
  store i8* %326, i8** %328, align 8
  %329 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %330 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %329, i32 0, i32 6
  store i32 0, i32* %330, align 8
  %331 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %331, i32 0, i32 8
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %345

335:                                              ; preds = %322
  %336 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %337 = icmp ne %struct.TYPE_17__* %336, null
  br i1 %337, label %338, label %344

338:                                              ; preds = %335
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 6
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %343 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %342, i32 0, i32 6
  store i32 %341, i32* %343, align 8
  br label %344

344:                                              ; preds = %338, %335
  br label %387

345:                                              ; preds = %322
  %346 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %347 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %346, i32 0, i32 9
  %348 = load i8*, i8** %347, align 8
  %349 = icmp ne i8* %348, null
  br i1 %349, label %365, label %350

350:                                              ; preds = %345
  %351 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %351, i32 0, i32 7
  %353 = load i32, i32* %352, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %386, label %355

355:                                              ; preds = %350
  %356 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %356, i32 0, i32 6
  %358 = load i32, i32* %357, align 8
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %386, label %360

360:                                              ; preds = %355
  %361 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %361, i32 0, i32 3
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %386

365:                                              ; preds = %360, %345
  %366 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %366, i32 0, i32 1
  %368 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %369, i32 0, i32 0
  %371 = load %struct.TYPE_12__*, %struct.TYPE_12__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* @IVI_VLC_BITS, align 4
  %375 = call i8* @get_vlc2(i32* %367, i32 %373, i32 %374, i32 1)
  %376 = ptrtoint i8* %375 to i32
  %377 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %378 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %377, i32 0, i32 6
  store i32 %376, i32* %378, align 8
  %379 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %380 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %379, i32 0, i32 6
  %381 = load i32, i32* %380, align 8
  %382 = call i8* @IVI_TOSIGNED(i32 %381)
  %383 = ptrtoint i8* %382 to i32
  %384 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %385 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %384, i32 0, i32 6
  store i32 %383, i32* %385, align 8
  br label %386

386:                                              ; preds = %365, %360, %355, %350
  br label %387

387:                                              ; preds = %386, %344
  %388 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %389 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %388, i32 0, i32 5
  %390 = load i32, i32* %389, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %397, label %392

392:                                              ; preds = %387
  %393 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %394 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %393, i32 0, i32 8
  store i32 0, i32* %394, align 8
  %395 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %396 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %395, i32 0, i32 7
  store i32 0, i32* %396, align 4
  br label %550

397:                                              ; preds = %387
  %398 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %399 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %398, i32 0, i32 5
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %438

402:                                              ; preds = %397
  %403 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %404 = icmp ne %struct.TYPE_17__* %403, null
  br i1 %404, label %405, label %437

405:                                              ; preds = %402
  %406 = load i32, i32* %18, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %425

408:                                              ; preds = %405
  %409 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %410 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %409, i32 0, i32 7
  %411 = load i32, i32* %410, align 4
  %412 = load i32, i32* %18, align 4
  %413 = call i8* @ivi_scale_mv(i32 %411, i32 %412)
  %414 = ptrtoint i8* %413 to i32
  %415 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %416 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %415, i32 0, i32 7
  store i32 %414, i32* %416, align 4
  %417 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %418 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %417, i32 0, i32 8
  %419 = load i32, i32* %418, align 8
  %420 = load i32, i32* %18, align 4
  %421 = call i8* @ivi_scale_mv(i32 %419, i32 %420)
  %422 = ptrtoint i8* %421 to i32
  %423 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %424 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %423, i32 0, i32 8
  store i32 %422, i32* %424, align 8
  br label %436

425:                                              ; preds = %405
  %426 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %427 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %426, i32 0, i32 7
  %428 = load i32, i32* %427, align 4
  %429 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %430 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %429, i32 0, i32 7
  store i32 %428, i32* %430, align 4
  %431 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %432 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %431, i32 0, i32 8
  %433 = load i32, i32* %432, align 8
  %434 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %435 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %434, i32 0, i32 8
  store i32 %433, i32* %435, align 8
  br label %436

436:                                              ; preds = %425, %408
  br label %437

437:                                              ; preds = %436, %402
  br label %527

438:                                              ; preds = %397
  %439 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %440 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %439, i32 0, i32 1
  %441 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %442 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %441, i32 0, i32 2
  %443 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %442, i32 0, i32 0
  %444 = load %struct.TYPE_12__*, %struct.TYPE_12__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* @IVI_VLC_BITS, align 4
  %448 = call i8* @get_vlc2(i32* %440, i32 %446, i32 %447, i32 1)
  %449 = ptrtoint i8* %448 to i32
  store i32 %449, i32* %14, align 4
  %450 = load i32, i32* %14, align 4
  %451 = call i8* @IVI_TOSIGNED(i32 %450)
  %452 = load i32, i32* %13, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr i8, i8* %451, i64 %453
  %455 = ptrtoint i8* %454 to i32
  store i32 %455, i32* %13, align 4
  %456 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %457 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %456, i32 0, i32 1
  %458 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %459 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %458, i32 0, i32 2
  %460 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %459, i32 0, i32 0
  %461 = load %struct.TYPE_12__*, %struct.TYPE_12__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = load i32, i32* @IVI_VLC_BITS, align 4
  %465 = call i8* @get_vlc2(i32* %457, i32 %463, i32 %464, i32 1)
  %466 = ptrtoint i8* %465 to i32
  store i32 %466, i32* %14, align 4
  %467 = load i32, i32* %14, align 4
  %468 = call i8* @IVI_TOSIGNED(i32 %467)
  %469 = load i32, i32* %12, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr i8, i8* %468, i64 %470
  %472 = ptrtoint i8* %471 to i32
  store i32 %472, i32* %12, align 4
  %473 = load i32, i32* %12, align 4
  %474 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %475 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %474, i32 0, i32 7
  store i32 %473, i32* %475, align 4
  %476 = load i32, i32* %13, align 4
  %477 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %478 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %477, i32 0, i32 8
  store i32 %476, i32* %478, align 8
  %479 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %480 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %479, i32 0, i32 5
  %481 = load i32, i32* %480, align 4
  %482 = icmp eq i32 %481, 3
  br i1 %482, label %483, label %526

483:                                              ; preds = %438
  %484 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %485 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %484, i32 0, i32 1
  %486 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %487 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %486, i32 0, i32 2
  %488 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %487, i32 0, i32 0
  %489 = load %struct.TYPE_12__*, %struct.TYPE_12__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 4
  %492 = load i32, i32* @IVI_VLC_BITS, align 4
  %493 = call i8* @get_vlc2(i32* %485, i32 %491, i32 %492, i32 1)
  %494 = ptrtoint i8* %493 to i32
  store i32 %494, i32* %14, align 4
  %495 = load i32, i32* %14, align 4
  %496 = call i8* @IVI_TOSIGNED(i32 %495)
  %497 = load i32, i32* %13, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr i8, i8* %496, i64 %498
  %500 = ptrtoint i8* %499 to i32
  store i32 %500, i32* %13, align 4
  %501 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %502 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %501, i32 0, i32 1
  %503 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %504 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %503, i32 0, i32 2
  %505 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %504, i32 0, i32 0
  %506 = load %struct.TYPE_12__*, %struct.TYPE_12__** %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 4
  %509 = load i32, i32* @IVI_VLC_BITS, align 4
  %510 = call i8* @get_vlc2(i32* %502, i32 %508, i32 %509, i32 1)
  %511 = ptrtoint i8* %510 to i32
  store i32 %511, i32* %14, align 4
  %512 = load i32, i32* %14, align 4
  %513 = call i8* @IVI_TOSIGNED(i32 %512)
  %514 = load i32, i32* %12, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr i8, i8* %513, i64 %515
  %517 = ptrtoint i8* %516 to i32
  store i32 %517, i32* %12, align 4
  %518 = load i32, i32* %12, align 4
  %519 = sub nsw i32 0, %518
  %520 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %521 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %520, i32 0, i32 3
  store i32 %519, i32* %521, align 4
  %522 = load i32, i32* %13, align 4
  %523 = sub nsw i32 0, %522
  %524 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %525 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %524, i32 0, i32 4
  store i32 %523, i32* %525, align 8
  br label %526

526:                                              ; preds = %483, %438
  br label %527

527:                                              ; preds = %526, %437
  %528 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %529 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %528, i32 0, i32 5
  %530 = load i32, i32* %529, align 4
  %531 = icmp eq i32 %530, 2
  br i1 %531, label %532, label %549

532:                                              ; preds = %527
  %533 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %534 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %533, i32 0, i32 7
  %535 = load i32, i32* %534, align 4
  %536 = sub nsw i32 0, %535
  %537 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %538 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %537, i32 0, i32 3
  store i32 %536, i32* %538, align 4
  %539 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %540 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %539, i32 0, i32 8
  %541 = load i32, i32* %540, align 8
  %542 = sub nsw i32 0, %541
  %543 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %544 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %543, i32 0, i32 4
  store i32 %542, i32* %544, align 8
  %545 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %546 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %545, i32 0, i32 7
  store i32 0, i32* %546, align 4
  %547 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %548 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %547, i32 0, i32 8
  store i32 0, i32* %548, align 8
  br label %549

549:                                              ; preds = %532, %527
  br label %550

550:                                              ; preds = %549, %392
  br label %551

551:                                              ; preds = %550, %278
  %552 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %553 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %552, i32 0, i32 3
  %554 = load i32, i32* %553, align 4
  store i32 %554, i32* %20, align 4
  %555 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %556 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %555, i32 0, i32 5
  %557 = load i32, i32* %556, align 4
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %639

559:                                              ; preds = %551
  %560 = load i32, i32* %10, align 4
  %561 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %562 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %561, i32 0, i32 7
  %563 = load i32, i32* %562, align 4
  %564 = load i32, i32* %20, align 4
  %565 = ashr i32 %563, %564
  %566 = add nsw i32 %560, %565
  %567 = load i32, i32* %11, align 4
  %568 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %569 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %568, i32 0, i32 8
  %570 = load i32, i32* %569, align 8
  %571 = load i32, i32* %20, align 4
  %572 = ashr i32 %570, %571
  %573 = add nsw i32 %567, %572
  %574 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %575 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %574, i32 0, i32 1
  %576 = load i32, i32* %575, align 4
  %577 = mul nsw i32 %573, %576
  %578 = add nsw i32 %566, %577
  %579 = icmp slt i32 %578, 0
  br i1 %579, label %619, label %580

580:                                              ; preds = %559
  %581 = load i32, i32* %10, align 4
  %582 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %583 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %582, i32 0, i32 7
  %584 = load i32, i32* %583, align 4
  %585 = load i32, i32* %20, align 4
  %586 = add nsw i32 %584, %585
  %587 = load i32, i32* %20, align 4
  %588 = ashr i32 %586, %587
  %589 = add nsw i32 %581, %588
  %590 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %591 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 8
  %593 = add nsw i32 %589, %592
  %594 = sub nsw i32 %593, 1
  %595 = load i32, i32* %11, align 4
  %596 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %597 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 8
  %599 = add nsw i32 %595, %598
  %600 = sub nsw i32 %599, 1
  %601 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %602 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %601, i32 0, i32 8
  %603 = load i32, i32* %602, align 8
  %604 = load i32, i32* %20, align 4
  %605 = add nsw i32 %603, %604
  %606 = load i32, i32* %20, align 4
  %607 = ashr i32 %605, %606
  %608 = add nsw i32 %600, %607
  %609 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %610 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %609, i32 0, i32 1
  %611 = load i32, i32* %610, align 4
  %612 = mul nsw i32 %608, %611
  %613 = add nsw i32 %594, %612
  %614 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %615 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %614, i32 0, i32 4
  %616 = load i32, i32* %615, align 8
  %617 = sub nsw i32 %616, 1
  %618 = icmp sgt i32 %613, %617
  br i1 %618, label %619, label %638

619:                                              ; preds = %580, %559
  %620 = load i32*, i32** %9, align 8
  %621 = load i32, i32* @AV_LOG_ERROR, align 4
  %622 = load i32, i32* %10, align 4
  %623 = load i32, i32* %20, align 4
  %624 = mul nsw i32 %622, %623
  %625 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %626 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %625, i32 0, i32 7
  %627 = load i32, i32* %626, align 4
  %628 = add nsw i32 %624, %627
  %629 = load i32, i32* %11, align 4
  %630 = load i32, i32* %20, align 4
  %631 = mul nsw i32 %629, %630
  %632 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %633 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %632, i32 0, i32 8
  %634 = load i32, i32* %633, align 8
  %635 = add nsw i32 %631, %634
  %636 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %620, i32 %621, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %628, i32 %635)
  %637 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %637, i32* %5, align 4
  br label %673

638:                                              ; preds = %580
  br label %639

639:                                              ; preds = %638, %551
  %640 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %641 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %640, i32 1
  store %struct.TYPE_17__* %641, %struct.TYPE_17__** %21, align 8
  %642 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %643 = icmp ne %struct.TYPE_17__* %642, null
  br i1 %643, label %644, label %647

644:                                              ; preds = %639
  %645 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %646 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %645, i32 1
  store %struct.TYPE_17__* %646, %struct.TYPE_17__** %22, align 8
  br label %647

647:                                              ; preds = %644, %639
  %648 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %649 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %648, i32 0, i32 0
  %650 = load i32, i32* %649, align 8
  %651 = load i32, i32* %16, align 4
  %652 = add nsw i32 %651, %650
  store i32 %652, i32* %16, align 4
  br label %653

653:                                              ; preds = %647
  %654 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %655 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %654, i32 0, i32 0
  %656 = load i32, i32* %655, align 8
  %657 = load i32, i32* %10, align 4
  %658 = add nsw i32 %657, %656
  store i32 %658, i32* %10, align 4
  br label %143

659:                                              ; preds = %143
  %660 = load i32, i32* %23, align 4
  %661 = load i32, i32* %15, align 4
  %662 = add nsw i32 %661, %660
  store i32 %662, i32* %15, align 4
  br label %663

663:                                              ; preds = %659
  %664 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %665 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %664, i32 0, i32 0
  %666 = load i32, i32* %665, align 8
  %667 = load i32, i32* %11, align 4
  %668 = add nsw i32 %667, %666
  store i32 %668, i32* %11, align 4
  br label %128

669:                                              ; preds = %128
  %670 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %671 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %670, i32 0, i32 1
  %672 = call i32 @align_get_bits(i32* %671)
  store i32 0, i32* %5, align 4
  br label %673

673:                                              ; preds = %669, %619, %287, %187, %171, %108
  %674 = load i32, i32* %5, align 4
  ret i32 %674
}

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i8* @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i8* @IVI_TOSIGNED(i32) #1

declare dso_local i8* @ivi_scale_mv(i32, i32) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @align_get_bits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
