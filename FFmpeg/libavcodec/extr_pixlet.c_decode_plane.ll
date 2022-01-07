; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pixlet.c_decode_plane.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pixlet.c_decode_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64***, i32, i32, %struct.TYPE_14__**, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i32*, i64* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@H = common dso_local global i64 0, align 8
@V = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"error in lowpass coefficients for plane %d, top row\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"error in lowpass coefficients for plane %d, left column\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"error in lowpass coefficients for plane %d, rest\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"no bytes left\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32, %struct.TYPE_16__*, %struct.TYPE_17__*)* @decode_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_plane(%struct.TYPE_18__* %0, i32 %1, %struct.TYPE_16__* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %10, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 0
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %12, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %14, align 4
  br label %36

36:                                               ; preds = %88, %4
  %37 = load i32, i32* %14, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %91

39:                                               ; preds = %36
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 6
  %42 = call i32 @bytestream2_get_be32(i32* %41)
  %43 = call i8* @sign_extend(i32 %42, i32 32)
  %44 = ptrtoint i8* %43 to i64
  store i64 %44, i64* %16, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 6
  %47 = call i32 @bytestream2_get_be32(i32* %46)
  %48 = call i8* @sign_extend(i32 %47, i32 32)
  %49 = ptrtoint i8* %48 to i64
  store i64 %49, i64* %17, align 8
  %50 = load i64, i64* %16, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load i64, i64* %17, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52, %39
  %56 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %56, i32* %5, align 4
  br label %333

57:                                               ; preds = %52
  %58 = load i64, i64* %16, align 8
  %59 = udiv i64 4294967296000000, %58
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = load i64***, i64**** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64**, i64*** %62, i64 %64
  %66 = load i64**, i64*** %65, align 8
  %67 = load i64, i64* @H, align 8
  %68 = getelementptr inbounds i64*, i64** %66, i64 %67
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 %59, i64* %72, align 8
  %73 = load i64, i64* %17, align 8
  %74 = udiv i64 4294967296000000, %73
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i64***, i64**** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64**, i64*** %77, i64 %79
  %81 = load i64**, i64*** %80, align 8
  %82 = load i64, i64* @V, align 8
  %83 = getelementptr inbounds i64*, i64** %81, i64 %82
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  store i64 %74, i64* %87, align 8
  br label %88

88:                                               ; preds = %57
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %14, align 4
  br label %36

91:                                               ; preds = %36
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 6
  %94 = call i32 @bytestream2_skip(i32* %93, i32 4)
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i8**
  store i8** %102, i8*** %13, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 6
  %105 = call i32 @bytestream2_get_be16(i32* %104)
  %106 = call i8* @sign_extend(i32 %105, i32 16)
  %107 = load i8**, i8*** %13, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  store i8* %106, i8** %108, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 7
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 6
  %116 = call i64 @bytestream2_tell(i32* %115)
  %117 = add nsw i64 %113, %116
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 6
  %120 = call i64 @bytestream2_get_bytes_left(i32* %119)
  %121 = call i32 @init_get_bits8(i32* %110, i64 %117, i64 %120)
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %91
  %125 = load i32, i32* %15, align 4
  store i32 %125, i32* %5, align 4
  br label %333

126:                                              ; preds = %91
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %128 = load i8**, i8*** %13, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 1
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 4
  %132 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %132, i64 %134
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %139, 1
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 4
  %143 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %143, i64 %145
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i64 0
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 %150, 1
  %152 = call i32 @read_low_coeffs(%struct.TYPE_18__* %127, i8** %129, i32 %140, i32 %151, i32 0)
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %126
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %157 = load i32, i32* @AV_LOG_ERROR, align 4
  %158 = load i32, i32* %7, align 4
  %159 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %156, i32 %157, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %15, align 4
  store i32 %160, i32* %5, align 4
  br label %333

161:                                              ; preds = %126
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %163 = load i8**, i8*** %13, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 4
  %169 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %169, i64 %171
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %176, 1
  %178 = load i32, i32* %11, align 4
  %179 = call i32 @read_low_coeffs(%struct.TYPE_18__* %162, i8** %166, i32 %177, i32 1, i32 %178)
  store i32 %179, i32* %15, align 4
  %180 = load i32, i32* %15, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %161
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %184 = load i32, i32* @AV_LOG_ERROR, align 4
  %185 = load i32, i32* %7, align 4
  %186 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %183, i32 %184, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* %15, align 4
  store i32 %187, i32* %5, align 4
  br label %333

188:                                              ; preds = %161
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %190 = load i8**, i8*** %13, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %190, i64 %192
  %194 = getelementptr inbounds i8*, i8** %193, i64 1
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 4
  %197 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %197, i64 %199
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i64 0
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 %204, 1
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 4
  %208 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %207, align 8
  %209 = load i32, i32* %7, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %208, i64 %210
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = sub nsw i32 %215, 1
  %217 = mul nsw i32 %205, %216
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 4
  %220 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %219, align 8
  %221 = load i32, i32* %7, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %220, i64 %222
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i64 0
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = sub nsw i32 %227, 1
  %229 = load i32, i32* %11, align 4
  %230 = call i32 @read_low_coeffs(%struct.TYPE_18__* %189, i8** %194, i32 %217, i32 %228, i32 %229)
  store i32 %230, i32* %15, align 4
  %231 = load i32, i32* %15, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %188
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %235 = load i32, i32* @AV_LOG_ERROR, align 4
  %236 = load i32, i32* %7, align 4
  %237 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %234, i32 %235, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %236)
  %238 = load i32, i32* %15, align 4
  store i32 %238, i32* %5, align 4
  br label %333

