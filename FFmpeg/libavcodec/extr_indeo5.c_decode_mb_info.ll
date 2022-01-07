; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_indeo5.c_decode_mb_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_indeo5.c_decode_mb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, i32, %struct.TYPE_13__, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i64, i64 }
%struct.TYPE_16__ = type { i32, i32, i64, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Allocated tile size %d mismatches parameters %d\0A\00", align 1
@FRAMETYPE_INTRA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Empty macroblock in an INTRA picture!\0A\00", align 1
@IVI_VLC_BITS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"motion vector %d %d outside reference\0A\00", align 1
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
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca %struct.TYPE_17__*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i32* %3, i32** %9, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  store i32 %29, i32* %22, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 6
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %20, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %21, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  store i32 %46, i32* %15, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %48 = icmp ne %struct.TYPE_17__* %47, null
  br i1 %48, label %66, label %49

49:                                               ; preds = %4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 9
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59, %54
  %65 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %65, i32* %5, align 4
  br label %583

66:                                               ; preds = %59, %4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @IVI_MBs_PER_TILE(i32 %72, i32 %75, i32 %78)
  %80 = sext i32 %79 to i64
  %81 = icmp ne i64 %69, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %66
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* @AV_LOG_ERROR, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @IVI_MBs_PER_TILE(i32 %90, i32 %93, i32 %96)
  %98 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %83, i32 %84, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %87, i32 %97)
  %99 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %99, i32* %5, align 4
  br label %583

100:                                              ; preds = %66
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = ashr i32 %109, 3
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = ashr i32 %113, 3
  %115 = sub nsw i32 %110, %114
  store i32 %115, i32* %17, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %573, %100
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %123, %126
  %128 = icmp slt i32 %120, %127
  br i1 %128, label %129, label %579

129:                                              ; preds = %119
  %130 = load i32, i32* %15, align 4
  store i32 %130, i32* %16, align 4
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %563, %129
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %138, %141
  %143 = icmp slt i32 %135, %142
  br i1 %143, label %144, label %569

