; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeglsdec.c_ff_jpegls_decode_lse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeglsdec.c_ff_jpegls_decode_lse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i64* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@FF_DEBUG_PICT_INFO = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Coding parameters maxval:%d T1:%d T2:%d T3:%d reset:%d\0A\00", align 1
@MAX_COMPONENTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"wt %d\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"LSE palette %d tid:%d wt:%d maxtab:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c">8bit palette\00", align 1
@AV_PIX_FMT_GRAY8 = common dso_local global i32 0, align 4
@AV_PIX_FMT_PAL8 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"oversize image\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"invalid id %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"ID=%i, T=%i,%i,%i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_jpegls_decode_lse(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 7
  %16 = call i32 @get_bits(i32* %15, i32 16)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 7
  %19 = call i32 @get_bits(i32* %18, i32 8)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %313 [
    i32 1, label %21
    i32 2, label %82
    i32 3, label %85
    i32 4, label %306
  ]

21:                                               ; preds = %1
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 13
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %25, i32* %2, align 4
  br label %336

26:                                               ; preds = %21
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 7
  %29 = call i32 @get_bits(i32* %28, i32 16)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 7
  %34 = call i32 @get_bits(i32* %33, i32 16)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 7
  %39 = call i32 @get_bits(i32* %38, i32 16)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 7
  %44 = call i32 @get_bits(i32* %43, i32 16)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 7
  %49 = call i32 @get_bits(i32* %48, i32 16)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 6
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @FF_DEBUG_PICT_INFO, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %26
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 6
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = load i32, i32* @AV_LOG_DEBUG, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (%struct.TYPE_9__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_9__* %63, i32 %64, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %70, i32 %73, i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %60, %26
  br label %321

82:                                               ; preds = %1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 5
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %1, %82
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 7
  %88 = call i32 @get_bits(i32* %87, i32 8)
  store i32 %88, i32* %5, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 7
  %91 = call i32 @get_bits(i32* %90, i32 8)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %92, 5
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %95, i32* %2, align 4
  br label %336

96:                                               ; preds = %85
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 1
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @MAX_COMPONENTS, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %99, %96
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 6
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 (%struct.TYPE_9__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_9__* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %109, i32* %2, align 4
  br label %336

110:                                              ; preds = %99
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  store i32 255, i32* %7, align 4
  br label %134

116:                                              ; preds = %110
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  %122 = mul nsw i32 %117, %121
  %123 = add nsw i32 5, %122
  %124 = icmp slt i32 %123, 65535
  br i1 %124, label %125, label %129

125:                                              ; preds = %116
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %7, align 4
  br label %133

129:                                              ; preds = %116
  %130 = load i32, i32* %6, align 4
  %131 = sdiv i32 65530, %130
  %132 = sub nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %129, %125
  br label %134

134:                                              ; preds = %133, %115
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 6
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @FF_DEBUG_PICT_INFO, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %134
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 6
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = load i32, i32* @AV_LOG_DEBUG, align 4
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %7, align 4
  %152 = call i32 (%struct.TYPE_9__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_9__* %146, i32 %147, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %148, i32 %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %143, %134
  %154 = load i32, i32* %7, align 4
  %155 = icmp sge i32 %154, 256
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 6
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = call i32 (%struct.TYPE_9__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_9__* %159, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %161 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %161, i32* %2, align 4
  br label %336

162:                                              ; preds = %153
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %10, align 4
  %165 = sub nsw i32 %164, 5
  %166 = load i32, i32* %6, align 4
  %167 = sdiv i32 %165, %166
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %167, %170
  %172 = call i32 @FFMIN(i32 %163, i32 %171)
  store i32 %172, i32* %7, align 4
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp sgt i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %162
  %179 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %179, i32* %2, align 4
  br label %336

180:                                              ; preds = %162
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 6
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @AV_PIX_FMT_GRAY8, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %196, label %188

188:                                              ; preds = %180
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 6
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @AV_PIX_FMT_PAL8, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %305

196:                                              ; preds = %188, %180
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @AV_PIX_FMT_GRAY8, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %212, label %204

204:                                              ; preds = %196
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 8
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @AV_PIX_FMT_PAL8, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %305

212:                                              ; preds = %204, %196
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 8
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = load i64*, i64** %216, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 1
  %219 = load i64, i64* %218, align 8
  %220 = inttoptr i64 %219 to i32*
  store i32* %220, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 6
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %250

227:                                              ; preds = %212
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 6
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp slt i32 %232, 8
  br i1 %233, label %234, label %250

234:                                              ; preds = %227
  %235 = load i32, i32* %7, align 4
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 6
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = shl i32 1, %240
  %242 = sub nsw i32 %241, 1
  %243 = call i32 @FFMIN(i32 %235, i32 %242)
  store i32 %243, i32* %7, align 4
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 6
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = sub nsw i32 8, %248
  store i32 %249, i32* %12, align 4
  br label %250

250:                                              ; preds = %234, %227, %212
  %251 = load i32, i32* @AV_PIX_FMT_PAL8, align 4
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 6
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 2
  store i32 %251, i32* %255, align 4
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 8
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 0
  store i32 %251, i32* %259, align 8
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %8, align 4
  br label %263

263:                                              ; preds = %298, %250
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* %7, align 4
  %266 = icmp sle i32 %264, %265
  br i1 %266, label %267, label %301

267:                                              ; preds = %263
  %268 = load i32, i32* %8, align 4
  %269 = load i32, i32* %12, align 4
  %270 = shl i32 %268, %269
  %271 = sext i32 %270 to i64
  store i64 %271, i64* %13, align 8
  %272 = load i32*, i32** %11, align 8
  %273 = load i64, i64* %13, align 8
  %274 = getelementptr inbounds i32, i32* %272, i64 %273
  store i32 0, i32* %274, align 4
  store i32 0, i32* %9, align 4
  br label %275

275:                                              ; preds = %294, %267
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* %6, align 4
  %278 = icmp slt i32 %276, %277
  br i1 %278, label %279, label %297

279:                                              ; preds = %275
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 7
  %282 = call i32 @get_bits(i32* %281, i32 8)
  %283 = load i32, i32* %6, align 4
  %284 = load i32, i32* %9, align 4
  %285 = sub nsw i32 %283, %284
  %286 = sub nsw i32 %285, 1
  %287 = mul nsw i32 8, %286
  %288 = shl i32 %282, %287
  %289 = load i32*, i32** %11, align 8
  %290 = load i64, i64* %13, align 8
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = or i32 %292, %288
  store i32 %293, i32* %291, align 4
  br label %294

294:                                              ; preds = %279
  %295 = load i32, i32* %9, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %9, align 4
  br label %275

297:                                              ; preds = %275
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %8, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %8, align 4
  br label %263

301:                                              ; preds = %263
  %302 = load i32, i32* %8, align 4
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 5
  store i32 %302, i32* %304, align 4
  br label %305

305:                                              ; preds = %301, %204, %188
  br label %321

306:                                              ; preds = %1
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 6
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %308, align 8
  %310 = call i32 (%struct.TYPE_9__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_9__* %309, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %311 = load i32, i32* @ENOSYS, align 4
  %312 = call i32 @AVERROR(i32 %311)
  store i32 %312, i32* %2, align 4
  br label %336

313:                                              ; preds = %1
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 6
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %315, align 8
  %317 = load i32, i32* @AV_LOG_ERROR, align 4
  %318 = load i32, i32* %4, align 4
  %319 = call i32 (%struct.TYPE_9__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_9__* %316, i32 %317, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %318)
  %320 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %320, i32* %2, align 4
  br label %336

321:                                              ; preds = %305, %81
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 6
  %324 = load %struct.TYPE_9__*, %struct.TYPE_9__** %323, align 8
  %325 = load i32, i32* %4, align 4
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @ff_dlog(%struct.TYPE_9__* %324, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %325, i32 %328, i32 %331, i32 %334)
  store i32 0, i32* %2, align 4
  br label %336

336:                                              ; preds = %321, %313, %306, %178, %156, %103, %94, %24
  %337 = load i32, i32* %2, align 4
  ret i32 %337
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, i32, ...) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_9__*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