239:                                              ; preds = %188
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 6
  %242 = load i32, i32* %15, align 4
  %243 = call i32 @bytestream2_skip(i32* %241, i32 %242)
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 6
  %246 = call i64 @bytestream2_get_bytes_left(i32* %245)
  %247 = icmp sle i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %239
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %250 = load i32, i32* @AV_LOG_ERROR, align 4
  %251 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %249, i32 %250, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %252 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %252, i32* %5, align 4
  br label %333

253:                                              ; preds = %239
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i32, i32* %7, align 4
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %260 = call i32 @read_highpass(%struct.TYPE_18__* %254, i64 %257, i32 %258, %struct.TYPE_17__* %259)
  store i32 %260, i32* %15, align 4
  %261 = load i32, i32* %15, align 4
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %253
  %264 = load i32, i32* %15, align 4
  store i32 %264, i32* %5, align 4
  br label %333

265:                                              ; preds = %253
  %266 = load i8**, i8*** %13, align 8
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 4
  %272 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %271, align 8
  %273 = load i32, i32* %7, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %272, i64 %274
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i64 0
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 4
  %282 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %281, align 8
  %283 = load i32, i32* %7, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %282, i64 %284
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i64 0
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %11, align 4
  %291 = call i32 @lowpass_prediction(i8** %266, i32 %269, i32 %279, i32 %289, i32 %290)
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 1
  %295 = load i64*, i64** %294, align 8
  %296 = load i32, i32* %7, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i64, i64* %295, i64 %297
  %299 = load i64, i64* %298, align 8
  %300 = inttoptr i64 %299 to i8**
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* %12, align 4
  %305 = lshr i32 %303, %304
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %12, align 4
  %310 = lshr i32 %308, %309
  %311 = load i32, i32* %11, align 4
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 1
  %314 = load i64***, i64**** %313, align 8
  %315 = load i32, i32* %7, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i64**, i64*** %314, i64 %316
  %318 = load i64**, i64*** %317, align 8
  %319 = load i64, i64* @H, align 8
  %320 = getelementptr inbounds i64*, i64** %318, i64 %319
  %321 = load i64*, i64** %320, align 8
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 1
  %324 = load i64***, i64**** %323, align 8
  %325 = load i32, i32* %7, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i64**, i64*** %324, i64 %326
  %328 = load i64**, i64*** %327, align 8
  %329 = load i64, i64* @V, align 8
  %330 = getelementptr inbounds i64*, i64** %328, i64 %329
  %331 = load i64*, i64** %330, align 8
  %332 = call i32 @reconstruction(%struct.TYPE_18__* %292, i8** %300, i32 %305, i32 %310, i32 %311, i64* %321, i64* %331)
  store i32 0, i32* %5, align 4
  br label %333

333:                                              ; preds = %265, %263, %248, %233, %182, %155, %124, %55
  %334 = load i32, i32* %5, align 4
  ret i32 %334
}

declare dso_local i8* @sign_extend(i32, i32) #1

declare dso_local i32 @bytestream2_get_be32(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_be16(i32*) #1

declare dso_local i32 @init_get_bits8(i32*, i64, i64) #1

declare dso_local i64 @bytestream2_tell(i32*) #1

declare dso_local i64 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @read_low_coeffs(%struct.TYPE_18__*, i8**, i32, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*, ...) #1

declare dso_local i32 @read_highpass(%struct.TYPE_18__*, i64, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @lowpass_prediction(i8**, i32, i32, i32, i32) #1

declare dso_local i32 @reconstruction(%struct.TYPE_18__*, i8**, i32, i32, i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