144:                                              ; preds = %134
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %16, align 4
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 2
  %156 = call i32 @get_bits1(i32* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %257

158:                                              ; preds = %144
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @FRAMETYPE_INTRA, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %158
  %165 = load i32*, i32** %9, align 8
  %166 = load i32, i32* @AV_LOG_ERROR, align 4
  %167 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %165, i32 %166, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %168 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %168, i32* %5, align 4
  br label %583

169:                                              ; preds = %158
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 3
  store i32 1, i32* %171, align 4
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 7
  store i64 0, i64* %173, align 8
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 4
  store i32 0, i32* %175, align 8
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %212, label %180

180:                                              ; preds = %169
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %212, label %185

185:                                              ; preds = %180
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %212

191:                                              ; preds = %185
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @IVI_VLC_BITS, align 4
  %201 = call i8* @get_vlc2(i32* %193, i32 %199, i32 %200, i32 1)
  %202 = ptrtoint i8* %201 to i32
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 4
  store i32 %202, i32* %204, align 8
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = call i8* @IVI_TOSIGNED(i32 %207)
  %209 = ptrtoint i8* %208 to i32
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 4
  store i32 %209, i32* %211, align 8
  br label %212

212:                                              ; preds = %191, %185, %180, %169
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 6
  store i32 0, i32* %214, align 8
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 5
  store i32 0, i32* %216, align 4
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 5
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %256

221:                                              ; preds = %212
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %223 = icmp ne %struct.TYPE_17__* %222, null
  br i1 %223, label %224, label %256

224:                                              ; preds = %221
  %225 = load i32, i32* %17, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %244

227:                                              ; preds = %224
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %17, align 4
  %232 = call i8* @ivi_scale_mv(i32 %230, i32 %231)
  %233 = ptrtoint i8* %232 to i32
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 5
  store i32 %233, i32* %235, align 4
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %17, align 4
  %240 = call i8* @ivi_scale_mv(i32 %238, i32 %239)
  %241 = ptrtoint i8* %240 to i32
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 6
  store i32 %241, i32* %243, align 8
  br label %255

244:                                              ; preds = %224
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 5
  store i32 %247, i32* %249, align 4
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 6
  store i32 %252, i32* %254, align 8
  br label %255

255:                                              ; preds = %244, %227
  br label %256

256:                                              ; preds = %255, %221, %212
  br label %461

257:                                              ; preds = %144
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 5
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %271

262:                                              ; preds = %257
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %264 = icmp ne %struct.TYPE_17__* %263, null
  br i1 %264, label %265, label %271

265:                                              ; preds = %262
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 3
  store i32 %268, i32* %270, align 4
  br label %287

271:                                              ; preds = %262, %257
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @FRAMETYPE_INTRA, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %271
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 3
  store i32 0, i32* %279, align 4
  br label %286

280:                                              ; preds = %271
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 2
  %283 = call i32 @get_bits1(i32* %282)
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 3
  store i32 %283, i32* %285, align 4
  br label %286

286:                                              ; preds = %280, %277
  br label %287

287:                                              ; preds = %286, %265
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = icmp ne i32 %290, %293
  %295 = zext i1 %294 to i64
  %296 = select i1 %294, i32 4, i32 1
  store i32 %296, i32* %18, align 4
  %297 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 2
  %299 = load i32, i32* %18, align 4
  %300 = call i64 @get_bits(i32* %298, i32 %299)
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 7
  store i64 %300, i64* %302, align 8
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 4
  store i32 0, i32* %304, align 8
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 9
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %368

309:                                              ; preds = %287
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 8
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %324

314:                                              ; preds = %309
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %316 = icmp ne %struct.TYPE_17__* %315, null
  br i1 %316, label %317, label %323

317:                                              ; preds = %314
  %318 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i32 0, i32 4
  store i32 %320, i32* %322, align 8
  br label %323

323:                                              ; preds = %317, %314
  br label %367

324:                                              ; preds = %309
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 7
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %345, label %329

329:                                              ; preds = %324
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %330, i32 0, i32 7
  %332 = load i32, i32* %331, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %366, label %334

334:                                              ; preds = %329
  %335 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %335, i32 0, i32 6
  %337 = load i32, i32* %336, align 8
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %366, label %339

339:                                              ; preds = %334
  %340 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 8
  %343 = and i32 %342, 8
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %366

345:                                              ; preds = %339, %324
  %346 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %347 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %346, i32 0, i32 2
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 3
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 0
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @IVI_VLC_BITS, align 4
  %355 = call i8* @get_vlc2(i32* %347, i32 %353, i32 %354, i32 1)
  %356 = ptrtoint i8* %355 to i32
  %357 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %358 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %357, i32 0, i32 4
  store i32 %356, i32* %358, align 8
  %359 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %360 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %359, i32 0, i32 4
  %361 = load i32, i32* %360, align 8
  %362 = call i8* @IVI_TOSIGNED(i32 %361)
  %363 = ptrtoint i8* %362 to i32
  %364 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %365 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %364, i32 0, i32 4
  store i32 %363, i32* %365, align 8
  br label %366

366:                                              ; preds = %345, %339, %334, %329
  br label %367

367:                                              ; preds = %366, %323
  br label %368

368:                                              ; preds = %367, %287
  %369 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %370 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %378, label %373

373:                                              ; preds = %368
  %374 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %375 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %374, i32 0, i32 6
  store i32 0, i32* %375, align 8
  %376 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %377 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %376, i32 0, i32 5
  store i32 0, i32* %377, align 4
  br label %460

378:                                              ; preds = %368
  %379 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %379, i32 0, i32 5
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %418

383:                                              ; preds = %378
  %384 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %385 = icmp ne %struct.TYPE_17__* %384, null
  br i1 %385, label %386, label %418

386:                                              ; preds = %383
  %387 = load i32, i32* %17, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %406

389:                                              ; preds = %386
  %390 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %391 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %390, i32 0, i32 5
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* %17, align 4
  %394 = call i8* @ivi_scale_mv(i32 %392, i32 %393)
  %395 = ptrtoint i8* %394 to i32
  %396 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %397 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %396, i32 0, i32 5
  store i32 %395, i32* %397, align 4
  %398 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %399 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %398, i32 0, i32 6
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* %17, align 4
  %402 = call i8* @ivi_scale_mv(i32 %400, i32 %401)
  %403 = ptrtoint i8* %402 to i32
  %404 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %405 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %404, i32 0, i32 6
  store i32 %403, i32* %405, align 8
  br label %417

406:                                              ; preds = %386
  %407 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %408 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %407, i32 0, i32 5
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %411 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %410, i32 0, i32 5
  store i32 %409, i32* %411, align 4
  %412 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %413 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %412, i32 0, i32 6
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %416 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %415, i32 0, i32 6
  store i32 %414, i32* %416, align 8
  br label %417

417:                                              ; preds = %406, %389
  br label %459

418:                                              ; preds = %383, %378
  %419 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %420 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %419, i32 0, i32 2
  %421 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %422 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %421, i32 0, i32 3
  %423 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %422, i32 0, i32 0
  %424 = load %struct.TYPE_12__*, %struct.TYPE_12__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* @IVI_VLC_BITS, align 4
  %428 = call i8* @get_vlc2(i32* %420, i32 %426, i32 %427, i32 1)
  %429 = ptrtoint i8* %428 to i32
  store i32 %429, i32* %14, align 4
  %430 = load i32, i32* %14, align 4
  %431 = call i8* @IVI_TOSIGNED(i32 %430)
  %432 = load i32, i32* %13, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr i8, i8* %431, i64 %433
  %435 = ptrtoint i8* %434 to i32
  store i32 %435, i32* %13, align 4
  %436 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %437 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %436, i32 0, i32 2
  %438 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %439 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %438, i32 0, i32 3
  %440 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %439, i32 0, i32 0
  %441 = load %struct.TYPE_12__*, %struct.TYPE_12__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = load i32, i32* @IVI_VLC_BITS, align 4
  %445 = call i8* @get_vlc2(i32* %437, i32 %443, i32 %444, i32 1)
  %446 = ptrtoint i8* %445 to i32
  store i32 %446, i32* %14, align 4
  %447 = load i32, i32* %14, align 4
  %448 = call i8* @IVI_TOSIGNED(i32 %447)
  %449 = load i32, i32* %12, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr i8, i8* %448, i64 %450
  %452 = ptrtoint i8* %451 to i32
  store i32 %452, i32* %12, align 4
  %453 = load i32, i32* %12, align 4
  %454 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %455 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %454, i32 0, i32 5
  store i32 %453, i32* %455, align 4
  %456 = load i32, i32* %13, align 4
  %457 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %458 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %457, i32 0, i32 6
  store i32 %456, i32* %458, align 8
  br label %459

459:                                              ; preds = %418, %417
  br label %460

460:                                              ; preds = %459, %373
  br label %461

461:                                              ; preds = %460, %256
  %462 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %463 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %462, i32 0, i32 3
  %464 = load i32, i32* %463, align 4
  store i32 %464, i32* %19, align 4
  %465 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %466 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %465, i32 0, i32 3
  %467 = load i32, i32* %466, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %549

469:                                              ; preds = %461
  %470 = load i32, i32* %10, align 4
  %471 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %472 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %471, i32 0, i32 5
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* %19, align 4
  %475 = ashr i32 %473, %474
  %476 = add nsw i32 %470, %475
  %477 = load i32, i32* %11, align 4
  %478 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %479 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %478, i32 0, i32 6
  %480 = load i32, i32* %479, align 8
  %481 = load i32, i32* %19, align 4
  %482 = ashr i32 %480, %481
  %483 = add nsw i32 %477, %482
  %484 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %485 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 4
  %487 = mul nsw i32 %483, %486
  %488 = add nsw i32 %476, %487
  %489 = icmp slt i32 %488, 0
  br i1 %489, label %529, label %490

490:                                              ; preds = %469
  %491 = load i32, i32* %10, align 4
  %492 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %493 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %492, i32 0, i32 5
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* %19, align 4
  %496 = add nsw i32 %494, %495
  %497 = load i32, i32* %19, align 4
  %498 = ashr i32 %496, %497
  %499 = add nsw i32 %491, %498
  %500 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %501 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 8
  %503 = add nsw i32 %499, %502
  %504 = sub nsw i32 %503, 1
  %505 = load i32, i32* %11, align 4
  %506 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %507 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = add nsw i32 %505, %508
  %510 = sub nsw i32 %509, 1
  %511 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %512 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %511, i32 0, i32 6
  %513 = load i32, i32* %512, align 8
  %514 = load i32, i32* %19, align 4
  %515 = add nsw i32 %513, %514
  %516 = load i32, i32* %19, align 4
  %517 = ashr i32 %515, %516
  %518 = add nsw i32 %510, %517
  %519 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %520 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = mul nsw i32 %518, %521
  %523 = add nsw i32 %504, %522
  %524 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %525 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %524, i32 0, i32 4
  %526 = load i32, i32* %525, align 8
  %527 = sub nsw i32 %526, 1
  %528 = icmp sgt i32 %523, %527
  br i1 %528, label %529, label %548

529:                                              ; preds = %490, %469
  %530 = load i32*, i32** %9, align 8
  %531 = load i32, i32* @AV_LOG_ERROR, align 4
  %532 = load i32, i32* %10, align 4
  %533 = load i32, i32* %19, align 4
  %534 = mul nsw i32 %532, %533
  %535 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %536 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %535, i32 0, i32 5
  %537 = load i32, i32* %536, align 4
  %538 = add nsw i32 %534, %537
  %539 = load i32, i32* %11, align 4
  %540 = load i32, i32* %19, align 4
  %541 = mul nsw i32 %539, %540
  %542 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %543 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %542, i32 0, i32 6
  %544 = load i32, i32* %543, align 8
  %545 = add nsw i32 %541, %544
  %546 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %530, i32 %531, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %538, i32 %545)
  %547 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %547, i32* %5, align 4
  br label %583

