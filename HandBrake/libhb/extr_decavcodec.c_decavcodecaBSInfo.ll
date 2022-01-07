; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_decavcodecaBSInfo.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_decavcodecaBSInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_50__ = type { i64, %struct.TYPE_61__*, %struct.TYPE_53__*, %struct.TYPE_68__* }
%struct.TYPE_61__ = type { i32* }
%struct.TYPE_53__ = type { i64, %struct.TYPE_66__ }
%struct.TYPE_66__ = type { %struct.TYPE_65__ }
%struct.TYPE_65__ = type { %struct.TYPE_64__ }
%struct.TYPE_64__ = type { i32, i32 }
%struct.TYPE_68__ = type { i64 }
%struct.TYPE_52__ = type { i32, i8*, %struct.TYPE_52__*, %struct.TYPE_67__ }
%struct.TYPE_67__ = type { i32 }
%struct.TYPE_51__ = type { i32, i64, i32, i32*, i32, i32, i8*, %struct.TYPE_60__, i32, i32, i32 }
%struct.TYPE_60__ = type { i64, i32 }
%struct.TYPE_59__ = type { i32, i32 }
%struct.TYPE_58__ = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i64, %struct.TYPE_63__ }
%struct.TYPE_63__ = type { i32, i32 }
%struct.TYPE_57__ = type { %struct.TYPE_62__** }
%struct.TYPE_62__ = type { i32 }
%struct.TYPE_54__ = type { i8*, i32 }
%struct.TYPE_56__ = type { i64, i64, i32, i32 }
%struct.TYPE_55__ = type { i8** }

@decavcodecaBSInfo.codec_name = internal global [64 x i8] zeroinitializer, align 16
@AV_SAMPLE_FMT_FLT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"err_detect\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"crccheck+explode\00", align 1
@AV_CODEC_ID_TRUEHD = common dso_local global i64 0, align 8
@AV_CH_LAYOUT_MONO = common dso_local global i64 0, align 8
@AV_CH_LAYOUT_STEREO = common dso_local global i64 0, align 8
@AVERROR_EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [82 x i8] c"decavcodecaBSInfo: warning: invalid frame sample_rate! Using context sample_rate.\00", align 1
@AV_MATRIX_ENCODING_NONE = common dso_local global i8* null, align 8
@AV_FRAME_DATA_MATRIXENCODING = common dso_local global i32 0, align 4
@AV_MATRIX_ENCODING_DOLBY = common dso_local global i8* null, align 8
@AV_MATRIX_ENCODING_DPLII = common dso_local global i8* null, align 8
@AV_CH_LAYOUT_STEREO_DOWNMIX = common dso_local global i64 0, align 8
@AV_CODEC_ID_AC3 = common dso_local global i64 0, align 8
@AV_CODEC_ID_EAC3 = common dso_local global i64 0, align 8
@AV_AUDIO_SERVICE_TYPE_KARAOKE = common dso_local global i64 0, align 8
@AV_CODEC_ID_AAC = common dso_local global i64 0, align 8
@hb_libav_chan_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_50__*, %struct.TYPE_52__*, %struct.TYPE_51__*)* @decavcodecaBSInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decavcodecaBSInfo(%struct.TYPE_50__* %0, %struct.TYPE_52__* %1, %struct.TYPE_51__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_50__*, align 8
  %6 = alloca %struct.TYPE_52__*, align 8
  %7 = alloca %struct.TYPE_51__*, align 8
  %8 = alloca %struct.TYPE_68__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_53__*, align 8
  %12 = alloca %struct.TYPE_59__*, align 8
  %13 = alloca %struct.TYPE_58__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_57__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_54__, align 8
  %24 = alloca %struct.TYPE_56__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_55__*, align 8
  store %struct.TYPE_50__* %0, %struct.TYPE_50__** %5, align 8
  store %struct.TYPE_52__* %1, %struct.TYPE_52__** %6, align 8
  store %struct.TYPE_51__* %2, %struct.TYPE_51__** %7, align 8
  %28 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_68__*, %struct.TYPE_68__** %29, align 8
  store %struct.TYPE_68__* %30, %struct.TYPE_68__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %31 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_53__*, %struct.TYPE_53__** %32, align 8
  store %struct.TYPE_53__* %33, %struct.TYPE_53__** %11, align 8
  %34 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %35 = call i32 @memset(%struct.TYPE_51__* %34, i32 0, i32 80)
  %36 = load %struct.TYPE_68__*, %struct.TYPE_68__** %8, align 8
  %37 = icmp ne %struct.TYPE_68__* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %3
  %39 = load %struct.TYPE_68__*, %struct.TYPE_68__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %45 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %46 = call i32 @decavcodecaInfo(%struct.TYPE_50__* %44, %struct.TYPE_51__* %45)
  store i32 %46, i32* %4, align 4
  br label %485

47:                                               ; preds = %38, %3
  %48 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call %struct.TYPE_59__* @avcodec_find_decoder(i64 %50)
  store %struct.TYPE_59__* %51, %struct.TYPE_59__** %12, align 8
  %52 = load %struct.TYPE_59__*, %struct.TYPE_59__** %12, align 8
  %53 = icmp ne %struct.TYPE_59__* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  store i32 -1, i32* %4, align 4
  br label %485

55:                                               ; preds = %47
  %56 = load %struct.TYPE_59__*, %struct.TYPE_59__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @strncpy(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @decavcodecaBSInfo.codec_name, i64 0, i64 0), i32 %58, i32 63)
  %60 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %60, i32 0, i32 10
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_59__*, %struct.TYPE_59__** %12, align 8
  %63 = call %struct.TYPE_58__* @avcodec_alloc_context3(%struct.TYPE_59__* %62)
  store %struct.TYPE_58__* %63, %struct.TYPE_58__** %13, align 8
  store i32* null, i32** %14, align 8
  %64 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_61__*, %struct.TYPE_61__** %65, align 8
  %67 = icmp ne %struct.TYPE_61__* %66, null
  br i1 %67, label %68, label %99

