; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegdec.c_ff_mjpeg_decode_sos.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegdec.c_ff_mjpeg_decode_sos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_22__*, i32, i64, %struct.TYPE_19__*, %struct.TYPE_19__*, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_17__**, i32*, i32*, i32 }
%struct.TYPE_22__ = type { i64, i64, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_22__*, i64, i32)* }
%struct.TYPE_19__ = type { i64, i64, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { i64, i64, i64 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Can not process SOS before SOF, skipping\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Reference mismatching\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@MAX_COMPONENTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"decode_sos: nb_components (%d)\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"decode_sos: invalid len (%d)\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"component: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"decode_sos: index(%d) out of components\0A\00", align 1
@AV_PIX_FMT_GBR24P = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"CJPG\00", align 1
@FF_DEBUG_PICT_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [52 x i8] c"%s %s p:%d >>:%d ilv:%d bits:%d skip:%d %s comp:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"lossless\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"sequential DCT\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"PRCT\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"RCT\00", align 1
@CONFIG_JPEGLS_DECODER = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [38 x i8] c"AVRn interlaced picture marker found\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"decode_sos: ac/dc index out of range\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mjpeg_decode_sos(%struct.TYPE_20__* %0, i32* %1, i32 %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__*, align 8
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
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %9, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 30
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 8
  store i32 %30, i32* %20, align 4
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 37
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %4
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 21
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %37, align 8
  %39 = load i32, i32* @AV_LOG_WARNING, align 4
  %40 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %38, i32 %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %814

41:                                               ; preds = %4
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %43 = icmp ne %struct.TYPE_21__* %42, null
  br i1 %43, label %44, label %82

44:                                               ; preds = %41
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 25
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %47, %52
  br i1 %53, label %74, label %54

54:                                               ; preds = %44
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 25
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %57, %62
  br i1 %63, label %74, label %64

64:                                               ; preds = %54
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 25
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %67, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %64, %54, %44
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 21
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %76, align 8
  %78 = load i32, i32* @AV_LOG_ERROR, align 4
  %79 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %77, i32 %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %80, i32* %5, align 4
  br label %814

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %81, %41
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 22
  %85 = call i32 @get_bits(i32* %84, i32 16)
  store i32 %85, i32* %10, align 4
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 22
  %88 = call i32 @get_bits(i32* %87, i32 8)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %82
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @MAX_COMPONENTS, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %91, %82
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 21
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @avpriv_report_missing_feature(%struct.TYPE_22__* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %101, i32* %5, align 4
  br label %814

102:                                              ; preds = %91
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = mul nsw i32 2, %104
  %106 = add nsw i32 6, %105
  %107 = icmp ne i32 %103, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %102
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 21
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %110, align 8
  %112 = load i32, i32* @AV_LOG_ERROR, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %111, i32 %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %115, i32* %5, align 4
  br label %814

116:                                              ; preds = %102
  store i32 0, i32* %12, align 4
  br label %117

117:                                              ; preds = %393, %116
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %396

121:                                              ; preds = %117
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 22
  %124 = call i32 @get_bits(i32* %123, i32 8)
  %125 = sub nsw i32 %124, 1
  store i32 %125, i32* %18, align 4
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 21
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %127, align 8
  %129 = load i32, i32* @AV_LOG_DEBUG, align 4
  %130 = load i32, i32* %18, align 4
  %131 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %128, i32 %129, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  store i32 0, i32* %17, align 4
  br label %132

132:                                              ; preds = %150, %121
  %133 = load i32, i32* %17, align 4
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %153

138:                                              ; preds = %132
  %139 = load i32, i32* %18, align 4
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %139, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  br label %153

149:                                              ; preds = %138
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %17, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %17, align 4
  br label %132

153:                                              ; preds = %148, %132
  %154 = load i32, i32* %17, align 4
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %154, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %153
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 21
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %161, align 8
  %163 = load i32, i32* @AV_LOG_ERROR, align 4
  %164 = load i32, i32* %17, align 4
  %165 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %162, i32 %163, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %166, i32* %5, align 4
  br label %814

167:                                              ; preds = %153
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 21
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i64 @MKTAG(i8 signext 77, i8 signext 84, i8 signext 83, i8 signext 74)
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %189

175:                                              ; preds = %167
  %176 = load i32, i32* %11, align 4
  %177 = icmp eq i32 %176, 3
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 3
  br i1 %182, label %183, label %189

183:                                              ; preds = %178
  %184 = load i32, i32* %12, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i32, i32* %12, align 4
  %188 = sub nsw i32 3, %187
  store i32 %188, i32* %17, align 4
  br label %189

189:                                              ; preds = %186, %183, %178, %175, %167
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 35
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %17, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 36
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %196, i32* %202, align 4
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %17, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 4
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %17, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = mul nsw i32 %209, %216
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  store i32 %217, i32* %223, align 4
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 3
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %17, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 5
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %12, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  store i32 %230, i32* %236, align 4
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 4
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %17, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 6
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %12, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  store i32 %243, i32* %249, align 4
  %250 = load i32, i32* %11, align 4
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %255, label %252

252:                                              ; preds = %189
  %253 = load i32, i32* %11, align 4
  %254 = icmp eq i32 %253, 3
  br i1 %254, label %255, label %272

255:                                              ; preds = %252, %189
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = icmp eq i32 %258, 3
  br i1 %259, label %260, label %272

260:                                              ; preds = %255
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 21
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @AV_PIX_FMT_GBR24P, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %272

268:                                              ; preds = %260
  %269 = load i32, i32* %17, align 4
  %270 = add nsw i32 %269, 2
  %271 = srem i32 %270, 3
  store i32 %271, i32* %17, align 4
  br label %272

272:                                              ; preds = %268, %260, %255, %252
  %273 = load i32, i32* %17, align 4
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 7
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %12, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  store i32 %273, i32* %279, align 4
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 22
  %282 = call i32 @get_bits(i32* %281, i32 4)
  %283 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %283, i32 0, i32 8
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %12, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  store i32 %282, i32* %288, align 4
  %289 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %289, i32 0, i32 22
  %291 = call i32 @get_bits(i32* %290, i32 4)
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 9
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %12, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  store i32 %291, i32* %297, align 4
  %298 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %298, i32 0, i32 8
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %12, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %333, label %306

306:                                              ; preds = %272
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %307, i32 0, i32 9
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %12, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %333, label %315

315:                                              ; preds = %306
  %316 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %316, i32 0, i32 8
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %12, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = icmp sge i32 %322, 4
  br i1 %323, label %333, label %324

324:                                              ; preds = %315
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 9
  %327 = load i32*, i32** %326, align 8
  %328 = load i32, i32* %12, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = icmp sge i32 %331, 4
  br i1 %332, label %333, label %334

333:                                              ; preds = %324, %315, %306, %272
  br label %807

334:                                              ; preds = %324
  %335 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %335, i32 0, i32 34
  %337 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %337, i64 0
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %338, align 8
  %340 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %340, i32 0, i32 8
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* %12, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %391

352:                                              ; preds = %334
  %353 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %353, i32 0, i32 26
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %373

357:                                              ; preds = %352
  %358 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %358, i32 0, i32 34
  %360 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %360, i64 2
  %362 = load %struct.TYPE_17__*, %struct.TYPE_17__** %361, align 8
  %363 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %363, i32 0, i32 9
  %365 = load i32*, i32** %364, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 0
  %367 = load i32, i32* %366, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %362, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %392, label %391

373:                                              ; preds = %352
  %374 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %374, i32 0, i32 34
  %376 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %376, i64 1
  %378 = load %struct.TYPE_17__*, %struct.TYPE_17__** %377, align 8
  %379 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %380 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %379, i32 0, i32 9
  %381 = load i32*, i32** %380, align 8
  %382 = load i32, i32* %12, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %378, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %392, label %391

391:                                              ; preds = %373, %357, %334
  br label %807

392:                                              ; preds = %373, %357
  br label %393

393:                                              ; preds = %392
  %394 = load i32, i32* %12, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %12, align 4
  br label %117

396:                                              ; preds = %117
  %397 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %398 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %397, i32 0, i32 22
  %399 = call i32 @get_bits(i32* %398, i32 8)
  store i32 %399, i32* %15, align 4
  %400 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 22
  %402 = call i32 @get_bits(i32* %401, i32 8)
  store i32 %402, i32* %21, align 4
  %403 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %404 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %403, i32 0, i32 21
  %405 = load %struct.TYPE_22__*, %struct.TYPE_22__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = call i64 @AV_RL32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %409 = icmp ne i64 %407, %408
  br i1 %409, label %410, label %417

410:                                              ; preds = %396
  %411 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %411, i32 0, i32 22
  %413 = call i32 @get_bits(i32* %412, i32 4)
  store i32 %413, i32* %22, align 4
  %414 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %414, i32 0, i32 22
  %416 = call i32 @get_bits(i32* %415, i32 4)
  store i32 %416, i32* %16, align 4
  br label %418

417:                                              ; preds = %396
  store i32 0, i32* %16, align 4
  store i32 0, i32* %22, align 4
  br label %418

418:                                              ; preds = %417, %410
  %419 = load i32, i32* %11, align 4
  %420 = icmp sgt i32 %419, 1
  br i1 %420, label %421, label %458

421:                                              ; preds = %418
  %422 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %423 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %422, i32 0, i32 11
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %426 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %425, i32 0, i32 12
  %427 = load i32, i32* %426, align 8
  %428 = load i32, i32* %20, align 4
  %429 = mul nsw i32 %427, %428
  %430 = add nsw i32 %424, %429
  %431 = sub nsw i32 %430, 1
  %432 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %433 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %432, i32 0, i32 12
  %434 = load i32, i32* %433, align 8
  %435 = load i32, i32* %20, align 4
  %436 = mul nsw i32 %434, %435
  %437 = sdiv i32 %431, %436
  %438 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %439 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %438, i32 0, i32 10
  store i32 %437, i32* %439, align 8
  %440 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %441 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %440, i32 0, i32 14
  %442 = load i32, i32* %441, align 8
  %443 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %444 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %443, i32 0, i32 15
  %445 = load i32, i32* %444, align 4
  %446 = load i32, i32* %20, align 4
  %447 = mul nsw i32 %445, %446
  %448 = add nsw i32 %442, %447
  %449 = sub nsw i32 %448, 1
  %450 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %451 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %450, i32 0, i32 15
  %452 = load i32, i32* %451, align 4
  %453 = load i32, i32* %20, align 4
  %454 = mul nsw i32 %452, %453
  %455 = sdiv i32 %449, %454
  %456 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %457 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %456, i32 0, i32 13
  store i32 %455, i32* %457, align 4
  br label %523

458:                                              ; preds = %418
  %459 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %460 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %459, i32 0, i32 29
  %461 = load i64, i64* %460, align 8
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %522, label %463

463:                                              ; preds = %458
  %464 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %465 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %464, i32 0, i32 12
  %466 = load i32, i32* %465, align 8
  %467 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %468 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %467, i32 0, i32 5
  %469 = load i32*, i32** %468, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 0
  %471 = load i32, i32* %470, align 4
  %472 = sdiv i32 %466, %471
  store i32 %472, i32* %13, align 4
  %473 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %474 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %473, i32 0, i32 15
  %475 = load i32, i32* %474, align 4
  %476 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %477 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %476, i32 0, i32 6
  %478 = load i32*, i32** %477, align 8
  %479 = getelementptr inbounds i32, i32* %478, i64 0
  %480 = load i32, i32* %479, align 4
  %481 = sdiv i32 %475, %480
  store i32 %481, i32* %14, align 4
  %482 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %483 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %482, i32 0, i32 11
  %484 = load i32, i32* %483, align 4
  %485 = load i32, i32* %13, align 4
  %486 = load i32, i32* %20, align 4
  %487 = mul nsw i32 %485, %486
  %488 = add nsw i32 %484, %487
  %489 = sub nsw i32 %488, 1
  %490 = load i32, i32* %13, align 4
  %491 = load i32, i32* %20, align 4
  %492 = mul nsw i32 %490, %491
  %493 = sdiv i32 %489, %492
  %494 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %495 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %494, i32 0, i32 10
  store i32 %493, i32* %495, align 8
  %496 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %497 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %496, i32 0, i32 14
  %498 = load i32, i32* %497, align 8
  %499 = load i32, i32* %14, align 4
  %500 = load i32, i32* %20, align 4
  %501 = mul nsw i32 %499, %500
  %502 = add nsw i32 %498, %501
  %503 = sub nsw i32 %502, 1
  %504 = load i32, i32* %14, align 4
  %505 = load i32, i32* %20, align 4
  %506 = mul nsw i32 %504, %505
  %507 = sdiv i32 %503, %506
  %508 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %509 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %508, i32 0, i32 13
  store i32 %507, i32* %509, align 4
  %510 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %511 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %510, i32 0, i32 2
  %512 = load i32*, i32** %511, align 8
  %513 = getelementptr inbounds i32, i32* %512, i64 0
  store i32 1, i32* %513, align 4
  %514 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %515 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %514, i32 0, i32 5
  %516 = load i32*, i32** %515, align 8
  %517 = getelementptr inbounds i32, i32* %516, i64 0
  store i32 1, i32* %517, align 4
  %518 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %519 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %518, i32 0, i32 6
  %520 = load i32*, i32** %519, align 8
  %521 = getelementptr inbounds i32, i32* %520, i64 0
  store i32 1, i32* %521, align 4
  br label %522

522:                                              ; preds = %463, %458
  br label %523

523:                                              ; preds = %522, %421
  %524 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %525 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %524, i32 0, i32 21
  %526 = load %struct.TYPE_22__*, %struct.TYPE_22__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %526, i32 0, i32 2
  %528 = load i32, i32* %527, align 8
  %529 = load i32, i32* @FF_DEBUG_PICT_INFO, align 4
  %530 = and i32 %528, %529
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %574

532:                                              ; preds = %523
  %533 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %534 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %533, i32 0, i32 21
  %535 = load %struct.TYPE_22__*, %struct.TYPE_22__** %534, align 8
  %536 = load i32, i32* @AV_LOG_DEBUG, align 4
  %537 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %538 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %537, i32 0, i32 30
  %539 = load i64, i64* %538, align 8
  %540 = icmp ne i64 %539, 0
  %541 = zext i1 %540 to i64
  %542 = select i1 %540, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0)
  %543 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %544 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %543, i32 0, i32 28
  %545 = load i64, i64* %544, align 8
  %546 = icmp ne i64 %545, 0
  %547 = zext i1 %546 to i64
  %548 = select i1 %546, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %549 = load i32, i32* %15, align 4
  %550 = load i32, i32* %16, align 4
  %551 = load i32, i32* %21, align 4
  %552 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %553 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %552, i32 0, i32 16
  %554 = load i32, i32* %553, align 8
  %555 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %556 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %555, i32 0, i32 17
  %557 = load i32, i32* %556, align 4
  %558 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %559 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %558, i32 0, i32 33
  %560 = load i64, i64* %559, align 8
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %562, label %563

562:                                              ; preds = %532
  br label %570

563:                                              ; preds = %532
  %564 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %565 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %564, i32 0, i32 32
  %566 = load i64, i64* %565, align 8
  %567 = icmp ne i64 %566, 0
  %568 = zext i1 %567 to i64
  %569 = select i1 %567, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  br label %570

570:                                              ; preds = %563, %562
  %571 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %562 ], [ %569, %563 ]
  %572 = load i32, i32* %11, align 4
  %573 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %535, i32 %536, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i8* %542, i8* %548, i32 %549, i32 %550, i32 %551, i32 %554, i32 %557, i8* %571, i32 %572)
  br label %574

574:                                              ; preds = %570, %523
  %575 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %576 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %575, i32 0, i32 17
  %577 = load i32, i32* %576, align 4
  store i32 %577, i32* %12, align 4
  br label %578

578:                                              ; preds = %585, %574
  %579 = load i32, i32* %12, align 4
  %580 = icmp sgt i32 %579, 0
  br i1 %580, label %581, label %588

581:                                              ; preds = %578
  %582 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %583 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %582, i32 0, i32 22
  %584 = call i32 @skip_bits(i32* %583, i32 8)
  br label %585

585:                                              ; preds = %581
  %586 = load i32, i32* %12, align 4
  %587 = add nsw i32 %586, -1
  store i32 %587, i32* %12, align 4
  br label %578

588:                                              ; preds = %578
  br label %589

589:                                              ; preds = %788, %588
  store i32 0, i32* %12, align 4
  br label %590

590:                                              ; preds = %605, %589
  %591 = load i32, i32* %12, align 4
  %592 = load i32, i32* %11, align 4
  %593 = icmp slt i32 %591, %592
  br i1 %593, label %594, label %608

594:                                              ; preds = %590
  %595 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %596 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %595, i32 0, i32 16
  %597 = load i32, i32* %596, align 8
  %598 = shl i32 4, %597
  %599 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %600 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %599, i32 0, i32 18
  %601 = load i32*, i32** %600, align 8
  %602 = load i32, i32* %12, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i32, i32* %601, i64 %603
  store i32 %598, i32* %604, align 4
  br label %605

605:                                              ; preds = %594
  %606 = load i32, i32* %12, align 4
  %607 = add nsw i32 %606, 1
  store i32 %607, i32* %12, align 4
  br label %590

608:                                              ; preds = %590
  %609 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %610 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %609, i32 0, i32 21
  %611 = load %struct.TYPE_22__*, %struct.TYPE_22__** %610, align 8
  %612 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %611, i32 0, i32 3
  %613 = load %struct.TYPE_18__*, %struct.TYPE_18__** %612, align 8
  %614 = icmp ne %struct.TYPE_18__* %613, null
  br i1 %614, label %615, label %659

615:                                              ; preds = %608
  %616 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %617 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %616, i32 0, i32 22
  %618 = call i32 @get_bits_count(i32* %617)
  %619 = sdiv i32 %618, 8
  store i32 %619, i32* %23, align 4
  %620 = load i32, i32* %23, align 4
  %621 = icmp sge i32 %620, 0
  br i1 %621, label %622, label %628

622:                                              ; preds = %615
  %623 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %624 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %623, i32 0, i32 19
  %625 = load i32, i32* %624, align 8
  %626 = load i32, i32* %23, align 4
  %627 = icmp sge i32 %625, %626
  br label %628

628:                                              ; preds = %622, %615
  %629 = phi i1 [ false, %615 ], [ %627, %622 ]
  %630 = zext i1 %629 to i32
  %631 = call i32 @av_assert0(i32 %630)
  %632 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %633 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %632, i32 0, i32 21
  %634 = load %struct.TYPE_22__*, %struct.TYPE_22__** %633, align 8
  %635 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %634, i32 0, i32 3
  %636 = load %struct.TYPE_18__*, %struct.TYPE_18__** %635, align 8
  %637 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %636, i32 0, i32 0
  %638 = load i32 (%struct.TYPE_22__*, i64, i32)*, i32 (%struct.TYPE_22__*, i64, i32)** %637, align 8
  %639 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %640 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %639, i32 0, i32 21
  %641 = load %struct.TYPE_22__*, %struct.TYPE_22__** %640, align 8
  %642 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %643 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %642, i32 0, i32 31
  %644 = load i64, i64* %643, align 8
  %645 = load i32, i32* %23, align 4
  %646 = sext i32 %645 to i64
  %647 = add nsw i64 %644, %646
  %648 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %649 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %648, i32 0, i32 19
  %650 = load i32, i32* %649, align 8
  %651 = load i32, i32* %23, align 4
  %652 = sub nsw i32 %650, %651
  %653 = call i32 %638(%struct.TYPE_22__* %641, i64 %647, i32 %652)
  store i32 %653, i32* %19, align 4
  %654 = load i32, i32* %19, align 4
  %655 = icmp slt i32 %654, 0
  br i1 %655, label %656, label %658

656:                                              ; preds = %628
  %657 = load i32, i32* %19, align 4
  store i32 %657, i32* %5, align 4
  br label %814

658:                                              ; preds = %628
  br label %766

659:                                              ; preds = %608
  %660 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %661 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %660, i32 0, i32 30
  %662 = load i64, i64* %661, align 8
  %663 = icmp ne i64 %662, 0
  br i1 %663, label %664, label %723

664:                                              ; preds = %659
  %665 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %666 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %665, i32 0, i32 25
  %667 = load %struct.TYPE_19__*, %struct.TYPE_19__** %666, align 8
  %668 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %669 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %668, i32 0, i32 24
  %670 = load %struct.TYPE_19__*, %struct.TYPE_19__** %669, align 8
  %671 = icmp eq %struct.TYPE_19__* %667, %670
  %672 = zext i1 %671 to i32
  %673 = call i32 @av_assert0(i32 %672)
  %674 = load i64, i64* @CONFIG_JPEGLS_DECODER, align 8
  %675 = icmp ne i64 %674, 0
  br i1 %675, label %676, label %691

676:                                              ; preds = %664
  %677 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %678 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %677, i32 0, i32 29
  %679 = load i64, i64* %678, align 8
  %680 = icmp ne i64 %679, 0
  br i1 %680, label %681, label %691

681:                                              ; preds = %676
  %682 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %683 = load i32, i32* %15, align 4
  %684 = load i32, i32* %16, align 4
  %685 = load i32, i32* %21, align 4
  %686 = call i32 @ff_jpegls_decode_picture(%struct.TYPE_20__* %682, i32 %683, i32 %684, i32 %685)
  store i32 %686, i32* %19, align 4
  %687 = icmp slt i32 %686, 0
  br i1 %687, label %688, label %690

688:                                              ; preds = %681
  %689 = load i32, i32* %19, align 4
  store i32 %689, i32* %5, align 4
  br label %814

690:                                              ; preds = %681
  br label %722

691:                                              ; preds = %676, %664
  %692 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %693 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %692, i32 0, i32 28
  %694 = load i64, i64* %693, align 8
  %695 = icmp ne i64 %694, 0
  br i1 %695, label %701, label %696

696:                                              ; preds = %691
  %697 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %698 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %697, i32 0, i32 27
  %699 = load i64, i64* %698, align 8
  %700 = icmp ne i64 %699, 0
  br i1 %700, label %701, label %711

701:                                              ; preds = %696, %691
  %702 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %703 = load i32, i32* %11, align 4
  %704 = load i32, i32* %15, align 4
  %705 = load i32, i32* %16, align 4
  %706 = call i32 @ljpeg_decode_rgb_scan(%struct.TYPE_20__* %702, i32 %703, i32 %704, i32 %705)
  store i32 %706, i32* %19, align 4
  %707 = icmp slt i32 %706, 0
  br i1 %707, label %708, label %710

708:                                              ; preds = %701
  %709 = load i32, i32* %19, align 4
  store i32 %709, i32* %5, align 4
  br label %814

710:                                              ; preds = %701
  br label %721

711:                                              ; preds = %696
  %712 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %713 = load i32, i32* %15, align 4
  %714 = load i32, i32* %16, align 4
  %715 = load i32, i32* %11, align 4
  %716 = call i32 @ljpeg_decode_yuv_scan(%struct.TYPE_20__* %712, i32 %713, i32 %714, i32 %715)
  store i32 %716, i32* %19, align 4
  %717 = icmp slt i32 %716, 0
  br i1 %717, label %718, label %720

718:                                              ; preds = %711
  %719 = load i32, i32* %19, align 4
  store i32 %719, i32* %5, align 4
  br label %814

720:                                              ; preds = %711
  br label %721

721:                                              ; preds = %720, %710
  br label %722

722:                                              ; preds = %721, %690
  br label %765

723:                                              ; preds = %659
  %724 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %725 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %724, i32 0, i32 26
  %726 = load i64, i64* %725, align 8
  %727 = icmp ne i64 %726, 0
  br i1 %727, label %728, label %751

728:                                              ; preds = %723
  %729 = load i32, i32* %15, align 4
  %730 = icmp ne i32 %729, 0
  br i1 %730, label %731, label %751

731:                                              ; preds = %728
  %732 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %733 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %732, i32 0, i32 25
  %734 = load %struct.TYPE_19__*, %struct.TYPE_19__** %733, align 8
  %735 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %736 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %735, i32 0, i32 24
  %737 = load %struct.TYPE_19__*, %struct.TYPE_19__** %736, align 8
  %738 = icmp eq %struct.TYPE_19__* %734, %737
  %739 = zext i1 %738 to i32
  %740 = call i32 @av_assert0(i32 %739)
  %741 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %742 = load i32, i32* %15, align 4
  %743 = load i32, i32* %21, align 4
  %744 = load i32, i32* %22, align 4
  %745 = load i32, i32* %16, align 4
  %746 = call i32 @mjpeg_decode_scan_progressive_ac(%struct.TYPE_20__* %741, i32 %742, i32 %743, i32 %744, i32 %745)
  store i32 %746, i32* %19, align 4
  %747 = icmp slt i32 %746, 0
  br i1 %747, label %748, label %750

748:                                              ; preds = %731
  %749 = load i32, i32* %19, align 4
  store i32 %749, i32* %5, align 4
  br label %814

750:                                              ; preds = %731
  br label %764

751:                                              ; preds = %728, %723
  %752 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %753 = load i32, i32* %11, align 4
  %754 = load i32, i32* %22, align 4
  %755 = load i32, i32* %16, align 4
  %756 = load i32*, i32** %7, align 8
  %757 = load i32, i32* %8, align 4
  %758 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %759 = call i32 @mjpeg_decode_scan(%struct.TYPE_20__* %752, i32 %753, i32 %754, i32 %755, i32* %756, i32 %757, %struct.TYPE_21__* %758)
  store i32 %759, i32* %19, align 4
  %760 = icmp slt i32 %759, 0
  br i1 %760, label %761, label %763

761:                                              ; preds = %751
  %762 = load i32, i32* %19, align 4
  store i32 %762, i32* %5, align 4
  br label %814

763:                                              ; preds = %751
  br label %764

764:                                              ; preds = %763, %750
  br label %765

765:                                              ; preds = %764, %722
  br label %766

766:                                              ; preds = %765, %658
  %767 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %768 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %767, i32 0, i32 23
  %769 = load i64, i64* %768, align 8
  %770 = icmp ne i64 %769, 0
  br i1 %770, label %771, label %805

771:                                              ; preds = %766
  %772 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %773 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %772, i32 0, i32 22
  %774 = call i32 @get_bits_left(i32* %773)
  %775 = icmp sgt i32 %774, 32
  br i1 %775, label %776, label %805

776:                                              ; preds = %771
  %777 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %778 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %777, i32 0, i32 22
  %779 = call i32 @show_bits(i32* %778, i32 8)
  %780 = icmp eq i32 %779, 255
  br i1 %780, label %781, label %805

781:                                              ; preds = %776
  %782 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %783 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %782, i32 0, i32 22
  %784 = load i32, i32* %783, align 8
  store i32 %784, i32* %24, align 4
  %785 = call i32 @align_get_bits(i32* %24)
  %786 = call i32 @show_bits(i32* %24, i32 16)
  %787 = icmp eq i32 %786, 65489
  br i1 %787, label %788, label %804

788:                                              ; preds = %781
  %789 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %790 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %789, i32 0, i32 21
  %791 = load %struct.TYPE_22__*, %struct.TYPE_22__** %790, align 8
  %792 = load i32, i32* @AV_LOG_DEBUG, align 4
  %793 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %791, i32 %792, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0))
  %794 = load i32, i32* %24, align 4
  %795 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %796 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %795, i32 0, i32 22
  store i32 %794, i32* %796, align 8
  %797 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %798 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %797, i32 0, i32 22
  %799 = call i32 @skip_bits(i32* %798, i32 16)
  %800 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %801 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %800, i32 0, i32 20
  %802 = load i32, i32* %801, align 4
  %803 = xor i32 %802, 1
  store i32 %803, i32* %801, align 4
  br label %589

