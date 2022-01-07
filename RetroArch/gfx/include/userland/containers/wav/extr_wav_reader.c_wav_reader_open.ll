; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/wav/extr_wav_reader.c_wav_reader_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/wav/extr_wav_reader.c_wav_reader_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_31__*, i32, %struct.TYPE_34__** }
%struct.TYPE_31__ = type { i32, i32, i32 (%struct.TYPE_32__*)*, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32*, i32, i32, i64, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i32*, i64, %struct.TYPE_29__*, i64, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64, i64, i64, i64 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"Chunk ID\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Chunk size\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"WAVE ID\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"wFormatTag\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"nChannels\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"nSamplesPerSec\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"nAvgBytesPerSec\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"nBlockAlign\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"wBitsPerSample\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"cbSize\00", align 1
@WAVE_FORMAT_EXTENSIBLE = common dso_local global i64 0, align 8
@VC_CONTAINER_CODEC_UNKNOWN = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"wValidBitsPerSample\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"dwChannelMask\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"SubFormat\00", align 1
@pcm_guid = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_PCM_SIGNED_LE = common dso_local global i64 0, align 8
@atracx_guid = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_ATRAC3 = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_FORMAT_FEATURE_NOT_SUPPORTED = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_AUDIO = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"bytes_per_frame\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"mode_ext\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"num_subframes\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@VC_CONTAINER_CODEC_ATRACX = common dso_local global i64 0, align 8
@BLOCK_SIZE = common dso_local global i64 0, align 8
@VC_CONTAINER_CAPS_CAN_SEEK = common dso_local global i32 0, align 4
@wav_reader_read = common dso_local global i32 0, align 4
@wav_reader_seek = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [31 x i8] c"wav: error opening stream (%i)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wav_reader_open(%struct.TYPE_32__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [12 x i8], align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %3, align 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %4, align 8
  %20 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %20, i64* %5, align 8
  store i64 0, i64* %15, align 8
  %21 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %22 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 0
  %23 = call i32 @PEEK_BYTES(%struct.TYPE_32__* %21, i8* %22, i32 12)
  %24 = icmp ne i32 %23, 12
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %26, i64* %2, align 8
  br label %537

27:                                               ; preds = %1
  %28 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 3
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @VC_FOURCC(i8 signext %29, i8 signext %31, i8 signext %33, i8 signext %35)
  %37 = call i64 @VC_FOURCC(i8 signext 82, i8 signext 73, i8 signext 70, i8 signext 70)
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %40, i64* %2, align 8
  br label %537

41:                                               ; preds = %27
  %42 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 8
  %43 = load i8, i8* %42, align 1
  %44 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 9
  %45 = load i8, i8* %44, align 1
  %46 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 10
  %47 = load i8, i8* %46, align 1
  %48 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 11
  %49 = load i8, i8* %48, align 1
  %50 = call i64 @VC_FOURCC(i8 signext %43, i8 signext %45, i8 signext %47, i8 signext %49)
  %51 = call i64 @VC_FOURCC(i8 signext 87, i8 signext 65, i8 signext 86, i8 signext 69)
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %54, i64* %2, align 8
  br label %537

55:                                               ; preds = %41
  %56 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %57 = call i32 @SKIP_FOURCC(%struct.TYPE_32__* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %59 = call i32 @SKIP_U32(%struct.TYPE_32__* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %61 = call i32 @SKIP_FOURCC(%struct.TYPE_32__* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %77, %55
  %63 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %64 = call i32 @STREAM_POSITION(%struct.TYPE_32__* %63)
  %65 = add nsw i32 %64, 8
  store i32 %65, i32* %8, align 4
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %67 = call i64 @READ_FOURCC(%struct.TYPE_32__* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %68 = call i64 @VC_FOURCC(i8 signext 102, i8 signext 109, i8 signext 116, i8 signext 32)
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %82

71:                                               ; preds = %62
  %72 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %73 = call i32 @READ_U32(%struct.TYPE_32__* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %73, i32* %7, align 4
  %74 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @SKIP_BYTES(%struct.TYPE_32__* %74, i32 %75)
  br label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %79 = call i64 @STREAM_STATUS(%struct.TYPE_32__* %78)
  %80 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %62, label %82

82:                                               ; preds = %77, %70
  %83 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %84 = call i64 @STREAM_STATUS(%struct.TYPE_32__* %83)
  %85 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %88, i64* %2, align 8
  br label %537

89:                                               ; preds = %82
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %91 = call i32 @READ_U32(%struct.TYPE_32__* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %91, i32* %7, align 4
  %92 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %93 = call i8* @READ_U16(%struct.TYPE_32__* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %94 = ptrtoint i8* %93 to i64
  store i64 %94, i64* %9, align 8
  %95 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %96 = call i8* @READ_U16(%struct.TYPE_32__* %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %97 = ptrtoint i8* %96 to i64
  store i64 %97, i64* %10, align 8
  %98 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %99 = call i32 @READ_U32(%struct.TYPE_32__* %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %11, align 8
  %101 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %102 = call i32 @READ_U32(%struct.TYPE_32__* %101, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %103 = mul nsw i32 %102, 8
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %12, align 8
  %105 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %106 = call i8* @READ_U16(%struct.TYPE_32__* %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %107 = ptrtoint i8* %106 to i64
  store i64 %107, i64* %13, align 8
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %109 = call i8* @READ_U16(%struct.TYPE_32__* %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %110 = ptrtoint i8* %109 to i64
  store i64 %110, i64* %14, align 8
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %112 = call i32 @STREAM_POSITION(%struct.TYPE_32__* %111)
  %113 = load i32, i32* %8, align 4
  %114 = sub nsw i32 %112, %113
  %115 = load i32, i32* %7, align 4
  %116 = sub nsw i32 %115, 2
  %117 = icmp sle i32 %114, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %89
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %120 = call i8* @READ_U16(%struct.TYPE_32__* %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %121 = ptrtoint i8* %120 to i64
  store i64 %121, i64* %15, align 8
  br label %122

122:                                              ; preds = %118, %89
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* @WAVE_FORMAT_EXTENSIBLE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %153

126:                                              ; preds = %122
  %127 = load i32, i32* %7, align 4
  %128 = icmp sge i32 %127, 40
  br i1 %128, label %129, label %153

129:                                              ; preds = %126
  %130 = load i64, i64* %15, align 8
  %131 = icmp sge i64 %130, 22
  br i1 %131, label %132, label %153

132:                                              ; preds = %129
  %133 = load i64, i64* @VC_CONTAINER_CODEC_UNKNOWN, align 8
  store i64 %133, i64* %6, align 8
  %134 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %135 = call i32 @SKIP_U16(%struct.TYPE_32__* %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %137 = call i32 @SKIP_U32(%struct.TYPE_32__* %136, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %138 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %139 = call i32 @READ_GUID(%struct.TYPE_32__* %138, i32* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %140 = call i32 @memcmp(i32* %17, i32* @pcm_guid, i32 4)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %132
  %143 = load i64, i64* @VC_CONTAINER_CODEC_PCM_SIGNED_LE, align 8
  store i64 %143, i64* %6, align 8
  br label %150

144:                                              ; preds = %132
  %145 = call i32 @memcmp(i32* %17, i32* @atracx_guid, i32 4)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %144
  %148 = load i64, i64* @VC_CONTAINER_CODEC_ATRAC3, align 8
  store i64 %148, i64* %6, align 8
  br label %149

149:                                              ; preds = %147, %144
  br label %150

150:                                              ; preds = %149, %142
  %151 = load i64, i64* %15, align 8
  %152 = sub nsw i64 %151, 22
  store i64 %152, i64* %15, align 8
  br label %156

153:                                              ; preds = %129, %126, %122
  %154 = load i64, i64* %9, align 8
  %155 = call i64 @waveformat_to_codec(i64 %154)
  store i64 %155, i64* %6, align 8
  br label %156

156:                                              ; preds = %153, %150
  %157 = load i64, i64* %6, align 8
  %158 = load i64, i64* @VC_CONTAINER_CODEC_UNKNOWN, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_FEATURE_NOT_SUPPORTED, align 8
  store i64 %161, i64* %2, align 8
  br label %537

162:                                              ; preds = %156
  %163 = load i64, i64* %10, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %162
  %166 = load i64, i64* %11, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load i64, i64* %13, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i64, i64* %12, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %171, %168, %165, %162
  %175 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %175, i64* %2, align 8
  br label %537

176:                                              ; preds = %171
  %177 = load i64, i64* %6, align 8
  %178 = load i64, i64* @VC_CONTAINER_CODEC_ATRAC3, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %176
  %181 = load i64, i64* %10, align 8
  %182 = icmp sgt i64 %181, 2
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %184, i64* %2, align 8
  br label %537

185:                                              ; preds = %180, %176
  %186 = call %struct.TYPE_33__* @malloc(i32 32)
  store %struct.TYPE_33__* %186, %struct.TYPE_33__** %4, align 8
  %187 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %188 = icmp ne %struct.TYPE_33__* %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %185
  %190 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %190, i64* %5, align 8
  br label %526

191:                                              ; preds = %185
  %192 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %193 = call i32 @memset(%struct.TYPE_33__* %192, i32 0, i32 32)
  %194 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %195 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_31__*, %struct.TYPE_31__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %197, i32 0, i32 3
  store %struct.TYPE_33__* %194, %struct.TYPE_33__** %198, align 8
  %199 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %199, i32 0, i32 0
  store i32 1, i32* %200, align 8
  %201 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %201, i32 0, i32 4
  %203 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %203, i32 0, i32 4
  store %struct.TYPE_34__** %202, %struct.TYPE_34__*** %204, align 8
  %205 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %206 = call %struct.TYPE_34__* @vc_container_allocate_track(%struct.TYPE_32__* %205, i32 0)
  %207 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %207, i32 0, i32 4
  %209 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %209, i64 0
  store %struct.TYPE_34__* %206, %struct.TYPE_34__** %210, align 8
  %211 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %211, i32 0, i32 4
  %213 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %213, i64 0
  %215 = load %struct.TYPE_34__*, %struct.TYPE_34__** %214, align 8
  %216 = icmp ne %struct.TYPE_34__* %215, null
  br i1 %216, label %219, label %217

217:                                              ; preds = %191
  %218 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %218, i64* %2, align 8
  br label %537

219:                                              ; preds = %191
  %220 = load i32, i32* @VC_CONTAINER_ES_TYPE_AUDIO, align 4
  %221 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %221, i32 0, i32 4
  %223 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %223, i64 0
  %225 = load %struct.TYPE_34__*, %struct.TYPE_34__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_30__*, %struct.TYPE_30__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %227, i32 0, i32 5
  store i32 %220, i32* %228, align 8
  %229 = load i64, i64* %6, align 8
  %230 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %230, i32 0, i32 4
  %232 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %232, i64 0
  %234 = load %struct.TYPE_34__*, %struct.TYPE_34__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_30__*, %struct.TYPE_30__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %236, i32 0, i32 4
  store i64 %229, i64* %237, align 8
  %238 = load i64, i64* %10, align 8
  %239 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %239, i32 0, i32 4
  %241 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %241, i64 0
  %243 = load %struct.TYPE_34__*, %struct.TYPE_34__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_30__*, %struct.TYPE_30__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %245, i32 0, i32 3
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %248, i32 0, i32 3
  store i64 %238, i64* %249, align 8
  %250 = load i64, i64* %11, align 8
  %251 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %251, i32 0, i32 4
  %253 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %253, i64 0
  %255 = load %struct.TYPE_34__*, %struct.TYPE_34__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_30__*, %struct.TYPE_30__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %257, i32 0, i32 3
  %259 = load %struct.TYPE_29__*, %struct.TYPE_29__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %260, i32 0, i32 2
  store i64 %250, i64* %261, align 8
  %262 = load i64, i64* %13, align 8
  %263 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %263, i32 0, i32 4
  %265 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %265, i64 0
  %267 = load %struct.TYPE_34__*, %struct.TYPE_34__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %269, i32 0, i32 3
  %271 = load %struct.TYPE_29__*, %struct.TYPE_29__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %272, i32 0, i32 1
  store i64 %262, i64* %273, align 8
  %274 = load i64, i64* %14, align 8
  %275 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %275, i32 0, i32 4
  %277 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %277, i64 0
  %279 = load %struct.TYPE_34__*, %struct.TYPE_34__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_30__*, %struct.TYPE_30__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %281, i32 0, i32 3
  %283 = load %struct.TYPE_29__*, %struct.TYPE_29__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %284, i32 0, i32 0
  store i64 %274, i64* %285, align 8
  %286 = load i64, i64* %12, align 8
  %287 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %287, i32 0, i32 4
  %289 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %289, i64 0
  %291 = load %struct.TYPE_34__*, %struct.TYPE_34__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_30__*, %struct.TYPE_30__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %293, i32 0, i32 2
  store i64 %286, i64* %294, align 8
  %295 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %295, i32 0, i32 4
  %297 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %297, i64 0
  %299 = load %struct.TYPE_34__*, %struct.TYPE_34__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %299, i32 0, i32 0
  store i32 1, i32* %300, align 8
  %301 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %301, i32 0, i32 4
  %303 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %303, i64 0
  %305 = load %struct.TYPE_34__*, %struct.TYPE_34__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %305, i32 0, i32 1
  %307 = load %struct.TYPE_30__*, %struct.TYPE_30__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %307, i32 0, i32 0
  store i32 0, i32* %308, align 8
  %309 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %309, i32 0, i32 0
  %311 = load i32*, i32** %310, align 8
  %312 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %312, i32 0, i32 4
  %314 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %314, i64 0
  %316 = load %struct.TYPE_34__*, %struct.TYPE_34__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %316, i32 0, i32 1
  %318 = load %struct.TYPE_30__*, %struct.TYPE_30__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %318, i32 0, i32 1
  store i32* %311, i32** %319, align 8
  %320 = load i64, i64* %13, align 8
  %321 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %321, i32 0, i32 3
  store i64 %320, i64* %322, align 8
  %323 = load i64, i64* %6, align 8
  %324 = load i64, i64* @VC_CONTAINER_CODEC_ATRAC3, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %392

326:                                              ; preds = %219
  %327 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %328 = call i32 @SKIP_U16(%struct.TYPE_32__* %327, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %329 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %330 = call i32 @SKIP_U16(%struct.TYPE_32__* %329, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %331 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %332 = call i32 @SKIP_U32(%struct.TYPE_32__* %331, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  %333 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %334 = call i8* @READ_U16(%struct.TYPE_32__* %333, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %335 = ptrtoint i8* %334 to i32
  store i32 %335, i32* %19, align 4
  %336 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %337 = call i32 @SKIP_U16(%struct.TYPE_32__* %336, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %338 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %339 = call i32 @SKIP_U16(%struct.TYPE_32__* %338, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %340 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %341 = call i32 @SKIP_U16(%struct.TYPE_32__* %340, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  store i32 32768, i32* %18, align 4
  %342 = load i64, i64* %10, align 8
  %343 = icmp eq i64 %342, 2
  br i1 %343, label %344, label %353

344:                                              ; preds = %326
  %345 = load i32, i32* %18, align 4
  %346 = or i32 %345, 8192
  store i32 %346, i32* %18, align 4
  %347 = load i32, i32* %19, align 4
  %348 = icmp eq i32 %347, 1
  br i1 %348, label %349, label %352

349:                                              ; preds = %344
  %350 = load i32, i32* %18, align 4
  %351 = or i32 %350, 16384
  store i32 %351, i32* %18, align 4
  br label %352

352:                                              ; preds = %349, %344
  br label %353

353:                                              ; preds = %352, %326
  %354 = load i64, i64* %13, align 8
  %355 = and i64 %354, 2047
  %356 = load i32, i32* %18, align 4
  %357 = sext i32 %356 to i64
  %358 = or i64 %357, %355
  %359 = trunc i64 %358 to i32
  store i32 %359, i32* %18, align 4
  %360 = load i32, i32* %18, align 4
  %361 = ashr i32 %360, 8
  %362 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %362, i32 0, i32 4
  %364 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %364, i64 0
  %366 = load %struct.TYPE_34__*, %struct.TYPE_34__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %366, i32 0, i32 1
  %368 = load %struct.TYPE_30__*, %struct.TYPE_30__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %368, i32 0, i32 1
  %370 = load i32*, i32** %369, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 0
  store i32 %361, i32* %371, align 4
  %372 = load i32, i32* %18, align 4
  %373 = and i32 %372, 255
  %374 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %374, i32 0, i32 4
  %376 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %376, i64 0
  %378 = load %struct.TYPE_34__*, %struct.TYPE_34__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %378, i32 0, i32 1
  %380 = load %struct.TYPE_30__*, %struct.TYPE_30__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %380, i32 0, i32 1
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 1
  store i32 %373, i32* %383, align 4
  %384 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %384, i32 0, i32 4
  %386 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %386, i64 0
  %388 = load %struct.TYPE_34__*, %struct.TYPE_34__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %388, i32 0, i32 1
  %390 = load %struct.TYPE_30__*, %struct.TYPE_30__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %390, i32 0, i32 0
  store i32 2, i32* %391, align 8
  br label %437

392:                                              ; preds = %219
  %393 = load i64, i64* %6, align 8
  %394 = load i64, i64* @VC_CONTAINER_CODEC_ATRACX, align 8
  %395 = icmp eq i64 %393, %394
  br i1 %395, label %396, label %421

396:                                              ; preds = %392
  %397 = load i64, i64* %15, align 8
  %398 = icmp sge i64 %397, 6
  br i1 %398, label %399, label %421

399:                                              ; preds = %396
  %400 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %401 = call i32 @SKIP_BYTES(%struct.TYPE_32__* %400, i32 2)
  %402 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %403 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %403, i32 0, i32 4
  %405 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %405, i64 0
  %407 = load %struct.TYPE_34__*, %struct.TYPE_34__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %407, i32 0, i32 1
  %409 = load %struct.TYPE_30__*, %struct.TYPE_30__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %409, i32 0, i32 1
  %411 = load i32*, i32** %410, align 8
  %412 = call i32 @READ_BYTES(%struct.TYPE_32__* %402, i32* %411, i32 6)
  %413 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %414 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %413, i32 0, i32 4
  %415 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %415, i64 0
  %417 = load %struct.TYPE_34__*, %struct.TYPE_34__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %417, i32 0, i32 1
  %419 = load %struct.TYPE_30__*, %struct.TYPE_30__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %419, i32 0, i32 0
  store i32 %412, i32* %420, align 8
  br label %436

421:                                              ; preds = %396, %392
  %422 = load i64, i64* %6, align 8
  %423 = load i64, i64* @VC_CONTAINER_CODEC_PCM_SIGNED_LE, align 8
  %424 = icmp eq i64 %422, %423
  br i1 %424, label %425, label %435

425:                                              ; preds = %421
  %426 = load i64, i64* %13, align 8
  %427 = mul nsw i64 %426, 16
  store i64 %427, i64* %13, align 8
  %428 = load i64, i64* @BLOCK_SIZE, align 8
  %429 = load i64, i64* %13, align 8
  %430 = sdiv i64 %428, %429
  %431 = load i64, i64* %13, align 8
  %432 = mul nsw i64 %430, %431
  %433 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %434 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %433, i32 0, i32 3
  store i64 %432, i64* %434, align 8
  br label %435

435:                                              ; preds = %425, %421
  br label %436

436:                                              ; preds = %435, %399
  br label %437

437:                                              ; preds = %436, %353
  %438 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %439 = load i32, i32* %8, align 4
  %440 = load i32, i32* %7, align 4
  %441 = add nsw i32 %439, %440
  %442 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %443 = call i32 @STREAM_POSITION(%struct.TYPE_32__* %442)
  %444 = sub nsw i32 %441, %443
  %445 = call i32 @SKIP_BYTES(%struct.TYPE_32__* %438, i32 %444)
  br label %446

446:                                              ; preds = %461, %437
  %447 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %448 = call i32 @STREAM_POSITION(%struct.TYPE_32__* %447)
  %449 = add nsw i32 %448, 8
  store i32 %449, i32* %8, align 4
  %450 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %451 = call i64 @READ_FOURCC(%struct.TYPE_32__* %450, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %452 = call i64 @VC_FOURCC(i8 signext 100, i8 signext 97, i8 signext 116, i8 signext 97)
  %453 = icmp eq i64 %451, %452
  br i1 %453, label %454, label %455

454:                                              ; preds = %446
  br label %466

455:                                              ; preds = %446
  %456 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %457 = call i32 @READ_U32(%struct.TYPE_32__* %456, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %457, i32* %7, align 4
  %458 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %459 = load i32, i32* %7, align 4
  %460 = call i32 @SKIP_BYTES(%struct.TYPE_32__* %458, i32 %459)
  br label %461

461:                                              ; preds = %455
  %462 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %463 = call i64 @STREAM_STATUS(%struct.TYPE_32__* %462)
  %464 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %465 = icmp eq i64 %463, %464
  br i1 %465, label %446, label %466

466:                                              ; preds = %461, %454
  %467 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %468 = call i64 @STREAM_STATUS(%struct.TYPE_32__* %467)
  %469 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %470 = icmp ne i64 %468, %469
  br i1 %470, label %471, label %473

471:                                              ; preds = %466
  %472 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %472, i64* %5, align 8
  br label %526

473:                                              ; preds = %466
  %474 = load i32, i32* %8, align 4
  %475 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %476 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %475, i32 0, i32 1
  store i32 %474, i32* %476, align 8
  %477 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %478 = call i32 @READ_U32(%struct.TYPE_32__* %477, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %479 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %480 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %479, i32 0, i32 2
  store i32 %478, i32* %480, align 4
  %481 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %482 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %481, i32 0, i32 2
  %483 = load i32, i32* %482, align 4
  %484 = mul nsw i32 %483, 8000000
  %485 = sext i32 %484 to i64
  %486 = load i64, i64* %12, align 8
  %487 = sdiv i64 %485, %486
  %488 = trunc i64 %487 to i32
  %489 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %490 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %489, i32 0, i32 1
  store i32 %488, i32* %490, align 4
  %491 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %492 = call i64 @STREAM_SEEKABLE(%struct.TYPE_32__* %491)
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %494, label %500

494:                                              ; preds = %473
  %495 = load i32, i32* @VC_CONTAINER_CAPS_CAN_SEEK, align 4
  %496 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %497 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %496, i32 0, i32 3
  %498 = load i32, i32* %497, align 8
  %499 = or i32 %498, %495
  store i32 %499, i32* %497, align 8
  br label %500

500:                                              ; preds = %494, %473
  %501 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %502 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %501, i32 0, i32 2
  %503 = load %struct.TYPE_31__*, %struct.TYPE_31__** %502, align 8
  %504 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %503, i32 0, i32 2
  store i32 (%struct.TYPE_32__*)* @wav_reader_close, i32 (%struct.TYPE_32__*)** %504, align 8
  %505 = load i32, i32* @wav_reader_read, align 4
  %506 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %507 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %506, i32 0, i32 2
  %508 = load %struct.TYPE_31__*, %struct.TYPE_31__** %507, align 8
  %509 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %508, i32 0, i32 1
  store i32 %505, i32* %509, align 4
  %510 = load i32, i32* @wav_reader_seek, align 4
  %511 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %512 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %511, i32 0, i32 2
  %513 = load %struct.TYPE_31__*, %struct.TYPE_31__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %513, i32 0, i32 0
  store i32 %510, i32* %514, align 8
  %515 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %516 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %517 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %516, i32 0, i32 1
  %518 = load i32, i32* %517, align 8
  %519 = call i64 @SEEK(%struct.TYPE_32__* %515, i32 %518)
  store i64 %519, i64* %5, align 8
  %520 = load i64, i64* %5, align 8
  %521 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %522 = icmp ne i64 %520, %521
  br i1 %522, label %523, label %524

523:                                              ; preds = %500
  br label %526

524:                                              ; preds = %500
  %525 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %525, i64* %2, align 8
  br label %537

526:                                              ; preds = %523, %471, %189
  %527 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %528 = load i64, i64* %5, align 8
  %529 = call i32 @LOG_DEBUG(%struct.TYPE_32__* %527, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i64 %528)
  %530 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %531 = icmp ne %struct.TYPE_33__* %530, null
  br i1 %531, label %532, label %535

532:                                              ; preds = %526
  %533 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %534 = call i32 @wav_reader_close(%struct.TYPE_32__* %533)
  br label %535

535:                                              ; preds = %532, %526
  %536 = load i64, i64* %5, align 8
  store i64 %536, i64* %2, align 8
  br label %537

537:                                              ; preds = %535, %524, %217, %183, %174, %160, %87, %53, %39, %25
  %538 = load i64, i64* %2, align 8
  ret i64 %538
}

declare dso_local i32 @PEEK_BYTES(%struct.TYPE_32__*, i8*, i32) #1

declare dso_local i64 @VC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @SKIP_FOURCC(%struct.TYPE_32__*, i8*) #1

declare dso_local i32 @SKIP_U32(%struct.TYPE_32__*, i8*) #1

declare dso_local i32 @STREAM_POSITION(%struct.TYPE_32__*) #1

declare dso_local i64 @READ_FOURCC(%struct.TYPE_32__*, i8*) #1

declare dso_local i32 @READ_U32(%struct.TYPE_32__*, i8*) #1

declare dso_local i32 @SKIP_BYTES(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_32__*) #1

declare dso_local i8* @READ_U16(%struct.TYPE_32__*, i8*) #1

declare dso_local i32 @SKIP_U16(%struct.TYPE_32__*, i8*) #1

declare dso_local i32 @READ_GUID(%struct.TYPE_32__*, i32*, i8*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i64 @waveformat_to_codec(i64) #1

declare dso_local %struct.TYPE_33__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_33__*, i32, i32) #1

declare dso_local %struct.TYPE_34__* @vc_container_allocate_track(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @READ_BYTES(%struct.TYPE_32__*, i32*, i32) #1

declare dso_local i64 @STREAM_SEEKABLE(%struct.TYPE_32__*) #1

declare dso_local i32 @wav_reader_close(%struct.TYPE_32__*) #1

declare dso_local i64 @SEEK(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_32__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