68:                                               ; preds = %55
  %69 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_61__*, %struct.TYPE_61__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %99

75:                                               ; preds = %68
  %76 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_61__*, %struct.TYPE_61__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = bitcast i32* %80 to %struct.TYPE_57__*
  store %struct.TYPE_57__* %81, %struct.TYPE_57__** %15, align 8
  %82 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %83 = load %struct.TYPE_57__*, %struct.TYPE_57__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_62__**, %struct.TYPE_62__*** %84, align 8
  %86 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_62__*, %struct.TYPE_62__** %85, i64 %88
  %90 = load %struct.TYPE_62__*, %struct.TYPE_62__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @avcodec_parameters_to_context(%struct.TYPE_58__* %82, i32 %92)
  %94 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %104

99:                                               ; preds = %68, %55
  %100 = load %struct.TYPE_59__*, %struct.TYPE_59__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32* @av_parser_init(i32 %102)
  store i32* %103, i32** %14, align 8
  br label %104

104:                                              ; preds = %99, %75
  %105 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %106 = load %struct.TYPE_59__*, %struct.TYPE_59__** %12, align 8
  %107 = load i32, i32* @AV_SAMPLE_FMT_FLT, align 4
  %108 = call i32 @hb_ff_set_sample_fmt(%struct.TYPE_58__* %105, %struct.TYPE_59__* %106, i32 %107)
  store i32* null, i32** %16, align 8
  %109 = call i32 @av_dict_set(i32** %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %110 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %111 = load %struct.TYPE_59__*, %struct.TYPE_59__** %12, align 8
  %112 = call i64 @hb_avcodec_open(%struct.TYPE_58__* %110, %struct.TYPE_59__* %111, i32** %16, i32 0)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %104
  %115 = call i32 @av_dict_free(i32** %16)
  store i32 -1, i32* %4, align 4
  br label %485

116:                                              ; preds = %104
  %117 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %118 = icmp ne %struct.TYPE_53__* %117, null
  br i1 %118, label %119, label %138

119:                                              ; preds = %116
  %120 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %126, i32 0, i32 10
  %128 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  %129 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %135, i32 0, i32 10
  %137 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  br label %138

138:                                              ; preds = %119, %116
  %139 = call i32 @av_dict_free(i32** %16)
  br label %140

140:                                              ; preds = %460, %138
  %141 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %142 = icmp ne %struct.TYPE_52__* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  br label %147

147:                                              ; preds = %143, %140
  %148 = phi i1 [ false, %140 ], [ %146, %143 ]
  br i1 %148, label %149, label %464

149:                                              ; preds = %147
  store i32 0, i32* %18, align 4
  br label %150

150:                                              ; preds = %454, %240, %203, %149
  %151 = load i32, i32* %18, align 4
  %152 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  br label %160

160:                                              ; preds = %156, %150
  %161 = phi i1 [ false, %150 ], [ %159, %156 ]
  br i1 %161, label %162, label %460

162:                                              ; preds = %160
  store i32 0, i32* %21, align 4
  %163 = load i32*, i32** %14, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %188

165:                                              ; preds = %162
  %166 = load i32*, i32** %14, align 8
  %167 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %168 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = load i32, i32* %18, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %18, align 4
  %178 = sub nsw i32 %176, %177
  %179 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @av_parser_parse2(i32* %166, %struct.TYPE_58__* %167, i8** %17, i32* %19, i8* %173, i32 %178, i32 %182, i32 %186, i32 0)
  store i32 %187, i32* %20, align 4
  br label %200

188:                                              ; preds = %162
  %189 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %189, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = load i32, i32* %18, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  store i8* %194, i8** %17, align 8
  %195 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %18, align 4
  %199 = sub nsw i32 %197, %198
  store i32 %199, i32* %19, align 4
  store i32 %199, i32* %20, align 4
  br label %200

200:                                              ; preds = %188, %165
  %201 = load i32, i32* %19, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = load i32, i32* %20, align 4
  %205 = load i32, i32* %18, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %18, align 4
  br label %150

207:                                              ; preds = %200
  %208 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %209 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @AV_CODEC_ID_TRUEHD, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %223

213:                                              ; preds = %207
  %214 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @AV_CH_LAYOUT_MONO, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %213
  store i32 1, i32* %21, align 4
  %220 = load i64, i64* @AV_CH_LAYOUT_STEREO, align 8
  %221 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %221, i32 0, i32 9
  store i64 %220, i64* %222, align 8
  br label %226

223:                                              ; preds = %213, %207
  %224 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %224, i32 0, i32 9
  store i64 0, i64* %225, align 8
  br label %226

226:                                              ; preds = %223, %219
  %227 = call i32 @av_init_packet(%struct.TYPE_54__* %23)
  %228 = load i8*, i8** %17, align 8
  %229 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %23, i32 0, i32 0
  store i8* %228, i8** %229, align 8
  %230 = load i32, i32* %19, align 4
  %231 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %23, i32 0, i32 1
  store i32 %230, i32* %231, align 8
  %232 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %233 = call i32 @avcodec_send_packet(%struct.TYPE_58__* %232, %struct.TYPE_54__* %23)
  store i32 %233, i32* %22, align 4
  %234 = load i32, i32* %22, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %226
  %237 = load i32, i32* %22, align 4
  %238 = load i32, i32* @AVERROR_EOF, align 4
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %240, label %245

240:                                              ; preds = %236
  %241 = load i32, i32* %20, align 4
  %242 = load i32, i32* %18, align 4
  %243 = add nsw i32 %242, %241
  store i32 %243, i32* %18, align 4
  %244 = call i32 @av_packet_unref(%struct.TYPE_54__* %23)
  br label %150

245:                                              ; preds = %236, %226
  store %struct.TYPE_56__* null, %struct.TYPE_56__** %24, align 8
  br label %246

246:                                              ; preds = %451, %245
  %247 = load %struct.TYPE_56__*, %struct.TYPE_56__** %24, align 8
  %248 = icmp eq %struct.TYPE_56__* %247, null
  br i1 %248, label %249, label %251

249:                                              ; preds = %246
  %250 = call %struct.TYPE_56__* (...) @av_frame_alloc()
  store %struct.TYPE_56__* %250, %struct.TYPE_56__** %24, align 8
  br label %251

251:                                              ; preds = %249, %246
  %252 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %253 = load %struct.TYPE_56__*, %struct.TYPE_56__** %24, align 8
  %254 = call i32 @avcodec_receive_frame(%struct.TYPE_58__* %252, %struct.TYPE_56__* %253)
  store i32 %254, i32* %22, align 4
  %255 = load i32, i32* %22, align 4
  %256 = icmp sge i32 %255, 0
  br i1 %256, label %257, label %450

257:                                              ; preds = %251
  %258 = load %struct.TYPE_56__*, %struct.TYPE_56__** %24, align 8
  %259 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %257
  %263 = load %struct.TYPE_56__*, %struct.TYPE_56__** %24, align 8
  %264 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %266, i32 0, i32 7
  %268 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %267, i32 0, i32 0
  store i64 %265, i64* %268, align 8
  br label %277

269:                                              ; preds = %257
  %270 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %271 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %273, i32 0, i32 7
  %275 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %274, i32 0, i32 0
  store i64 %272, i64* %275, align 8
  %276 = call i32 @hb_log(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0))
  br label %277

