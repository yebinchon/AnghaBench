; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvenc.c_write_metadata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvenc.c_write_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { double, i32, %struct.TYPE_13__*, i32* }
%struct.TYPE_13__ = type { i32, i8*, double, double, double, double, i32, i8*, i8*, i64, i8*, i64, i8*, i64, i8*, i8*, i8*, i8*, %struct.TYPE_12__*, %struct.TYPE_11__*, i64, i64, i8*, i64, i8* }
%struct.TYPE_12__ = type { double, double, i64, i32, double }
%struct.TYPE_11__ = type { double, double, double, double }
%struct.TYPE_15__ = type { i8*, i8* }

@FLV_NO_DURATION_FILESIZE = common dso_local global i32 0, align 4
@FLV_TAG_TYPE_META = common dso_local global i32 0, align 4
@AMF_DATA_TYPE_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"onMetaData\00", align 1
@AMF_DATA_TYPE_MIXEDARRAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@AV_TIME_BASE = common dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"videodatarate\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"framerate\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"videocodecid\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"audiodatarate\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"audiosamplerate\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"audiosamplesize\00", align 1
@AV_CODEC_ID_PCM_U8 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"audiocodecid\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"datastream\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"datasize\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"lasttimestamp\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"totalframes\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"hasAudio\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"hasVideo\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"hasCuePoints\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"hasMetadata\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"hasKeyframes\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [26 x i8] c"Ignoring metadata for %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"filesize\00", align 1
@FLV_ADD_KEYFRAME_INDEX = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [13 x i8] c"canSeekToEnd\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"videosize\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"audiosize\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"lastkeyframetimestamp\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"lastkeyframelocation\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"keyframes\00", align 1
@AMF_DATA_TYPE_OBJECT = common dso_local global i32 0, align 4
@AMF_END_OF_OBJECT = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32)* @write_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_metadata(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %6, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FLV_NO_DURATION_FILESIZE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %10, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @FLV_TAG_TYPE_META, align 4
  %27 = call i32 @avio_w8(i32* %25, i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i8* @avio_tell(i32* %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @avio_wb24(i32* %32, i32 0)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @avio_wb24(i32* %34, i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @avio_wb32(i32* %37, i32 0)
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @AMF_DATA_TYPE_STRING, align 4
  %41 = call i32 @avio_w8(i32* %39, i32 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @put_amf_string(i32* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @AMF_DATA_TYPE_MIXEDARRAY, align 4
  %46 = call i32 @avio_w8(i32* %44, i32 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = call i8* @avio_tell(i32* %47)
  store i8* %48, i8** %9, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 19
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = icmp ne %struct.TYPE_11__* %51, null
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = mul nsw i32 4, %55
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 18
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = icmp ne %struct.TYPE_12__* %59, null
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = mul nsw i32 5, %63
  %65 = add nsw i32 %56, %64
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 23
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = mul nsw i32 1, %72
  %74 = add nsw i32 %65, %73
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %2
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %77, %2
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @avio_wb32(i32* %81, i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %80
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @put_amf_string(i32* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32*, i32** %5, align 8
  %90 = call i8* @avio_tell(i32* %89)
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 24
  store i8* %90, i8** %92, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load double, double* %95, align 8
  %97 = load double, double* @AV_TIME_BASE, align 8
  %98 = fdiv double %96, %97
  %99 = call i32 @put_amf_double(i32* %93, double %98)
  br label %100

100:                                              ; preds = %86, %80
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 19
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = icmp ne %struct.TYPE_11__* %103, null
  br i1 %104, label %105, label %158

105:                                              ; preds = %100
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @put_amf_string(i32* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i32*, i32** %5, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 19
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load double, double* %112, align 8
  %114 = call i32 @put_amf_double(i32* %108, double %113)
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 @put_amf_string(i32* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %117 = load i32*, i32** %5, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 19
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load double, double* %121, align 8
  %123 = call i32 @put_amf_double(i32* %117, double %122)
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @put_amf_string(i32* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32*, i32** %5, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 19
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  %131 = load double, double* %130, align 8
  %132 = fdiv double %131, 1.024000e+03
  %133 = call i32 @put_amf_double(i32* %126, double %132)
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 2
  %136 = load double, double* %135, align 8
  %137 = fcmp une double %136, 0.000000e+00
  br i1 %137, label %138, label %148

138:                                              ; preds = %105
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @put_amf_string(i32* %139, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %141 = load i32*, i32** %5, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 2
  %144 = load double, double* %143, align 8
  %145 = call i32 @put_amf_double(i32* %141, double %144)
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %138, %105
  %149 = load i32*, i32** %5, align 8
  %150 = call i32 @put_amf_string(i32* %149, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %151 = load i32*, i32** %5, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 19
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 3
  %156 = load double, double* %155, align 8
  %157 = call i32 @put_amf_double(i32* %151, double %156)
  br label %158

158:                                              ; preds = %148, %100
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 18
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = icmp ne %struct.TYPE_12__* %161, null
  br i1 %162, label %163, label %217

163:                                              ; preds = %158
  %164 = load i32*, i32** %5, align 8
  %165 = call i32 @put_amf_string(i32* %164, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %166 = load i32*, i32** %5, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 18
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load double, double* %170, align 8
  %172 = fdiv double %171, 1.024000e+03
  %173 = call i32 @put_amf_double(i32* %166, double %172)
  %174 = load i32*, i32** %5, align 8
  %175 = call i32 @put_amf_string(i32* %174, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %176 = load i32*, i32** %5, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 18
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 1
  %181 = load double, double* %180, align 8
  %182 = call i32 @put_amf_double(i32* %176, double %181)
  %183 = load i32*, i32** %5, align 8
  %184 = call i32 @put_amf_string(i32* %183, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %185 = load i32*, i32** %5, align 8
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 18
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @AV_CODEC_ID_PCM_U8, align 8
  %192 = icmp eq i64 %190, %191
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 8, i32 16
  %195 = sitofp i32 %194 to double
  %196 = call i32 @put_amf_double(i32* %185, double %195)
  %197 = load i32*, i32** %5, align 8
  %198 = call i32 @put_amf_string(i32* %197, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %199 = load i32*, i32** %5, align 8
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 18
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %204, 2
  %206 = zext i1 %205 to i32
  %207 = call i32 @put_amf_bool(i32* %199, i32 %206)
  %208 = load i32*, i32** %5, align 8
  %209 = call i32 @put_amf_string(i32* %208, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %210 = load i32*, i32** %5, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 18
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 4
  %215 = load double, double* %214, align 8
  %216 = call i32 @put_amf_double(i32* %210, double %215)
  br label %217

217:                                              ; preds = %163, %158
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 23
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %217
  %223 = load i32*, i32** %5, align 8
  %224 = call i32 @put_amf_string(i32* %223, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %225 = load i32*, i32** %5, align 8
  %226 = call i32 @put_amf_double(i32* %225, double 0.000000e+00)
  br label %227

227:                                              ; preds = %222, %217
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %229 = call i32 @ff_standardize_creation_time(%struct.TYPE_14__* %228)
  br label %230

230:                                              ; preds = %365, %358, %227
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %235 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %236 = call %struct.TYPE_15__* @av_dict_get(i32 %233, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), %struct.TYPE_15__* %234, i32 %235)
  store %struct.TYPE_15__* %236, %struct.TYPE_15__** %10, align 8
  %237 = icmp ne %struct.TYPE_15__* %236, null
  br i1 %237, label %238, label %381

238:                                              ; preds = %230
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = call i32 @strcmp(i8* %241, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %358

244:                                              ; preds = %238
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 0
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 @strcmp(i8* %247, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %358

250:                                              ; preds = %244
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 @strcmp(i8* %253, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %358

256:                                              ; preds = %250
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 @strcmp(i8* %259, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %358

262:                                              ; preds = %256
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @strcmp(i8* %265, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %358

268:                                              ; preds = %262
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  %272 = call i32 @strcmp(i8* %271, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %358

274:                                              ; preds = %268
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 @strcmp(i8* %277, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %358

280:                                              ; preds = %274
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 0
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @strcmp(i8* %283, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %358

286:                                              ; preds = %280
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 0
  %289 = load i8*, i8** %288, align 8
  %290 = call i32 @strcmp(i8* %289, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %358

292:                                              ; preds = %286
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 0
  %295 = load i8*, i8** %294, align 8
  %296 = call i32 @strcmp(i8* %295, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %358

298:                                              ; preds = %292
  %299 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 0
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @strcmp(i8* %301, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %358

304:                                              ; preds = %298
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 0
  %307 = load i8*, i8** %306, align 8
  %308 = call i32 @strcmp(i8* %307, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %358

310:                                              ; preds = %304
  %311 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8
  %314 = call i32 @strcmp(i8* %313, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %358

316:                                              ; preds = %310
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = call i32 @strcmp(i8* %319, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %358

322:                                              ; preds = %316
  %323 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %323, i32 0, i32 0
  %325 = load i8*, i8** %324, align 8
  %326 = call i32 @strcmp(i8* %325, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %358

328:                                              ; preds = %322
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 0
  %331 = load i8*, i8** %330, align 8
  %332 = call i32 @strcmp(i8* %331, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %358

334:                                              ; preds = %328
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 0
  %337 = load i8*, i8** %336, align 8
  %338 = call i32 @strcmp(i8* %337, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %358

340:                                              ; preds = %334
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 0
  %343 = load i8*, i8** %342, align 8
  %344 = call i32 @strcmp(i8* %343, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %358

346:                                              ; preds = %340
  %347 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i32 0, i32 0
  %349 = load i8*, i8** %348, align 8
  %350 = call i32 @strcmp(i8* %349, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %346
  %353 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 0
  %355 = load i8*, i8** %354, align 8
  %356 = call i32 @strcmp(i8* %355, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %365, label %358

358:                                              ; preds = %352, %346, %340, %334, %328, %322, %316, %310, %304, %298, %292, %286, %280, %274, %268, %262, %256, %250, %244, %238
  %359 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %360 = load i32, i32* @AV_LOG_DEBUG, align 4
  %361 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 0
  %363 = load i8*, i8** %362, align 8
  %364 = call i32 @av_log(%struct.TYPE_14__* %359, i32 %360, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i8* %363)
  br label %230

365:                                              ; preds = %352
  %366 = load i32*, i32** %5, align 8
  %367 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 0
  %369 = load i8*, i8** %368, align 8
  %370 = call i32 @put_amf_string(i32* %366, i8* %369)
  %371 = load i32*, i32** %5, align 8
  %372 = load i32, i32* @AMF_DATA_TYPE_STRING, align 4
  %373 = call i32 @avio_w8(i32* %371, i32 %372)
  %374 = load i32*, i32** %5, align 8
  %375 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %376 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %375, i32 0, i32 1
  %377 = load i8*, i8** %376, align 8
  %378 = call i32 @put_amf_string(i32* %374, i8* %377)
  %379 = load i32, i32* %8, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %8, align 4
  br label %230

381:                                              ; preds = %230
  %382 = load i32, i32* %7, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %393

384:                                              ; preds = %381
  %385 = load i32*, i32** %5, align 8
  %386 = call i32 @put_amf_string(i32* %385, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %387 = load i32*, i32** %5, align 8
  %388 = call i8* @avio_tell(i32* %387)
  %389 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %390 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %389, i32 0, i32 22
  store i8* %388, i8** %390, align 8
  %391 = load i32*, i32** %5, align 8
  %392 = call i32 @put_amf_double(i32* %391, double 0.000000e+00)
  br label %393

393:                                              ; preds = %384, %381
  %394 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* @FLV_ADD_KEYFRAME_INDEX, align 4
  %398 = and i32 %396, %397
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %541

400:                                              ; preds = %393
  %401 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %401, i32 0, i32 21
  store i64 0, i64* %402, align 8
  %403 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i32 0, i32 20
  store i64 0, i64* %404, align 8
  %405 = load i32*, i32** %5, align 8
  %406 = call i32 @put_amf_string(i32* %405, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %407 = load i32*, i32** %5, align 8
  %408 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %409 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %408, i32 0, i32 19
  %410 = load %struct.TYPE_11__*, %struct.TYPE_11__** %409, align 8
  %411 = icmp ne %struct.TYPE_11__* %410, null
  %412 = xor i1 %411, true
  %413 = xor i1 %412, true
  %414 = zext i1 %413 to i32
  %415 = call i32 @put_amf_bool(i32* %407, i32 %414)
  %416 = load i32, i32* %8, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %8, align 4
  %418 = load i32*, i32** %5, align 8
  %419 = call i32 @put_amf_string(i32* %418, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  %420 = load i32*, i32** %5, align 8
  %421 = call i32 @put_amf_bool(i32* %420, i32 1)
  %422 = load i32, i32* %8, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %8, align 4
  %424 = load i32*, i32** %5, align 8
  %425 = call i32 @put_amf_string(i32* %424, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %426 = load i32*, i32** %5, align 8
  %427 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %428 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %427, i32 0, i32 18
  %429 = load %struct.TYPE_12__*, %struct.TYPE_12__** %428, align 8
  %430 = icmp ne %struct.TYPE_12__* %429, null
  %431 = xor i1 %430, true
  %432 = xor i1 %431, true
  %433 = zext i1 %432 to i32
  %434 = call i32 @put_amf_bool(i32* %426, i32 %433)
  %435 = load i32, i32* %8, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %8, align 4
  %437 = load i32*, i32** %5, align 8
  %438 = call i32 @put_amf_string(i32* %437, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %439 = load i32*, i32** %5, align 8
  %440 = call i32 @put_amf_bool(i32* %439, i32 1)
  %441 = load i32, i32* %8, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %8, align 4
  %443 = load i32*, i32** %5, align 8
  %444 = call i32 @put_amf_string(i32* %443, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  %445 = load i32*, i32** %5, align 8
  %446 = call i32 @put_amf_bool(i32* %445, i32 1)
  %447 = load i32, i32* %8, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %8, align 4
  %449 = load i32*, i32** %5, align 8
  %450 = call i32 @put_amf_string(i32* %449, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %451 = load i32*, i32** %5, align 8
  %452 = call i8* @avio_tell(i32* %451)
  %453 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %454 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %453, i32 0, i32 17
  store i8* %452, i8** %454, align 8
  %455 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %456 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %455, i32 0, i32 3
  store double 0.000000e+00, double* %456, align 8
  %457 = load i32*, i32** %5, align 8
  %458 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %459 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %458, i32 0, i32 3
  %460 = load double, double* %459, align 8
  %461 = call i32 @put_amf_double(i32* %457, double %460)
  %462 = load i32, i32* %8, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %8, align 4
  %464 = load i32*, i32** %5, align 8
  %465 = call i32 @put_amf_string(i32* %464, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  %466 = load i32*, i32** %5, align 8
  %467 = call i8* @avio_tell(i32* %466)
  %468 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %469 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %468, i32 0, i32 16
  store i8* %467, i8** %469, align 8
  %470 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %471 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %470, i32 0, i32 4
  store double 0.000000e+00, double* %471, align 8
  %472 = load i32*, i32** %5, align 8
  %473 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %474 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %473, i32 0, i32 4
  %475 = load double, double* %474, align 8
  %476 = call i32 @put_amf_double(i32* %472, double %475)
  %477 = load i32, i32* %8, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %8, align 4
  %479 = load i32*, i32** %5, align 8
  %480 = call i32 @put_amf_string(i32* %479, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  %481 = load i32*, i32** %5, align 8
  %482 = call i8* @avio_tell(i32* %481)
  %483 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %484 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %483, i32 0, i32 15
  store i8* %482, i8** %484, align 8
  %485 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %486 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %485, i32 0, i32 5
  store double 0.000000e+00, double* %486, align 8
  %487 = load i32*, i32** %5, align 8
  %488 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %489 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %488, i32 0, i32 5
  %490 = load double, double* %489, align 8
  %491 = call i32 @put_amf_double(i32* %487, double %490)
  %492 = load i32, i32* %8, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %8, align 4
  %494 = load i32*, i32** %5, align 8
  %495 = call i32 @put_amf_string(i32* %494, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %496 = load i32*, i32** %5, align 8
  %497 = call i8* @avio_tell(i32* %496)
  %498 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %499 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %498, i32 0, i32 14
  store i8* %497, i8** %499, align 8
  %500 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %501 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %500, i32 0, i32 13
  store i64 0, i64* %501, align 8
  %502 = load i32*, i32** %5, align 8
  %503 = call i32 @put_amf_double(i32* %502, double 0.000000e+00)
  %504 = load i32, i32* %8, align 4
  %505 = add nsw i32 %504, 1
  store i32 %505, i32* %8, align 4
  %506 = load i32*, i32** %5, align 8
  %507 = call i32 @put_amf_string(i32* %506, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0))
  %508 = load i32*, i32** %5, align 8
  %509 = call i8* @avio_tell(i32* %508)
  %510 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %511 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %510, i32 0, i32 12
  store i8* %509, i8** %511, align 8
  %512 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %513 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %512, i32 0, i32 11
  store i64 0, i64* %513, align 8
  %514 = load i32*, i32** %5, align 8
  %515 = call i32 @put_amf_double(i32* %514, double 0.000000e+00)
  %516 = load i32, i32* %8, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %8, align 4
  %518 = load i32*, i32** %5, align 8
  %519 = call i32 @put_amf_string(i32* %518, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0))
  %520 = load i32*, i32** %5, align 8
  %521 = call i8* @avio_tell(i32* %520)
  %522 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %523 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %522, i32 0, i32 10
  store i8* %521, i8** %523, align 8
  %524 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %525 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %524, i32 0, i32 9
  store i64 0, i64* %525, align 8
  %526 = load i32*, i32** %5, align 8
  %527 = call i32 @put_amf_double(i32* %526, double 0.000000e+00)
  %528 = load i32, i32* %8, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %8, align 4
  %530 = load i32*, i32** %5, align 8
  %531 = call i32 @put_amf_string(i32* %530, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0))
  %532 = load i32*, i32** %5, align 8
  %533 = load i32, i32* @AMF_DATA_TYPE_OBJECT, align 4
  %534 = call i32 @put_amf_byte(i32* %532, i32 %533)
  %535 = load i32, i32* %8, align 4
  %536 = add nsw i32 %535, 1
  store i32 %536, i32* %8, align 4
  %537 = load i32*, i32** %5, align 8
  %538 = call i8* @avio_tell(i32* %537)
  %539 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %540 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %539, i32 0, i32 8
  store i8* %538, i8** %540, align 8
  br label %541

541:                                              ; preds = %400, %393
  %542 = load i32*, i32** %5, align 8
  %543 = call i32 @put_amf_string(i32* %542, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0))
  %544 = load i32*, i32** %5, align 8
  %545 = load i32, i32* @AMF_END_OF_OBJECT, align 4
  %546 = call i32 @avio_w8(i32* %544, i32 %545)
  %547 = load i32*, i32** %5, align 8
  %548 = call i8* @avio_tell(i32* %547)
  %549 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %550 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %549, i32 0, i32 1
  %551 = load i8*, i8** %550, align 8
  %552 = ptrtoint i8* %548 to i64
  %553 = ptrtoint i8* %551 to i64
  %554 = sub i64 %552, %553
  %555 = sub nsw i64 %554, 10
  %556 = trunc i64 %555 to i32
  %557 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %558 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %557, i32 0, i32 6
  store i32 %556, i32* %558, align 8
  %559 = load i32*, i32** %5, align 8
  %560 = load i8*, i8** %9, align 8
  %561 = load i32, i32* @SEEK_SET, align 4
  %562 = call i32 @avio_seek(i32* %559, i8* %560, i32 %561)
  %563 = load i32*, i32** %5, align 8
  %564 = load i32, i32* %8, align 4
  %565 = call i32 @avio_wb32(i32* %563, i32 %564)
  %566 = load i32*, i32** %5, align 8
  %567 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %568 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %567, i32 0, i32 1
  %569 = load i8*, i8** %568, align 8
  %570 = load i32, i32* @SEEK_SET, align 4
  %571 = call i32 @avio_seek(i32* %566, i8* %569, i32 %570)
  %572 = load i32*, i32** %5, align 8
  %573 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %574 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %573, i32 0, i32 6
  %575 = load i32, i32* %574, align 8
  %576 = call i32 @avio_wb24(i32* %572, i32 %575)
  %577 = load i32*, i32** %5, align 8
  %578 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %579 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %578, i32 0, i32 6
  %580 = load i32, i32* %579, align 8
  %581 = add i32 %580, 10
  %582 = sub i32 %581, 3
  %583 = call i32 @avio_skip(i32* %577, i32 %582)
  %584 = load i32*, i32** %5, align 8
  %585 = call i8* @avio_tell(i32* %584)
  %586 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %587 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %586, i32 0, i32 7
  store i8* %585, i8** %587, align 8
  %588 = load i32*, i32** %5, align 8
  %589 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %590 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %589, i32 0, i32 6
  %591 = load i32, i32* %590, align 8
  %592 = add i32 %591, 11
  %593 = call i32 @avio_wb32(i32* %588, i32 %592)
  ret void
}

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i8* @avio_tell(i32*) #1

declare dso_local i32 @avio_wb24(i32*, i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @put_amf_string(i32*, i8*) #1

declare dso_local i32 @put_amf_double(i32*, double) #1

declare dso_local i32 @put_amf_bool(i32*, i32) #1

declare dso_local i32 @ff_standardize_creation_time(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @av_dict_get(i32, i8*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, i8*) #1

declare dso_local i32 @put_amf_byte(i32*, i32) #1

declare dso_local i32 @avio_seek(i32*, i8*, i32) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
