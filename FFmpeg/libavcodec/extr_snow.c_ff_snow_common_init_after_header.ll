; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow.c_ff_snow_common_init_after_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow.c_ff_snow_common_init_after_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__*, i64, i64, i32, i32, %struct.TYPE_15__*, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__*, i64, i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i32* }

@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@MB_SIZE = common dso_local global i32 0, align 4
@fail = common dso_local global i32 0, align 4
@HTAPS_MAX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"pixel format changed\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_snow_common_init_after_header(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %4, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %80, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 7
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %28 = call i32 @ff_get_buffer(%struct.TYPE_15__* %23, %struct.TYPE_16__* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %343

32:                                               ; preds = %20
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 10
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 2, %46
  %48 = add nsw i32 %47, 256
  %49 = call i32 @FFMAX(i32 %43, i32 %48)
  %50 = load i32, i32* @MB_SIZE, align 4
  %51 = mul nsw i32 7, %50
  %52 = load i32, i32* @fail, align 4
  %53 = call i32 @FF_ALLOCZ_ARRAY_OR_GOTO(%struct.TYPE_14__* %33, i32 %36, i32 %49, i32 %51, i32 %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 2, %63
  %65 = add nsw i32 %64, 256
  %66 = call i32 @FFMAX(i32 %60, i32 %65)
  %67 = load i32, i32* @MB_SIZE, align 4
  %68 = mul nsw i32 2, %67
  %69 = load i32, i32* @HTAPS_MAX, align 4
  %70 = add nsw i32 %68, %69
  %71 = sub nsw i32 %70, 1
  %72 = mul nsw i32 %66, %71
  store i32 %72, i32* %9, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @fail, align 4
  %79 = call i32 @FF_ALLOC_OR_GOTO(%struct.TYPE_14__* %73, i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %32, %1
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %92 = load i32, i32* @AV_LOG_ERROR, align 4
  %93 = call i32 @av_log(%struct.TYPE_14__* %91, i32 %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %94, i32* %2, align 4
  br label %343

95:                                               ; preds = %80
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %336, %95
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %339

102:                                              ; preds = %96
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 7
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %10, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 7
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %102
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @AV_CEIL_RSHIFT(i32 %116, i32 %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @AV_CEIL_RSHIFT(i32 %121, i32 %124)
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %115, %102
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  store i32 %127, i32* %134, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  store i32 %135, i32* %142, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %332, %126
  %148 = load i32, i32* %6, align 4
  %149 = icmp sge i32 %148, 0
  br i1 %149, label %150, label %335

150:                                              ; preds = %147
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 1, i32 0
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %322, %150
  %156 = load i32, i32* %7, align 4
  %157 = icmp slt i32 %156, 4
  br i1 %157, label %158, label %325

158:                                              ; preds = %155
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %165, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %166, i64 %168
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i64 %172
  store %struct.TYPE_12__* %173, %struct.TYPE_12__** %12, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 9
  store i64 %176, i64* %178, align 8
  %179 = load i32, i32* %6, align 4
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %6, align 4
  %194 = sub nsw i32 %192, %193
  %195 = shl i32 %189, %194
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* %7, align 4
  %200 = and i32 %199, 1
  %201 = icmp ne i32 %200, 0
  %202 = xor i1 %201, true
  %203 = zext i1 %202 to i32
  %204 = add nsw i32 %198, %203
  %205 = ashr i32 %204, 1
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 8
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* %7, align 4
  %210 = icmp sgt i32 %209, 1
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  %213 = add nsw i32 %208, %212
  %214 = ashr i32 %213, 1
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 4
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %6, align 4
  %221 = sub nsw i32 %219, %220
  %222 = shl i32 1, %221
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 4
  store i32 %222, i32* %224, align 8
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 5
  store i32 0, i32* %226, align 4
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 6
  store i32 0, i32* %228, align 8
  %229 = load i32, i32* %7, align 4
  %230 = and i32 %229, 1
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %246

232:                                              ; preds = %158
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %233, 1
  %235 = ashr i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 9
  %239 = load i64, i64* %238, align 8
  %240 = add nsw i64 %239, %236
  store i64 %240, i64* %238, align 8
  %241 = load i32, i32* %10, align 4
  %242 = add nsw i32 %241, 1
  %243 = ashr i32 %242, 1
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 5
  store i32 %243, i32* %245, align 4
  br label %246

246:                                              ; preds = %232, %158
  %247 = load i32, i32* %7, align 4
  %248 = icmp sgt i32 %247, 1
  br i1 %248, label %249, label %265

249:                                              ; preds = %246
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = ashr i32 %252, 1
  %254 = sext i32 %253 to i64
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 9
  %257 = load i64, i64* %256, align 8
  %258 = add nsw i64 %257, %254
  store i64 %258, i64* %256, align 8
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = ashr i32 %261, 1
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 6
  store i32 %262, i32* %264, align 8
  br label %265

265:                                              ; preds = %249, %246
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 4
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 9
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 3
  %274 = load i64, i64* %273, align 8
  %275 = sub nsw i64 %271, %274
  %276 = add nsw i64 %268, %275
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 10
  store i64 %276, i64* %278, align 8
  %279 = load i32, i32* %6, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %300

281:                                              ; preds = %265
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 2
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %283, align 8
  %285 = load i32, i32* %5, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 2
  %289 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %288, align 8
  %290 = load i32, i32* %6, align 4
  %291 = sub nsw i32 %290, 1
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %289, i64 %292
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %293, align 8
  %295 = load i32, i32* %7, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i64 %296
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 8
  store %struct.TYPE_12__* %297, %struct.TYPE_12__** %299, align 8
  br label %300

300:                                              ; preds = %281, %265
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 7
  %303 = call i32 @av_freep(i32* %302)
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = add nsw i32 %306, 1
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 4
  %311 = mul nsw i32 %307, %310
  %312 = add nsw i32 %311, 1
  %313 = call i32 @av_mallocz_array(i32 %312, i32 4)
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 7
  store i32 %313, i32* %315, align 4
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 7
  %318 = load i32, i32* %317, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %300
  br label %340

321:                                              ; preds = %300
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %7, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %7, align 4
  br label %155

325:                                              ; preds = %155
  %326 = load i32, i32* %10, align 4
  %327 = add nsw i32 %326, 1
  %328 = ashr i32 %327, 1
  store i32 %328, i32* %10, align 4
  %329 = load i32, i32* %11, align 4
  %330 = add nsw i32 %329, 1
  %331 = ashr i32 %330, 1
  store i32 %331, i32* %11, align 4
  br label %332

332:                                              ; preds = %325
  %333 = load i32, i32* %6, align 4
  %334 = add nsw i32 %333, -1
  store i32 %334, i32* %6, align 4
  br label %147

335:                                              ; preds = %147
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %5, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %5, align 4
  br label %96

339:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %343

340:                                              ; preds = %320
  %341 = load i32, i32* @ENOMEM, align 4
  %342 = call i32 @AVERROR(i32 %341)
  store i32 %342, i32* %2, align 4
  br label %343

343:                                              ; preds = %340, %339, %90, %30
  %344 = load i32, i32* %2, align 4
  ret i32 %344
}

declare dso_local i32 @ff_get_buffer(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @FF_ALLOCZ_ARRAY_OR_GOTO(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FF_ALLOC_OR_GOTO(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @av_mallocz_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