277:                                              ; preds = %269, %262
  %278 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %278, i32 0, i32 7
  %280 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %279, i32 0, i32 1
  store i32 1, i32* %280, align 8
  %281 = load %struct.TYPE_56__*, %struct.TYPE_56__** %24, align 8
  %282 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %284, i32 0, i32 9
  store i32 %283, i32* %285, align 4
  %286 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %287 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %286, i32 0, i32 8
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %289, i32 0, i32 8
  store i32 %288, i32* %290, align 8
  %291 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %292 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = call i32 @av_get_bits_per_sample(i64 %293)
  store i32 %294, i32* %25, align 4
  %295 = load %struct.TYPE_56__*, %struct.TYPE_56__** %24, align 8
  %296 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %277
  %300 = load %struct.TYPE_56__*, %struct.TYPE_56__** %24, align 8
  %301 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = call i32 @av_get_channel_layout_nb_channels(i64 %302)
  store i32 %303, i32* %26, align 4
  br label %308

304:                                              ; preds = %277
  %305 = load %struct.TYPE_56__*, %struct.TYPE_56__** %24, align 8
  %306 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  store i32 %307, i32* %26, align 4
  br label %308

308:                                              ; preds = %304, %299
  %309 = load i32, i32* %25, align 4
  %310 = load i32, i32* %26, align 4
  %311 = mul nsw i32 %309, %310
  %312 = sext i32 %311 to i64
  %313 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %313, i32 0, i32 7
  %315 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = mul nsw i64 %312, %316
  %318 = trunc i64 %317 to i32
  %319 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %319, i32 0, i32 0
  store i32 %318, i32* %320, align 8
  %321 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = icmp sle i32 %323, 0
  br i1 %324, label %325, label %341

