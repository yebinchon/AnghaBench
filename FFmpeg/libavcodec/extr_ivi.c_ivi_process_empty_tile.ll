; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ivi.c_ivi_process_empty_tile.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ivi.c_ivi_process_empty_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i64, i32, i32*, i32*, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"Allocated tile size %d mismatches parameters %d in ivi_process_empty_tile()\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"MV out of bounds\0A\00", align 1
@ff_ivi_mc_8x8_no_delta = common dso_local global i32 0, align 4
@ff_ivi_mc_4x4_no_delta = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, %struct.TYPE_7__*, i32)* @ivi_process_empty_tile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivi_process_empty_tile(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_7__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_8__*, align 8
  %24 = alloca %struct.TYPE_8__*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32 %3, i32* %9, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 12
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 11
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %46, %41, %4
  %53 = phi i1 [ false, %41 ], [ false, %4 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %28, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %29, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %60, %63
  store i32 %64, i32* %30, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %31, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %32, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %29, align 4
  %81 = call i32 @IVI_MBs_PER_TILE(i32 %76, i32 %79, i32 %80)
  %82 = icmp ne i32 %73, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %52
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* @AV_LOG_ERROR, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %29, align 4
  %96 = call i32 @IVI_MBs_PER_TILE(i32 %91, i32 %94, i32 %95)
  %97 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %84, i32 %85, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %96)
  %98 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %98, i32* %5, align 4
  br label %483

99:                                               ; preds = %52
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %32, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %104, %107
  store i32 %108, i32* %19, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  store %struct.TYPE_8__* %111, %struct.TYPE_8__** %23, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 6
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  store %struct.TYPE_8__* %114, %struct.TYPE_8__** %24, align 8
  %115 = load i32, i32* %29, align 4
  %116 = load i32, i32* %32, align 4
  %117 = mul nsw i32 %115, %116
  store i32 %117, i32* %21, align 4
  store i32 0, i32* %12, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %314, %99
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %125, %128
  %130 = icmp slt i32 %122, %129
  br i1 %130, label %131, label %318

131:                                              ; preds = %121
  %132 = load i32, i32* %19, align 4
  store i32 %132, i32* %20, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %306, %131
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %30, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %310

140:                                              ; preds = %136
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %20, align 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 3
  store i32 1, i32* %151, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 7
  store i64 0, i64* %153, align 8
  %154 = load i32, i32* %28, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %140
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 4
  store i32 0, i32* %163, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 5
  store i32 0, i32* %165, align 4
  br label %166

166:                                              ; preds = %156, %140
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %168 = icmp ne %struct.TYPE_8__* %167, null
  br i1 %168, label %169, label %300

169:                                              ; preds = %166
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 8
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 6
  store i32 %177, i32* %179, align 8
  br label %180

180:                                              ; preds = %174, %169
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 7
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %297

185:                                              ; preds = %180
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %205

188:                                              ; preds = %185
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %9, align 4
  %193 = call i8* @ivi_scale_mv(i32 %191, i32 %192)
  %194 = ptrtoint i8* %193 to i32
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 8
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %9, align 4
  %201 = call i8* @ivi_scale_mv(i32 %199, i32 %200)
  %202 = ptrtoint i8* %201 to i32
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 5
  store i32 %202, i32* %204, align 4
  br label %216

205:                                              ; preds = %185
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 4
  store i32 %208, i32* %210, align 8
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 5
  store i32 %213, i32* %215, align 4
  br label %216

216:                                              ; preds = %205, %188
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %216
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br label %226

226:                                              ; preds = %221, %216
  %227 = phi i1 [ true, %216 ], [ %225, %221 ]
  %228 = zext i1 %227 to i32
  %229 = load i32, i32* %12, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %12, align 4
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %31, align 4
  %235 = ashr i32 %233, %234
  store i32 %235, i32* %33, align 4
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %31, align 4
  %240 = ashr i32 %238, %239
  store i32 %240, i32* %34, align 4
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* %31, align 4
  %245 = and i32 %243, %244
  store i32 %245, i32* %35, align 4
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %31, align 4
  %250 = and i32 %248, %249
  store i32 %250, i32* %36, align 4
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* %33, align 4
  %255 = add nsw i32 %253, %254
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %291, label %257

257:                                              ; preds = %226
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* %33, align 4
  %262 = add nsw i32 %260, %261
  %263 = load i32, i32* %29, align 4
  %264 = add nsw i32 %262, %263
  %265 = load i32, i32* %35, align 4
  %266 = add nsw i32 %264, %265
  %267 = load i32, i32* %32, align 4
  %268 = icmp sgt i32 %266, %267
  br i1 %268, label %291, label %269

269:                                              ; preds = %257
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %34, align 4
  %274 = add nsw i32 %272, %273
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %291, label %276

276:                                              ; preds = %269
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %34, align 4
  %281 = add nsw i32 %279, %280
  %282 = load i32, i32* %29, align 4
  %283 = add nsw i32 %281, %282
  %284 = load i32, i32* %36, align 4
  %285 = add nsw i32 %283, %284
  %286 = sext i32 %285 to i64
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 3
  %289 = load i64, i64* %288, align 8
  %290 = icmp sgt i64 %286, %289
  br i1 %290, label %291, label %296

291:                                              ; preds = %276, %269, %257, %226
  %292 = load i32*, i32** %6, align 8
  %293 = load i32, i32* @AV_LOG_ERROR, align 4
  %294 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %292, i32 %293, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %295 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %295, i32* %5, align 4
  br label %483

296:                                              ; preds = %276
  br label %297

297:                                              ; preds = %296, %180
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 1
  store %struct.TYPE_8__* %299, %struct.TYPE_8__** %24, align 8
  br label %300

300:                                              ; preds = %297, %166
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 1
  store %struct.TYPE_8__* %302, %struct.TYPE_8__** %23, align 8
  %303 = load i32, i32* %29, align 4
  %304 = load i32, i32* %20, align 4
  %305 = add nsw i32 %304, %303
  store i32 %305, i32* %20, align 4
  br label %306

306:                                              ; preds = %300
  %307 = load i32, i32* %29, align 4
  %308 = load i32, i32* %10, align 4
  %309 = add nsw i32 %308, %307
  store i32 %309, i32* %10, align 4
  br label %136

310:                                              ; preds = %136
  %311 = load i32, i32* %21, align 4
  %312 = load i32, i32* %19, align 4
  %313 = add nsw i32 %312, %311
  store i32 %313, i32* %19, align 4
  br label %314

314:                                              ; preds = %310
  %315 = load i32, i32* %29, align 4
  %316 = load i32, i32* %11, align 4
  %317 = add nsw i32 %316, %315
  store i32 %317, i32* %11, align 4
  br label %121

318:                                              ; preds = %121
  %319 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 7
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %423

323:                                              ; preds = %318
  %324 = load i32, i32* %12, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %423

326:                                              ; preds = %323
  %327 = load i32, i32* %29, align 4
  %328 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 8
  %331 = icmp ne i32 %327, %330
  %332 = zext i1 %331 to i64
  %333 = select i1 %331, i32 4, i32 1
  store i32 %333, i32* %15, align 4
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 8
  %337 = icmp eq i32 %336, 8
  br i1 %337, label %338, label %340

338:                                              ; preds = %326
  %339 = load i32, i32* @ff_ivi_mc_8x8_no_delta, align 4
  br label %342

340:                                              ; preds = %326
  %341 = load i32, i32* @ff_ivi_mc_4x4_no_delta, align 4
  br label %342

342:                                              ; preds = %340, %338
  %343 = phi i32 [ %339, %338 ], [ %341, %340 ]
  store i32 %343, i32* %27, align 4
  store i32 0, i32* %13, align 4
  %344 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 5
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %345, align 8
  store %struct.TYPE_8__* %346, %struct.TYPE_8__** %23, align 8
  br label %347

347:                                              ; preds = %417, %342
  %348 = load i32, i32* %13, align 4
  %349 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = icmp slt i32 %348, %351
  br i1 %352, label %353, label %422

353:                                              ; preds = %347
  %354 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 4
  %356 = load i32, i32* %355, align 8
  store i32 %356, i32* %16, align 4
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 5
  %359 = load i32, i32* %358, align 4
  store i32 %359, i32* %17, align 4
  %360 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %365, label %364

364:                                              ; preds = %353
  store i32 0, i32* %18, align 4
  br label %376

365:                                              ; preds = %353
  %366 = load i32, i32* %17, align 4
  %367 = and i32 %366, 1
  %368 = shl i32 %367, 1
  %369 = load i32, i32* %16, align 4
  %370 = and i32 %369, 1
  %371 = or i32 %368, %370
  store i32 %371, i32* %18, align 4
  %372 = load i32, i32* %16, align 4
  %373 = ashr i32 %372, 1
  store i32 %373, i32* %16, align 4
  %374 = load i32, i32* %17, align 4
  %375 = ashr i32 %374, 1
  store i32 %375, i32* %17, align 4
  br label %376

376:                                              ; preds = %365, %364
  store i32 0, i32* %14, align 4
  br label %377

377:                                              ; preds = %413, %376
  %378 = load i32, i32* %14, align 4
  %379 = load i32, i32* %15, align 4
  %380 = icmp slt i32 %378, %379
  br i1 %380, label %381, label %416

381:                                              ; preds = %377
  %382 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 4
  %387 = load i32, i32* %386, align 8
  %388 = load i32, i32* %14, align 4
  %389 = and i32 %388, 1
  %390 = load i32, i32* %14, align 4
  %391 = and i32 %390, 2
  %392 = icmp ne i32 %391, 0
  %393 = xor i1 %392, true
  %394 = xor i1 %393, true
  %395 = zext i1 %394 to i32
  %396 = load i32, i32* %32, align 4
  %397 = mul nsw i32 %395, %396
  %398 = add nsw i32 %389, %397
  %399 = mul nsw i32 %387, %398
  %400 = add nsw i32 %384, %399
  store i32 %400, i32* %19, align 4
  %401 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %402 = load i32, i32* %27, align 4
  %403 = load i32, i32* %19, align 4
  %404 = load i32, i32* %16, align 4
  %405 = load i32, i32* %17, align 4
  %406 = load i32, i32* %18, align 4
  %407 = call i32 @ivi_mc(%struct.TYPE_9__* %401, i32 %402, i32 0, i32 %403, i32 %404, i32 %405, i32 0, i32 0, i32 %406, i32 -1)
  store i32 %407, i32* %22, align 4
  %408 = load i32, i32* %22, align 4
  %409 = icmp slt i32 %408, 0
  br i1 %409, label %410, label %412

410:                                              ; preds = %381
  %411 = load i32, i32* %22, align 4
  store i32 %411, i32* %5, align 4
  br label %483

412:                                              ; preds = %381
  br label %413

413:                                              ; preds = %412
  %414 = load i32, i32* %14, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %14, align 4
  br label %377

416:                                              ; preds = %377
  br label %417

417:                                              ; preds = %416
  %418 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %419 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %418, i32 1
  store %struct.TYPE_8__* %419, %struct.TYPE_8__** %23, align 8
  %420 = load i32, i32* %13, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %13, align 4
  br label %347

422:                                              ; preds = %347
  br label %482

423:                                              ; preds = %323, %318
  %424 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %425 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %424, i32 0, i32 6
  %426 = load i32*, i32** %425, align 8
  %427 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %428 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %427, i32 0, i32 4
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* %32, align 4
  %431 = mul nsw i32 %429, %430
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %426, i64 %432
  %434 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %435 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %433, i64 %437
  store i32* %438, i32** %25, align 8
  %439 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %440 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %439, i32 0, i32 5
  %441 = load i32*, i32** %440, align 8
  %442 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %443 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %442, i32 0, i32 4
  %444 = load i32, i32* %443, align 8
  %445 = load i32, i32* %32, align 4
  %446 = mul nsw i32 %444, %445
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %441, i64 %447
  %449 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %450 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %448, i64 %452
  store i32* %453, i32** %26, align 8
  store i32 0, i32* %11, align 4
  br label %454

454:                                              ; preds = %478, %423
  %455 = load i32, i32* %11, align 4
  %456 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %457 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %456, i32 0, i32 3
  %458 = load i32, i32* %457, align 4
  %459 = icmp slt i32 %455, %458
  br i1 %459, label %460, label %481

460:                                              ; preds = %454
  %461 = load i32*, i32** %26, align 8
  %462 = load i32*, i32** %25, align 8
  %463 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %464 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 4
  %466 = sext i32 %465 to i64
  %467 = mul i64 %466, 4
  %468 = trunc i64 %467 to i32
  %469 = call i32 @memcpy(i32* %461, i32* %462, i32 %468)
  %470 = load i32, i32* %32, align 4
  %471 = load i32*, i32** %25, align 8
  %472 = sext i32 %470 to i64
  %473 = getelementptr inbounds i32, i32* %471, i64 %472
  store i32* %473, i32** %25, align 8
  %474 = load i32, i32* %32, align 4
  %475 = load i32*, i32** %26, align 8
  %476 = sext i32 %474 to i64
  %477 = getelementptr inbounds i32, i32* %475, i64 %476
  store i32* %477, i32** %26, align 8
  br label %478

478:                                              ; preds = %460
  %479 = load i32, i32* %11, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %11, align 4
  br label %454

481:                                              ; preds = %454
  br label %482

482:                                              ; preds = %481, %422
  store i32 0, i32* %5, align 4
  br label %483

483:                                              ; preds = %482, %410, %291, %83
  %484 = load i32, i32* %5, align 4
  ret i32 %484
}

declare dso_local i32 @IVI_MBs_PER_TILE(i32, i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i8* @ivi_scale_mv(i32, i32) #1

declare dso_local i32 @ivi_mc(%struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
