; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_cdrom_write_cue.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_cdrom_write_cue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8, i8, i8, i8, i32, i32, i32, i32 }

@CDROM_CUE_TRACK_BYTES = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [11 x i8] c"MODE1/2352\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"AUDIO\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"MODE2/2352\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"FILE \22cdrom://drive%c-track%02d.bin\22 BINARY\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"  TRACK %02d %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"    INDEX 00 00:00:00\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"    INDEX 01 %02u:%02u:%02u\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"    INDEX 01 00:00:00\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdrom_write_cue(i32* %0, i8** %1, i64* %2, i8 signext %3, i8* %4, %struct.TYPE_6__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca [2352 x i8], align 16
  %15 = alloca i16, align 2
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  %30 = alloca i8, align 1
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i8, align 1
  %36 = alloca i8, align 1
  %37 = alloca i8, align 1
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i64* %2, i64** %10, align 8
  store i8 %3, i8* %11, align 1
  store i8* %4, i8** %12, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %13, align 8
  %38 = bitcast [2352 x i8]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %38, i8 0, i64 2352, i1 false)
  store i16 0, i16* %15, align 2
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %39 = load i8**, i8*** %9, align 8
  %40 = icmp ne i8** %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %6
  %42 = load i64*, i64** %10, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i8*, i8** %12, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %49 = icmp ne %struct.TYPE_6__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47, %44, %41, %6
  store i32 1, i32* %7, align 4
  br label %458

51:                                               ; preds = %47
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @cdrom_set_read_speed(i32* %52, i32 -1)
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds [2352 x i8], [2352 x i8]* %14, i64 0, i64 0
  %56 = call i32 @cdrom_read_subq(i32* %54, i8* %55, i32 2352)
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %18, align 4
  store i32 %60, i32* %7, align 4
  br label %458

61:                                               ; preds = %51
  %62 = getelementptr inbounds [2352 x i8], [2352 x i8]* %14, i64 0, i64 0
  %63 = load i8, i8* %62, align 16
  %64 = zext i8 %63 to i32
  %65 = shl i32 %64, 8
  %66 = getelementptr inbounds [2352 x i8], [2352 x i8]* %14, i64 0, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %65, %68
  %70 = trunc i32 %69 to i16
  store i16 %70, i16* %15, align 2
  store i32 0, i32* %19, align 4
  br label %71

71:                                               ; preds = %126, %61
  %72 = load i32, i32* %19, align 4
  %73 = load i16, i16* %15, align 2
  %74 = zext i16 %73 to i32
  %75 = sub nsw i32 %74, 2
  %76 = sdiv i32 %75, 11
  %77 = icmp slt i32 %72, %76
  br i1 %77, label %78, label %129

78:                                               ; preds = %71
  %79 = load i32, i32* %19, align 4
  %80 = mul nsw i32 %79, 11
  %81 = add nsw i32 4, %80
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [2352 x i8], [2352 x i8]* %14, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = ashr i32 %86, 4
  %88 = and i32 %87, 15
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %20, align 1
  %90 = load i32, i32* %19, align 4
  %91 = mul nsw i32 %90, 11
  %92 = add nsw i32 4, %91
  %93 = add nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [2352 x i8], [2352 x i8]* %14, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1
  store i8 %96, i8* %21, align 1
  %97 = load i32, i32* %19, align 4
  %98 = mul nsw i32 %97, 11
  %99 = add nsw i32 4, %98
  %100 = add nsw i32 %99, 3
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [2352 x i8], [2352 x i8]* %14, i64 0, i64 %101
  %103 = load i8, i8* %102, align 1
  store i8 %103, i8* %22, align 1
  %104 = load i32, i32* %19, align 4
  %105 = mul nsw i32 %104, 11
  %106 = add nsw i32 4, %105
  %107 = add nsw i32 %106, 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [2352 x i8], [2352 x i8]* %14, i64 0, i64 %108
  %110 = load i8, i8* %109, align 1
  store i8 %110, i8* %23, align 1
  %111 = load i8, i8* %20, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %125

114:                                              ; preds = %78
  %115 = load i8, i8* %21, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = load i8, i8* %22, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %120, 161
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i8, i8* %23, align 1
  %124 = load i8*, i8** %12, align 8
  store i8 %123, i8* %124, align 1
  br label %129

125:                                              ; preds = %118, %114, %78
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %19, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %19, align 4
  br label %71

129:                                              ; preds = %122, %71
  %130 = load i8*, i8** %12, align 8
  %131 = load i8, i8* %130, align 1
  %132 = icmp ne i8 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load i8*, i8** %12, align 8
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp sgt i32 %136, 99
  br i1 %137, label %138, label %139

138:                                              ; preds = %133, %129
  store i32 1, i32* %7, align 4
  br label %458