325:                                              ; preds = %308
  %326 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %327 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %326, i32 0, i32 3
  %328 = load i64, i64* %327, align 8
  %329 = icmp sgt i64 %328, 0
  br i1 %329, label %330, label %337

330:                                              ; preds = %325
  %331 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %332 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %331, i32 0, i32 3
  %333 = load i64, i64* %332, align 8
  %334 = trunc i64 %333 to i32
  %335 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %335, i32 0, i32 0
  store i32 %334, i32* %336, align 8
  br label %340

337:                                              ; preds = %325
  %338 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %338, i32 0, i32 0
  store i32 1, i32* %339, align 8
  br label %340

340:                                              ; preds = %337, %330
  br label %341

341:                                              ; preds = %340, %308
  %342 = load i32, i32* %21, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %351

344:                                              ; preds = %341
  %345 = load i64, i64* @AV_CH_LAYOUT_MONO, align 8
  %346 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %346, i32 0, i32 1
  store i64 %345, i64* %347, align 8
  %348 = load i8*, i8** @AV_MATRIX_ENCODING_NONE, align 8
  %349 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %350 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %349, i32 0, i32 6
  store i8* %348, i8** %350, align 8
  br label %390

351:                                              ; preds = %341
  %352 = load %struct.TYPE_56__*, %struct.TYPE_56__** %24, align 8
  %353 = load i32, i32* @AV_FRAME_DATA_MATRIXENCODING, align 4
  %354 = call %struct.TYPE_55__* @av_frame_get_side_data(%struct.TYPE_56__* %352, i32 %353)
  store %struct.TYPE_55__* %354, %struct.TYPE_55__** %27, align 8
  %355 = icmp ne %struct.TYPE_55__* %354, null
  br i1 %355, label %356, label %363

356:                                              ; preds = %351
  %357 = load %struct.TYPE_55__*, %struct.TYPE_55__** %27, align 8
  %358 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %357, i32 0, i32 0
  %359 = load i8**, i8*** %358, align 8
  %360 = load i8*, i8** %359, align 8
  %361 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %361, i32 0, i32 6
  store i8* %360, i8** %362, align 8
  br label %367

