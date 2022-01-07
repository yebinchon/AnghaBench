; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dec.c_get_cox.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dec.c_get_cox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i32, i32, i32, i32, i32, i32*, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Insufficient space for COX\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@JPEG2000_MAX_RESLEVELS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"nreslevels %d is invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"reduction_factor too large for this bitstream, max is %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"cblk size invalid\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"extra cblk styles %X\0A\00", align 1
@JPEG2000_CBLK_BYPASS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Selective arithmetic coding bypass\0A\00", align 1
@AV_CODEC_FLAG_BITEXACT = common dso_local global i32 0, align 4
@FF_DWT97 = common dso_local global i32 0, align 4
@FF_DWT97_INT = common dso_local global i32 0, align 4
@FF_DWT53 = common dso_local global i32 0, align 4
@FF_CODEC_PROPERTY_LOSSLESS = common dso_local global i32 0, align 4
@JPEG2000_CSTY_PREC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"PPx %d PPy %d invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_7__*)* @get_cox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cox(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = call i32 @bytestream2_get_bytes_left(i32* %9)
  %11 = icmp slt i32 %10, 5
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = load i32, i32* @AV_LOG_ERROR, align 4
  %17 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %15, i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %18, i32* %3, align 4
  br label %295

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = call i32 @bytestream2_get_byteu(i32* %21)
  %23 = add nsw i32 %22, 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @JPEG2000_MAX_RESLEVELS, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %19
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i32, i32* @AV_LOG_ERROR, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %35, i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %41, i32* %3, align 4
  br label %295

42:                                               ; preds = %19
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sle i64 %46, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %42
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  %60 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %54, i32 %55, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* @EINVAL, align 4
  %69 = call i32 @AVERROR(i32 %68)
  store i32 %69, i32* %3, align 4
  br label %295

70:                                               ; preds = %42
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %74, %77
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = call i32 @bytestream2_get_byteu(i32* %82)
  %84 = and i32 %83, 15
  %85 = add nsw i32 %84, 2
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = call i32 @bytestream2_get_byteu(i32* %89)
  %91 = and i32 %90, 15
  %92 = add nsw i32 %91, 2
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp sgt i32 %97, 10
  br i1 %98, label %113, label %99

99:                                               ; preds = %70
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %102, 10
  br i1 %103, label %113, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %107, %110
  %112 = icmp sgt i32 %111, 12
  br i1 %112, label %113, label %120

113:                                              ; preds = %104, %99, %70
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i32, i32* @AV_LOG_ERROR, align 4
  %118 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %116, i32 %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %119, i32* %3, align 4
  br label %295

120:                                              ; preds = %104
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = call i32 @bytestream2_get_byteu(i32* %122)
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %120
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = load i32, i32* @AV_LOG_WARNING, align 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %133, i32 %134, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @JPEG2000_CBLK_BYPASS, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %130
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = load i32, i32* @AV_LOG_WARNING, align 4
  %150 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %148, i32 %149, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %151

151:                                              ; preds = %145, %130
  br label %152

152:                                              ; preds = %151, %120
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  %155 = call i32 @bytestream2_get_byteu(i32* %154)
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 5
  store i32 %155, i32* %157, align 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @AV_CODEC_FLAG_BITEXACT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %152
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @FF_DWT97, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %166
  %173 = load i32, i32* @FF_DWT97_INT, align 4
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 5
  store i32 %173, i32* %175, align 4
  br label %191

176:                                              ; preds = %166, %152
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @FF_DWT53, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %176
  %183 = load i32, i32* @FF_CODEC_PROPERTY_LOSSLESS, align 4
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %183
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %182, %176
  br label %191

191:                                              ; preds = %190, %172
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @JPEG2000_CSTY_PREC, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %285

198:                                              ; preds = %191
  store i32 0, i32* %7, align 4
  br label %199

199:                                              ; preds = %281, %198
  %200 = load i32, i32* %7, align 4
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %205, label %284

205:                                              ; preds = %199
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 2
  %208 = call i32 @bytestream2_get_byte(i32* %207)
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* %6, align 4
  %210 = and i32 %209, 15
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 7
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %210, i32* %216, align 4
  %217 = load i32, i32* %6, align 4
  %218 = ashr i32 %217, 4
  %219 = and i32 %218, 15
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 8
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %219, i32* %225, align 4
  %226 = load i32, i32* %7, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %280

228:                                              ; preds = %205
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 7
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %7, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %246, label %237

237:                                              ; preds = %228
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 8
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %279

246:                                              ; preds = %237, %228
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %248, align 8
  %250 = load i32, i32* @AV_LOG_ERROR, align 4
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 7
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %7, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 8
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %7, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %249, i32 %250, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %257, i32 %264)
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 8
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %7, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  store i32 1, i32* %271, align 4
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 7
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %7, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  store i32 1, i32* %277, align 4
  %278 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %278, i32* %3, align 4
  br label %295

279:                                              ; preds = %237
  br label %280

280:                                              ; preds = %279, %205
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %7, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %7, align 4
  br label %199

284:                                              ; preds = %199
  br label %294

285:                                              ; preds = %191
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 7
  %288 = load i32*, i32** %287, align 8
  %289 = call i32 @memset(i32* %288, i32 15, i32 8)
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 8
  %292 = load i32*, i32** %291, align 8
  %293 = call i32 @memset(i32* %292, i32 15, i32 8)
  br label %294

294:                                              ; preds = %285, %284
  store i32 0, i32* %3, align 4
  br label %295

295:                                              ; preds = %294, %246, %113, %51, %32, %12
  %296 = load i32, i32* %3, align 4
  ret i32 %296
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, ...) #1

declare dso_local i32 @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