139:                                              ; preds = %133
  %140 = load i8, i8* @CDROM_CUE_TRACK_BYTES, align 1
  %141 = zext i8 %140 to i32
  %142 = load i8*, i8** %12, align 8
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = mul nsw i32 %141, %144
  %146 = sext i32 %145 to i64
  store i64 %146, i64* %16, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = load i8, i8* %147, align 1
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store i8 %148, i8* %150, align 8
  %151 = load i64, i64* %16, align 8
  %152 = call i64 @calloc(i32 1, i64 %151)
  %153 = inttoptr i64 %152 to i8*
  %154 = load i8**, i8*** %9, align 8
  store i8* %153, i8** %154, align 8
  %155 = load i64, i64* %16, align 8
  %156 = load i64*, i64** %10, align 8
  store i64 %155, i64* %156, align 8
  store i32 0, i32* %19, align 4
  br label %157

157:                                              ; preds = %454, %139
  %158 = load i32, i32* %19, align 4
  %159 = load i16, i16* %15, align 2
  %160 = zext i16 %159 to i32
  %161 = sub nsw i32 %160, 2
  %162 = sdiv i32 %161, 11
  %163 = icmp slt i32 %158, %162
  br i1 %163, label %164, label %457

164:                                              ; preds = %157
  %165 = load i32, i32* %19, align 4
  %166 = mul nsw i32 %165, 11
  %167 = add nsw i32 4, %166
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [2352 x i8], [2352 x i8]* %14, i64 0, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = ashr i32 %172, 4
  %174 = and i32 %173, 15
  %175 = trunc i32 %174 to i8
  store i8 %175, i8* %24, align 1
  %176 = load i32, i32* %19, align 4
  %177 = mul nsw i32 %176, 11
  %178 = add nsw i32 4, %177
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [2352 x i8], [2352 x i8]* %14, i64 0, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = and i32 %183, 15
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %25, align 1
  %186 = load i32, i32* %19, align 4
  %187 = mul nsw i32 %186, 11
  %188 = add nsw i32 4, %187
  %189 = add nsw i32 %188, 2
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [2352 x i8], [2352 x i8]* %14, i64 0, i64 %190
  %192 = load i8, i8* %191, align 1
  store i8 %192, i8* %26, align 1
  %193 = load i32, i32* %19, align 4
  %194 = mul nsw i32 %193, 11
  %195 = add nsw i32 4, %194
  %196 = add nsw i32 %195, 3
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [2352 x i8], [2352 x i8]* %14, i64 0, i64 %197
  %199 = load i8, i8* %198, align 1
  store i8 %199, i8* %27, align 1
  %200 = load i32, i32* %19, align 4
  %201 = mul nsw i32 %200, 11
  %202 = add nsw i32 4, %201
  %203 = add nsw i32 %202, 8
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [2352 x i8], [2352 x i8]* %14, i64 0, i64 %204
  %206 = load i8, i8* %205, align 1
  store i8 %206, i8* %28, align 1
  %207 = load i32, i32* %19, align 4
  %208 = mul nsw i32 %207, 11
  %209 = add nsw i32 4, %208
  %210 = add nsw i32 %209, 9
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [2352 x i8], [2352 x i8]* %14, i64 0, i64 %211
  %213 = load i8, i8* %212, align 1
  store i8 %213, i8* %29, align 1
  %214 = load i32, i32* %19, align 4
  %215 = mul nsw i32 %214, 11
  %216 = add nsw i32 4, %215
  %217 = add nsw i32 %216, 10
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [2352 x i8], [2352 x i8]* %14, i64 0, i64 %218
  %220 = load i8, i8* %219, align 1
  store i8 %220, i8* %30, align 1
  %221 = load i8, i8* %28, align 1
  %222 = load i8, i8* %29, align 1
  %223 = load i8, i8* %30, align 1
  %224 = call i32 @cdrom_msf_to_lba(i8 zeroext %221, i8 zeroext %222, i8 zeroext %223)
  store i32 %224, i32* %31, align 4
  %225 = load i8, i8* %24, align 1
  %226 = zext i8 %225 to i32
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %228, label %453

228:                                              ; preds = %164
  %229 = load i8, i8* %26, align 1
  %230 = zext i8 %229 to i32
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %453

232:                                              ; preds = %228
  %233 = load i8, i8* %27, align 1
  %234 = zext i8 %233 to i32
  %235 = icmp sge i32 %234, 1
  br i1 %235, label %236, label %453

236:                                              ; preds = %232
  %237 = load i8, i8* %27, align 1
  %238 = zext i8 %237 to i32
  %239 = icmp sle i32 %238, 99
  br i1 %239, label %240, label %453