363:                                              ; preds = %351
  %364 = load i8*, i8** @AV_MATRIX_ENCODING_NONE, align 8
  %365 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %365, i32 0, i32 6
  store i8* %364, i8** %366, align 8
  br label %367

367:                                              ; preds = %363, %356
  %368 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %369 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %368, i32 0, i32 6
  %370 = load i8*, i8** %369, align 8
  %371 = load i8*, i8** @AV_MATRIX_ENCODING_DOLBY, align 8
  %372 = icmp eq i8* %370, %371
  br i1 %372, label %379, label %373

373:                                              ; preds = %367
  %374 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %375 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %374, i32 0, i32 6
  %376 = load i8*, i8** %375, align 8
  %377 = load i8*, i8** @AV_MATRIX_ENCODING_DPLII, align 8
  %378 = icmp eq i8* %376, %377
  br i1 %378, label %379, label %383

379:                                              ; preds = %373, %367
  %380 = load i64, i64* @AV_CH_LAYOUT_STEREO_DOWNMIX, align 8
  %381 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %382 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %381, i32 0, i32 1
  store i64 %380, i64* %382, align 8
  br label %389

383:                                              ; preds = %373
  %384 = load %struct.TYPE_56__*, %struct.TYPE_56__** %24, align 8
  %385 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %384, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %387, i32 0, i32 1
  store i64 %386, i64* %388, align 8
  br label %389

389:                                              ; preds = %383, %379
  br label %390

390:                                              ; preds = %389, %344
  %391 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %392 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %391, i32 0, i32 1
  %393 = load i64, i64* %392, align 8
  %394 = icmp eq i64 %393, 0
  br i1 %394, label %395, label %402

395:                                              ; preds = %390
  %396 = load %struct.TYPE_56__*, %struct.TYPE_56__** %24, align 8
  %397 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 8
  %399 = call i64 @av_get_default_channel_layout(i32 %398)
  %400 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %401 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %400, i32 0, i32 1
  store i64 %399, i64* %401, align 8
  br label %402

402:                                              ; preds = %395, %390
  %403 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %404 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = load i64, i64* @AV_CODEC_ID_AC3, align 8
  %407 = icmp eq i64 %405, %406
  br i1 %407, label %414, label %408

408:                                              ; preds = %402
  %409 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %410 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* @AV_CODEC_ID_EAC3, align 8
  %413 = icmp eq i64 %411, %412
  br i1 %413, label %414, label %431

414:                                              ; preds = %408, %402
  %415 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %416 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %415, i32 0, i32 4
  %417 = load i64, i64* %416, align 8
  %418 = load i64, i64* @AV_AUDIO_SERVICE_TYPE_KARAOKE, align 8
  %419 = icmp eq i64 %417, %418
  br i1 %419, label %420, label %423

420:                                              ; preds = %414
  %421 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %422 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %421, i32 0, i32 2
  store i32 7, i32* %422, align 8
  br label %430

423:                                              ; preds = %414
  %424 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %425 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %424, i32 0, i32 4
  %426 = load i64, i64* %425, align 8
  %427 = trunc i64 %426 to i32
  %428 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %429 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %428, i32 0, i32 2
  store i32 %427, i32* %429, align 8
  br label %430

430:                                              ; preds = %423, %420
  br label %447

431:                                              ; preds = %408
  %432 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %433 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %432, i32 0, i32 0
  %434 = load i64, i64* %433, align 8
  %435 = load i64, i64* @AV_CODEC_ID_AAC, align 8
  %436 = icmp eq i64 %434, %435
  br i1 %436, label %437, label %446

437:                                              ; preds = %431
  %438 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %439 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %438, i32 0, i32 5
  %440 = load i64, i64* %439, align 8
  %441 = icmp eq i64 %440, 0
  br i1 %441, label %442, label %446

442:                                              ; preds = %437
  %443 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %444 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %445 = call i32 @parse_adts_extradata(%struct.TYPE_53__* %443, %struct.TYPE_58__* %444, %struct.TYPE_54__* %23)
  br label %446

446:                                              ; preds = %442, %437, %431
  br label %447

447:                                              ; preds = %446, %430
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %448 = load %struct.TYPE_56__*, %struct.TYPE_56__** %24, align 8
  %449 = call i32 @av_frame_unref(%struct.TYPE_56__* %448)
  br label %454