548:                                              ; preds = %490
  br label %549

549:                                              ; preds = %548, %461
  %550 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %551 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %550, i32 1
  store %struct.TYPE_17__* %551, %struct.TYPE_17__** %20, align 8
  %552 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %553 = icmp ne %struct.TYPE_17__* %552, null
  br i1 %553, label %554, label %557

554:                                              ; preds = %549
  %555 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %556 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %555, i32 1
  store %struct.TYPE_17__* %556, %struct.TYPE_17__** %21, align 8
  br label %557

557:                                              ; preds = %554, %549
  %558 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %559 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 8
  %561 = load i32, i32* %16, align 4
  %562 = add nsw i32 %561, %560
  store i32 %562, i32* %16, align 4
  br label %563

563:                                              ; preds = %557
  %564 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %565 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %564, i32 0, i32 0
  %566 = load i32, i32* %565, align 8
  %567 = load i32, i32* %10, align 4
  %568 = add nsw i32 %567, %566
  store i32 %568, i32* %10, align 4
  br label %134

569:                                              ; preds = %134
  %570 = load i32, i32* %22, align 4
  %571 = load i32, i32* %15, align 4
  %572 = add nsw i32 %571, %570
  store i32 %572, i32* %15, align 4
  br label %573

573:                                              ; preds = %569
  %574 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %575 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 8
  %577 = load i32, i32* %11, align 4
  %578 = add nsw i32 %577, %576
  store i32 %578, i32* %11, align 4
  br label %119

579:                                              ; preds = %119
  %580 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %581 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %580, i32 0, i32 2
  %582 = call i32 @align_get_bits(i32* %581)
  store i32 0, i32* %5, align 4
  br label %583

583:                                              ; preds = %579, %529, %164, %82, %64
  %584 = load i32, i32* %5, align 4
  ret i32 %584
}

declare dso_local i32 @IVI_MBs_PER_TILE(i32, i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i8* @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i8* @IVI_TOSIGNED(i32) #1

declare dso_local i8* @ivi_scale_mv(i32, i32) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @align_get_bits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
