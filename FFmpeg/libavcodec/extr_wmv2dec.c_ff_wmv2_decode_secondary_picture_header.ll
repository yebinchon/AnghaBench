; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2dec.c_ff_wmv2_decode_secondary_picture_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2dec.c_ff_wmv2_decode_secondary_picture_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i8*, i8*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__, i32, i32, i8*, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@FF_DEBUG_PICT_INFO = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"qscale:%d rlc:%d rl:%d dc:%d mbrl:%d j_type:%d \0A\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"rl:%d rlc:%d dc:%d mv:%d mbrl:%d qp:%d mspel:%d per_mb_abt:%d abt_type:%d cbp:%d ii:%d\0A\00", align 1
@ER_MB_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_wmv2_decode_secondary_picture_header(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = bitcast %struct.TYPE_10__* %7 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %129

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 9
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 13
  %22 = call i32 @get_bits1(i32* %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %28

25:                                               ; preds = %14
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %19
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %90, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 13
  %41 = call i32 @get_bits1(i32* %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %47

44:                                               ; preds = %33
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i32 0, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 13
  %55 = call i8* @decode012(i32* %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 19
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 13
  %60 = call i8* @decode012(i32* %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 20
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %52, %47
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 13
  %66 = call i32 @get_bits1(i32* %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 13
  %71 = call i32 @get_bits_left(i32* %70)
  %72 = sext i32 %71 to i64
  %73 = mul nsw i64 %72, 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 15
  %78 = sdiv i32 %77, 16
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 15
  %83 = sdiv i32 %82, 16
  %84 = mul nsw i32 %78, %83
  %85 = sext i32 %84 to i64
  %86 = icmp slt i64 %73, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %63
  %88 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %88, i32* %2, align 4
  br label %345

89:                                               ; preds = %63
  br label %90

90:                                               ; preds = %89, %28
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 18
  store i32 0, i32* %92, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 5
  store i32 1, i32* %94, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 21
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @FF_DEBUG_PICT_INFO, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %90
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 21
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = load i32, i32* @AV_LOG_DEBUG, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 19
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 20
  %116 = load i8*, i8** %115, align 8
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (%struct.TYPE_11__*, i32, i8*, i32, i8*, i32, i32, i32, i32, ...) @av_log(%struct.TYPE_11__* %106, i32 %107, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %110, i8* %113, i32 %117, i32 %120, i32 %123, i32 %126)
  br label %128

128:                                              ; preds = %103, %90
  br label %287

129:                                              ; preds = %1
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  store i32 0, i32* %131, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %133 = call i32 @parse_mb_skip(%struct.TYPE_9__* %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %2, align 4
  br label %345

138:                                              ; preds = %129
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 13
  %141 = call i8* @decode012(i32* %140)
  %142 = ptrtoint i8* %141 to i32
  store i32 %142, i32* %5, align 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @wmv2_get_cbp_table_index(%struct.TYPE_10__* %143, i32 %144)
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 8
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %138
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 13
  %155 = call i32 @get_bits1(i32* %154)
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 7
  store i32 %155, i32* %157, align 8
  br label %161

158:                                              ; preds = %138
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 7
  store i32 0, i32* %160, align 8
  br label %161

161:                                              ; preds = %158, %152
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 7
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %184

166:                                              ; preds = %161
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 13
  %169 = call i32 @get_bits1(i32* %168)
  %170 = xor i32 %169, 1
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %166
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 13
  %180 = call i8* @decode012(i32* %179)
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 5
  store i8* %180, i8** %182, align 8
  br label %183

183:                                              ; preds = %177, %166
  br label %184

184:                                              ; preds = %183, %161
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 13
  %192 = call i32 @get_bits1(i32* %191)
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 8
  br label %198

195:                                              ; preds = %184
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 1
  store i32 0, i32* %197, align 8
  br label %198

198:                                              ; preds = %195, %189
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %214, label %203

203:                                              ; preds = %198
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 13
  %206 = call i8* @decode012(i32* %205)
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 20
  store i8* %206, i8** %208, align 8
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 20
  %211 = load i8*, i8** %210, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 19
  store i8* %211, i8** %213, align 8
  br label %214

214:                                              ; preds = %203, %198
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 13
  %217 = call i32 @get_bits_left(i32* %216)
  %218 = icmp slt i32 %217, 2
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %220, i32* %2, align 4
  br label %345

221:                                              ; preds = %214
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 13
  %224 = call i32 @get_bits1(i32* %223)
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 2
  store i32 %224, i32* %226, align 4
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 13
  %229 = call i32 @get_bits1(i32* %228)
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 8
  store i32 %229, i32* %231, align 4
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 18
  store i32 0, i32* %233, align 8
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 8
  %237 = xor i32 %236, 1
  store i32 %237, i32* %235, align 8
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 21
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @FF_DEBUG_PICT_INFO, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %286

246:                                              ; preds = %221
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 21
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %248, align 8
  %250 = load i32, i32* @AV_LOG_DEBUG, align 4
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 20
  %253 = load i8*, i8** %252, align 8
  %254 = ptrtoint i8* %253 to i32
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 19
  %257 = load i8*, i8** %256, align 8
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 8
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 6
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 7
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 5
  %278 = load i8*, i8** %277, align 8
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 18
  %284 = load i32, i32* %283, align 8
  %285 = call i32 (%struct.TYPE_11__*, i32, i8*, i32, i8*, i32, i32, i32, i32, ...) @av_log(%struct.TYPE_11__* %249, i32 %250, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %254, i8* %257, i32 %260, i32 %263, i32 %266, i32 %269, i32 %272, i32 %275, i8* %278, i32 %281, i32 %284)
  br label %286

286:                                              ; preds = %246, %221
  br label %287

287:                                              ; preds = %286, %128
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 17
  store i64 0, i64* %289, align 8
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 16
  store i64 0, i64* %291, align 8
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 15
  %294 = load i32, i32* %293, align 8
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %293, align 8
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %344

300:                                              ; preds = %287
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 3
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 14
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 13
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 12
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 11
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 6
  %313 = load i32, i32* %312, align 4
  %314 = mul nsw i32 2, %313
  %315 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 6
  %317 = load i32, i32* %316, align 4
  %318 = sub nsw i32 %317, 1
  %319 = or i32 %318, 1
  %320 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 10
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 9
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @ff_intrax8_decode_picture(i32* %302, i32* %304, i32* %306, i32* %308, i32* %310, i32 %314, i32 %319, i32 %322, i32 %325)
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 2
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 2
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = ashr i32 %333, 1
  %335 = sub nsw i32 %334, 1
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = ashr i32 %339, 1
  %341 = sub nsw i32 %340, 1
  %342 = load i32, i32* @ER_MB_END, align 4
  %343 = call i32 @ff_er_add_slice(i32* %329, i32 0, i32 0, i32 %335, i32 %341, i32 %342)
  store i32 1, i32* %2, align 4
  br label %345

344:                                              ; preds = %287
  store i32 0, i32* %2, align 4
  br label %345

345:                                              ; preds = %344, %300, %219, %136, %87
  %346 = load i32, i32* %2, align 4
  ret i32 %346
}

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i8* @decode012(i32*) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @parse_mb_skip(%struct.TYPE_9__*) #1

declare dso_local i32 @wmv2_get_cbp_table_index(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ff_intrax8_decode_picture(i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ff_er_add_slice(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