450:                                              ; preds = %251
  br label %451

451:                                              ; preds = %450
  %452 = load i32, i32* %22, align 4
  %453 = icmp sge i32 %452, 0
  br i1 %453, label %246, label %454

454:                                              ; preds = %451, %447
  %455 = call i32 @av_packet_unref(%struct.TYPE_54__* %23)
  %456 = call i32 @av_frame_free(%struct.TYPE_56__** %24)
  %457 = load i32, i32* %20, align 4
  %458 = load i32, i32* %18, align 4
  %459 = add nsw i32 %458, %457
  store i32 %459, i32* %18, align 4
  br label %150

460:                                              ; preds = %160
  %461 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %462 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %461, i32 0, i32 2
  %463 = load %struct.TYPE_52__*, %struct.TYPE_52__** %462, align 8
  store %struct.TYPE_52__* %463, %struct.TYPE_52__** %6, align 8
  br label %140

464:                                              ; preds = %147
  %465 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %466 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %465, i32 0, i32 7
  %467 = load i32, i32* %466, align 4
  %468 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %469 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %468, i32 0, i32 5
  store i32 %467, i32* %469, align 4
  %470 = load %struct.TYPE_58__*, %struct.TYPE_58__** %13, align 8
  %471 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %470, i32 0, i32 6
  %472 = load i32, i32* %471, align 8
  %473 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %474 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %473, i32 0, i32 4
  store i32 %472, i32* %474, align 8
  %475 = load %struct.TYPE_51__*, %struct.TYPE_51__** %7, align 8
  %476 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %475, i32 0, i32 3
  store i32* @hb_libav_chan_map, i32** %476, align 8
  %477 = load i32*, i32** %14, align 8
  %478 = icmp ne i32* %477, null
  br i1 %478, label %479, label %482

479:                                              ; preds = %464
  %480 = load i32*, i32** %14, align 8
  %481 = call i32 @av_parser_close(i32* %480)
  br label %482

482:                                              ; preds = %479, %464
  %483 = call i32 @hb_avcodec_free_context(%struct.TYPE_58__** %13)
  %484 = load i32, i32* %9, align 4
  store i32 %484, i32* %4, align 4
  br label %485

485:                                              ; preds = %482, %114, %54, %43
  %486 = load i32, i32* %4, align 4
  ret i32 %486
}

declare dso_local i32 @memset(%struct.TYPE_51__*, i32, i32) #1

declare dso_local i32 @decavcodecaInfo(%struct.TYPE_50__*, %struct.TYPE_51__*) #1

declare dso_local %struct.TYPE_59__* @avcodec_find_decoder(i64) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local %struct.TYPE_58__* @avcodec_alloc_context3(%struct.TYPE_59__*) #1

declare dso_local i32 @avcodec_parameters_to_context(%struct.TYPE_58__*, i32) #1

declare dso_local i32* @av_parser_init(i32) #1

declare dso_local i32 @hb_ff_set_sample_fmt(%struct.TYPE_58__*, %struct.TYPE_59__*, i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i64 @hb_avcodec_open(%struct.TYPE_58__*, %struct.TYPE_59__*, i32**, i32) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i32 @av_parser_parse2(i32*, %struct.TYPE_58__*, i8**, i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_54__*) #1

declare dso_local i32 @avcodec_send_packet(%struct.TYPE_58__*, %struct.TYPE_54__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_54__*) #1

declare dso_local %struct.TYPE_56__* @av_frame_alloc(...) #1

declare dso_local i32 @avcodec_receive_frame(%struct.TYPE_58__*, %struct.TYPE_56__*) #1

declare dso_local i32 @hb_log(i8*) #1

declare dso_local i32 @av_get_bits_per_sample(i64) #1

declare dso_local i32 @av_get_channel_layout_nb_channels(i64) #1

declare dso_local %struct.TYPE_55__* @av_frame_get_side_data(%struct.TYPE_56__*, i32) #1

declare dso_local i64 @av_get_default_channel_layout(i32) #1

declare dso_local i32 @parse_adts_extradata(%struct.TYPE_53__*, %struct.TYPE_58__*, %struct.TYPE_54__*) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_56__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_56__**) #1

declare dso_local i32 @av_parser_close(i32*) #1

declare dso_local i32 @hb_avcodec_free_context(%struct.TYPE_58__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