240:                                              ; preds = %236
  store i32 0, i32* %32, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %33, align 8
  %241 = load i8, i8* %25, align 1
  %242 = zext i8 %241 to i32
  %243 = and i32 %242, 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %251, label %245

245:                                              ; preds = %240
  %246 = load i8, i8* %25, align 1
  %247 = zext i8 %246 to i32
  %248 = and i32 %247, 5
  %249 = icmp ne i32 %248, 0
  %250 = xor i1 %249, true
  br label %251

251:                                              ; preds = %245, %240
  %252 = phi i1 [ false, %240 ], [ %250, %245 ]
  %253 = zext i1 %252 to i32
  store i32 %253, i32* %32, align 4
  %254 = load i8, i8* %27, align 1
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %256, align 8
  %258 = load i8, i8* %27, align 1
  %259 = zext i8 %258 to i32
  %260 = sub nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  store i8 %254, i8* %263, align 4
  %264 = load i8, i8* %28, align 1
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %266, align 8
  %268 = load i8, i8* %27, align 1
  %269 = zext i8 %268 to i32
  %270 = sub nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 1
  store i8 %264, i8* %273, align 1
  %274 = load i8, i8* %29, align 1
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %276, align 8
  %278 = load i8, i8* %27, align 1
  %279 = zext i8 %278 to i32
  %280 = sub nsw i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 2
  store i8 %274, i8* %283, align 2
  %284 = load i8, i8* %30, align 1
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %286, align 8
  %288 = load i8, i8* %27, align 1
  %289 = zext i8 %288 to i32
  %290 = sub nsw i32 %289, 1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 3
  store i8 %284, i8* %293, align 1
  %294 = load i32, i32* %31, align 4
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 1
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %296, align 8
  %298 = load i8, i8* %27, align 1
  %299 = zext i8 %298 to i32
  %300 = sub nsw i32 %299, 1
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 4
  store i32 %294, i32* %303, align 4
  %304 = load i32, i32* %32, align 4
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 1
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** %306, align 8
  %308 = load i8, i8* %27, align 1
  %309 = zext i8 %308 to i32
  %310 = sub nsw i32 %309, 1
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 5
  store i32 %304, i32* %313, align 4
  %314 = load i32*, i32** %8, align 8
  %315 = load i8, i8* %27, align 1
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %317 = call i32 @cdrom_read_track_info(i32* %314, i8 zeroext %315, %struct.TYPE_6__* %316)
  %318 = load i32, i32* %32, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %251
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 8
  br label %349

321:                                              ; preds = %251
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 1
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %323, align 8
  %325 = load i8, i8* %27, align 1
  %326 = zext i8 %325 to i32
  %327 = sub nsw i32 %326, 1
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 6
  %331 = load i32, i32* %330, align 4
  %332 = icmp eq i32 %331, 1
  br i1 %332, label %333, label %334

333:                                              ; preds = %321
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %33, align 8
  br label %348

334:                                              ; preds = %321
  %335 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_5__*, %struct.TYPE_5__** %336, align 8
  %338 = load i8, i8* %27, align 1
  %339 = zext i8 %338 to i32
  %340 = sub nsw i32 %339, 1
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 6
  %344 = load i32, i32* %343, align 4
  %345 = icmp eq i32 %344, 2
  br i1 %345, label %346, label %347

346:                                              ; preds = %334
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %33, align 8
  br label %347

347:                                              ; preds = %346, %334
  br label %348

348:                                              ; preds = %347, %333
  br label %349

349:                                              ; preds = %348, %320
  %350 = load i8**, i8*** %9, align 8
  %351 = load i8*, i8** %350, align 8
  %352 = load i64, i64* %17, align 8
  %353 = getelementptr inbounds i8, i8* %351, i64 %352
  %354 = load i64, i64* %16, align 8
  %355 = load i64, i64* %17, align 8
  %356 = sub i64 %354, %355
  %357 = load i8, i8* %11, align 1
  %358 = sext i8 %357 to i32
  %359 = load i8, i8* %27, align 1
  %360 = zext i8 %359 to i32
  %361 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %353, i64 %356, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %358, i32 %360)
  %362 = load i64, i64* %17, align 8
  %363 = add i64 %362, %361
  store i64 %363, i64* %17, align 8
  %364 = load i8**, i8*** %9, align 8
  %365 = load i8*, i8** %364, align 8
  %366 = load i64, i64* %17, align 8
  %367 = getelementptr inbounds i8, i8* %365, i64 %366
  %368 = load i64, i64* %16, align 8
  %369 = load i64, i64* %17, align 8
  %370 = sub i64 %368, %369
  %371 = load i8, i8* %27, align 1
  %372 = zext i8 %371 to i32
  %373 = load i8*, i8** %33, align 8
  %374 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %367, i64 %370, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %372, i8* %373)
  %375 = load i64, i64* %17, align 8
  %376 = add i64 %375, %374
  store i64 %376, i64* %17, align 8
  %377 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 1
  %379 = load %struct.TYPE_5__*, %struct.TYPE_5__** %378, align 8
  %380 = load i8, i8* %27, align 1
  %381 = zext i8 %380 to i32
  %382 = sub nsw i32 %381, 1
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %384, i32 0, i32 4
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 1
  %389 = load %struct.TYPE_5__*, %struct.TYPE_5__** %388, align 8
  %390 = load i8, i8* %27, align 1
  %391 = zext i8 %390 to i32
  %392 = sub nsw i32 %391, 1
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %389, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %394, i32 0, i32 7
  %396 = load i32, i32* %395, align 4
  %397 = sub i32 %386, %396
  store i32 %397, i32* %34, align 4
  %398 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %399 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %398, i32 0, i32 1
  %400 = load %struct.TYPE_5__*, %struct.TYPE_5__** %399, align 8
  %401 = load i8, i8* %27, align 1
  %402 = zext i8 %401 to i32
  %403 = sub nsw i32 %402, 1
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %400, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %405, i32 0, i32 5
  %407 = load i32, i32* %406, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %441