804:                                              ; preds = %781
  br label %805

805:                                              ; preds = %804, %776, %771, %766
  %806 = call i32 (...) @emms_c()
  store i32 0, i32* %5, align 4
  br label %814

807:                                              ; preds = %391, %333
  %808 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %809 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %808, i32 0, i32 21
  %810 = load %struct.TYPE_22__*, %struct.TYPE_22__** %809, align 8
  %811 = load i32, i32* @AV_LOG_ERROR, align 4
  %812 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %810, i32 %811, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  %813 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %813, i32* %5, align 4
  br label %814

814:                                              ; preds = %807, %805, %761, %748, %718, %708, %688, %656, %159, %108, %95, %74, %35
  %815 = load i32, i32* %5, align 4
  ret i32 %815
}

declare dso_local i32 @av_log(%struct.TYPE_22__*, i32, i8*, ...) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_22__*, i8*, i32) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @AV_RL32(i8*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @ff_jpegls_decode_picture(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @ljpeg_decode_rgb_scan(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @ljpeg_decode_yuv_scan(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @mjpeg_decode_scan_progressive_ac(%struct.TYPE_20__*, i32, i32, i32, i32) #1

declare dso_local i32 @mjpeg_decode_scan(%struct.TYPE_20__*, i32, i32, i32, i32*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @show_bits(i32*, i32) #1

declare dso_local i32 @align_get_bits(i32*) #1

declare dso_local i32 @emms_c(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
