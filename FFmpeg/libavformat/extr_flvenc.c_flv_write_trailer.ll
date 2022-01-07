; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvenc.c_flv_write_trailer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvenc.c_flv_write_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_11__**, i32*, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.TYPE_16__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { double, double, %struct.TYPE_13__* }

@FLV_ADD_KEYFRAME_INDEX = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"filepositions\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"times\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AMF_END_OF_OBJECT = common dso_local global i32 0, align 4
@FLV_NO_SEQUENCE_END = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"FLV no sequence end mode open\0A\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@AV_CODEC_ID_MPEG4 = common dso_local global i64 0, align 8
@FLV_NO_METADATA = common dso_local global i32 0, align 4
@FLV_NO_DURATION_FILESIZE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Failed to update header with correct duration.\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Failed to update header with correct filesize.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @flv_write_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flv_write_trailer(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca double, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %4, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %5, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FLV_ADD_KEYFRAME_INDEX, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call double @avio_tell(i32* %27)
  store double %28, double* %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %197

31:                                               ; preds = %1
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load double, double* %34, align 8
  %36 = load i32, i32* @SEEK_SET, align 4
  %37 = call i64 @avio_seek(i32* %32, double %35, i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 2
  %41 = load double, double* %40, align 8
  %42 = call i32 @put_amf_double(i32* %38, double %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 3
  %46 = load double, double* %45, align 8
  %47 = load i32, i32* @SEEK_SET, align 4
  %48 = call i64 @avio_seek(i32* %43, double %46, i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 4
  %52 = load double, double* %51, align 8
  %53 = call i32 @put_amf_double(i32* %49, double %52)
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 5
  %57 = load double, double* %56, align 8
  %58 = load i32, i32* @SEEK_SET, align 4
  %59 = call i64 @avio_seek(i32* %54, double %57, i32 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 6
  %63 = load double, double* %62, align 8
  %64 = call i32 @put_amf_double(i32* %60, double %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 7
  %68 = load double, double* %67, align 8
  %69 = load i32, i32* @SEEK_SET, align 4
  %70 = call i64 @avio_seek(i32* %65, double %68, i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 8
  %74 = load double, double* %73, align 8
  %75 = call i32 @put_amf_double(i32* %71, double %74)
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 9
  %79 = load double, double* %78, align 8
  %80 = load i32, i32* @SEEK_SET, align 4
  %81 = call i64 @avio_seek(i32* %76, double %79, i32 %80)
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 10
  %85 = load double, double* %84, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 11
  %88 = load double, double* %87, align 8
  %89 = fadd double %85, %88
  %90 = call i32 @put_amf_double(i32* %82, double %89)
  %91 = load i32*, i32** %4, align 8
  %92 = load double, double* %9, align 8
  %93 = load i32, i32* @SEEK_SET, align 4
  %94 = call i64 @avio_seek(i32* %91, double %92, i32 %93)
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %96 = call i32 @shift_data(%struct.TYPE_15__* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %31
  br label %198

100:                                              ; preds = %31
  %101 = load i32*, i32** %4, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 12
  %104 = load double, double* %103, align 8
  %105 = load i32, i32* @SEEK_SET, align 4
  %106 = call i64 @avio_seek(i32* %101, double %104, i32 %105)
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @put_amf_string(i32* %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %109 = load i32*, i32** %4, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 20
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @put_amf_dword_array(i32* %109, i32 %112)
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 19
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  store %struct.TYPE_13__* %116, %struct.TYPE_13__** %10, align 8
  br label %117

117:                                              ; preds = %130, %100
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %119 = icmp ne %struct.TYPE_13__* %118, null
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = load i32*, i32** %4, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load double, double* %123, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 11
  %127 = load double, double* %126, align 8
  %128 = fadd double %124, %127
  %129 = call i32 @put_amf_double(i32* %121, double %128)
  br label %130

130:                                              ; preds = %120
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  store %struct.TYPE_13__* %133, %struct.TYPE_13__** %10, align 8
  br label %117

134:                                              ; preds = %117
  %135 = load i32*, i32** %4, align 8
  %136 = call i32 @put_amf_string(i32* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %137 = load i32*, i32** %4, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 20
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @put_amf_dword_array(i32* %137, i32 %140)
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 19
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  store %struct.TYPE_13__* %144, %struct.TYPE_13__** %10, align 8
  br label %145

145:                                              ; preds = %154, %134
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %147 = icmp ne %struct.TYPE_13__* %146, null
  br i1 %147, label %148, label %158

148:                                              ; preds = %145
  %149 = load i32*, i32** %4, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = load double, double* %151, align 8
  %153 = call i32 @put_amf_double(i32* %149, double %152)
  br label %154

154:                                              ; preds = %148
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  store %struct.TYPE_13__* %157, %struct.TYPE_13__** %10, align 8
  br label %145

158:                                              ; preds = %145
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 19
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  store %struct.TYPE_13__* %161, %struct.TYPE_13__** %10, align 8
  br label %162

162:                                              ; preds = %182, %158
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %164 = icmp ne %struct.TYPE_13__* %163, null
  br i1 %164, label %165, label %183

165:                                              ; preds = %162
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %167, align 8
  store %struct.TYPE_13__* %168, %struct.TYPE_13__** %11, align 8
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %170 = icmp ne %struct.TYPE_13__* %169, null
  br i1 %170, label %171, label %179

171:                                              ; preds = %165
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %173, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 2
  store %struct.TYPE_13__* %174, %struct.TYPE_13__** %176, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %178 = call i32 @av_free(%struct.TYPE_13__* %177)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  br label %182

179:                                              ; preds = %165
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %181 = call i32 @av_free(%struct.TYPE_13__* %180)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %10, align 8
  br label %182

182:                                              ; preds = %179, %171
  br label %162

183:                                              ; preds = %162
  %184 = load i32*, i32** %4, align 8
  %185 = call i32 @put_amf_string(i32* %184, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %186 = load i32*, i32** %4, align 8
  %187 = load i32, i32* @AMF_END_OF_OBJECT, align 4
  %188 = call i32 @avio_w8(i32* %186, i32 %187)
  %189 = load i32*, i32** %4, align 8
  %190 = load double, double* %9, align 8
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 11
  %193 = load double, double* %192, align 8
  %194 = fadd double %190, %193
  %195 = load i32, i32* @SEEK_SET, align 4
  %196 = call i64 @avio_seek(i32* %189, double %194, i32 %195)
  br label %197

197:                                              ; preds = %183, %1
  br label %198

198:                                              ; preds = %197, %99
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @FLV_NO_SEQUENCE_END, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %198
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %207 = load i32, i32* @AV_LOG_DEBUG, align 4
  %208 = call i32 @av_log(%struct.TYPE_15__* %206, i32 %207, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %263

209:                                              ; preds = %198
  store i32 0, i32* %7, align 4
  br label %210

210:                                              ; preds = %259, %209
  %211 = load i32, i32* %7, align 4
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %216, label %262

216:                                              ; preds = %210
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %218, align 8
  %220 = load i32, i32* %7, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %219, i64 %221
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %224, align 8
  store %struct.TYPE_16__* %225, %struct.TYPE_16__** %12, align 8
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %227, align 8
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %228, i64 %230
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %233, align 8
  store %struct.TYPE_12__* %234, %struct.TYPE_12__** %13, align 8
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %258

240:                                              ; preds = %216
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %252, label %246

246:                                              ; preds = %240
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @AV_CODEC_ID_MPEG4, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %246, %240
  %253 = load i32*, i32** %4, align 8
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @put_avc_eos_tag(i32* %253, i32 %256)
  br label %258

258:                                              ; preds = %252, %246, %216
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %7, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %7, align 4
  br label %210

262:                                              ; preds = %210
  br label %263

263:                                              ; preds = %262, %205
  %264 = load i32*, i32** %4, align 8
  %265 = call double @avio_tell(i32* %264)
  store double %265, double* %3, align 8
  %266 = load i32, i32* %6, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %287

268:                                              ; preds = %263
  %269 = load double, double* %3, align 8
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 14
  %272 = load double, double* %271, align 8
  %273 = fsub double %269, %272
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 13
  store double %273, double* %275, align 8
  %276 = load i32*, i32** %4, align 8
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 15
  %279 = load double, double* %278, align 8
  %280 = load i32, i32* @SEEK_SET, align 4
  %281 = call i64 @avio_seek(i32* %276, double %279, i32 %280)
  %282 = load i32*, i32** %4, align 8
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 13
  %285 = load double, double* %284, align 8
  %286 = call i32 @put_amf_double(i32* %282, double %285)
  br label %287

287:                                              ; preds = %268, %263
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @FLV_NO_METADATA, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %338, label %294

294:                                              ; preds = %287
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @FLV_NO_DURATION_FILESIZE, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %337, label %301

301:                                              ; preds = %294
  %302 = load i32*, i32** %4, align 8
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 16
  %305 = load double, double* %304, align 8
  %306 = load i32, i32* @SEEK_SET, align 4
  %307 = call i64 @avio_seek(i32* %302, double %305, i32 %306)
  %308 = icmp slt i64 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %301
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %311 = load i32, i32* @AV_LOG_WARNING, align 4
  %312 = call i32 @av_log(%struct.TYPE_15__* %310, i32 %311, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %320

313:                                              ; preds = %301
  %314 = load i32*, i32** %4, align 8
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 17
  %317 = load double, double* %316, align 8
  %318 = fdiv double %317, 1.000000e+03
  %319 = call i32 @put_amf_double(i32* %314, double %318)
  br label %320

320:                                              ; preds = %313, %309
  %321 = load i32*, i32** %4, align 8
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 18
  %324 = load double, double* %323, align 8
  %325 = load i32, i32* @SEEK_SET, align 4
  %326 = call i64 @avio_seek(i32* %321, double %324, i32 %325)
  %327 = icmp slt i64 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %320
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %330 = load i32, i32* @AV_LOG_WARNING, align 4
  %331 = call i32 @av_log(%struct.TYPE_15__* %329, i32 %330, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %336

332:                                              ; preds = %320
  %333 = load i32*, i32** %4, align 8
  %334 = load double, double* %3, align 8
  %335 = call i32 @put_amf_double(i32* %333, double %334)
  br label %336

336:                                              ; preds = %332, %328
  br label %337

337:                                              ; preds = %336, %294
  br label %338

338:                                              ; preds = %337, %287
  ret i32 0
}

declare dso_local double @avio_tell(i32*) #1

declare dso_local i64 @avio_seek(i32*, double, i32) #1

declare dso_local i32 @put_amf_double(i32*, double) #1

declare dso_local i32 @shift_data(%struct.TYPE_15__*) #1

declare dso_local i32 @put_amf_string(i32*, i8*) #1

declare dso_local i32 @put_amf_dword_array(i32*, i32) #1

declare dso_local i32 @av_free(%struct.TYPE_13__*) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @put_avc_eos_tag(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