409:                                              ; preds = %349
  %410 = load i32, i32* %34, align 4
  %411 = icmp ugt i32 %410, 0
  br i1 %411, label %412, label %441

412:                                              ; preds = %409
  store i8 0, i8* %35, align 1
  store i8 0, i8* %36, align 1
  store i8 0, i8* %37, align 1
  %413 = load i32, i32* %34, align 4
  %414 = call i32 @cdrom_lba_to_msf(i32 %413, i8* %35, i8* %36, i8* %37)
  %415 = load i8**, i8*** %9, align 8
  %416 = load i8*, i8** %415, align 8
  %417 = load i64, i64* %17, align 8
  %418 = getelementptr inbounds i8, i8* %416, i64 %417
  %419 = load i64, i64* %16, align 8
  %420 = load i64, i64* %17, align 8
  %421 = sub i64 %419, %420
  %422 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %418, i64 %421, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %423 = load i64, i64* %17, align 8
  %424 = add i64 %423, %422
  store i64 %424, i64* %17, align 8
  %425 = load i8**, i8*** %9, align 8
  %426 = load i8*, i8** %425, align 8
  %427 = load i64, i64* %17, align 8
  %428 = getelementptr inbounds i8, i8* %426, i64 %427
  %429 = load i64, i64* %16, align 8
  %430 = load i64, i64* %17, align 8
  %431 = sub i64 %429, %430
  %432 = load i8, i8* %35, align 1
  %433 = zext i8 %432 to i32
  %434 = load i8, i8* %36, align 1
  %435 = zext i8 %434 to i32
  %436 = load i8, i8* %37, align 1
  %437 = zext i8 %436 to i32
  %438 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %428, i64 %431, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %433, i32 %435, i32 %437)
  %439 = load i64, i64* %17, align 8
  %440 = add i64 %439, %438
  store i64 %440, i64* %17, align 8
  br label %452

441:                                              ; preds = %409, %349
  %442 = load i8**, i8*** %9, align 8
  %443 = load i8*, i8** %442, align 8
  %444 = load i64, i64* %17, align 8
  %445 = getelementptr inbounds i8, i8* %443, i64 %444
  %446 = load i64, i64* %16, align 8
  %447 = load i64, i64* %17, align 8
  %448 = sub i64 %446, %447
  %449 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %445, i64 %448, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %450 = load i64, i64* %17, align 8
  %451 = add i64 %450, %449
  store i64 %451, i64* %17, align 8
  br label %452

452:                                              ; preds = %441, %412
  br label %453

453:                                              ; preds = %452, %236, %232, %228, %164
  br label %454

454:                                              ; preds = %453
  %455 = load i32, i32* %19, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %19, align 4
  br label %157

457:                                              ; preds = %157
  store i32 0, i32* %7, align 4
  br label %458

458:                                              ; preds = %457, %138, %59, %50
  %459 = load i32, i32* %7, align 4
  ret i32 %459
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cdrom_set_read_speed(i32*, i32) #2

declare dso_local i32 @cdrom_read_subq(i32*, i8*, i32) #2

declare dso_local i64 @calloc(i32, i64) #2

declare dso_local i32 @cdrom_msf_to_lba(i8 zeroext, i8 zeroext, i8 zeroext) #2

declare dso_local i32 @cdrom_read_track_info(i32*, i8 zeroext, %struct.TYPE_6__*) #2

declare dso_local i64 @snprintf(i8*, i64, i8*, ...) #2

declare dso_local i32 @cdrom_lba_to_msf(i32, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
