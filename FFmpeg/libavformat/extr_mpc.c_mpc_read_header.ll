; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpc.c_mpc_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpc.c_mpc_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_23__*, i32, %struct.TYPE_19__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_20__ = type { i32, i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32*, i32, i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Not a Musepack file\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Can demux Musepack SV7, got version %02X\0A\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Too many frames, seeking is not possible\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Cannot allocate seektable\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Container reports no frames\0A\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_MUSEPACK7 = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@mpc_rate = common dso_local global i32* null, align 8
@MPC_FRAMESIZE = common dso_local global i32 0, align 4
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @mpc_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_read_header(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %9, %struct.TYPE_19__** %4, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %13 = call i64 @avio_rl24(%struct.TYPE_23__* %12)
  %14 = call i64 @MKTAG(i8 signext 77, i8 signext 80, i8 signext 43, i32 0)
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %18 = load i32, i32* @AV_LOG_ERROR, align 4
  %19 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %17, i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %20, i32* %2, align 4
  br label %213

21:                                               ; preds = %1
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %25 = call i32 @avio_r8(%struct.TYPE_23__* %24)
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 7
  br i1 %31, label %32, label %45

32:                                               ; preds = %21
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 23
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %39 = load i32, i32* @AV_LOG_ERROR, align 4
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %38, i32 %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %44, i32* %2, align 4
  br label %213

45:                                               ; preds = %32, %21
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %47, align 8
  %49 = call i32 @avio_rl32(%struct.TYPE_23__* %48)
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = load i32, i32* @UINT_MAX, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp uge i64 %56, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %45
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %62 = load i32, i32* @AV_LOG_ERROR, align 4
  %63 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %61, i32 %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %64, i32* %2, align 4
  br label %213

65:                                               ; preds = %45
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %65
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call i32 @av_malloc(i32 %76)
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %70
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %86 = load i32, i32* @AV_LOG_ERROR, align 4
  %87 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %85, i32 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = call i32 @AVERROR(i32 %88)
  store i32 %89, i32* %2, align 4
  br label %213

90:                                               ; preds = %70
  br label %95

91:                                               ; preds = %65
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %93 = load i32, i32* @AV_LOG_WARNING, align 4
  %94 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %92, i32 %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %95

95:                                               ; preds = %91, %90
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 6
  store i64 0, i64* %97, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 2
  store i32 -1, i32* %99, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 3
  store i32 8, i32* %101, align 4
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 5
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %105 = call %struct.TYPE_20__* @avformat_new_stream(%struct.TYPE_21__* %104, i32* null)
  store %struct.TYPE_20__* %105, %struct.TYPE_20__** %5, align 8
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %107 = icmp ne %struct.TYPE_20__* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %95
  br label %207

109:                                              ; preds = %95
  %110 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 6
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* @AV_CODEC_ID_MUSEPACK7, align 4
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 5
  store i32 %115, i32* %119, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  store i32 2, i32* %123, align 8
  %124 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 4
  store i32 %124, i32* %128, align 4
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 1
  store i32 16, i32* %132, align 4
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %135, align 8
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %138, align 8
  %140 = call i64 @ff_get_extradata(%struct.TYPE_21__* %133, %struct.TYPE_22__* %136, %struct.TYPE_23__* %139, i32 16)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %109
  br label %207

143:                                              ; preds = %109
  %144 = load i32*, i32** @mpc_rate, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 3
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %144, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 3
  store i32 %155, i32* %159, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %161 = load i32, i32* @MPC_FRAMESIZE, align 4
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @avpriv_set_pts_info(%struct.TYPE_20__* %160, i32 32, i32 %161, i32 %166)
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 1
  store i64 0, i64* %169, align 8
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %206

183:                                              ; preds = %143
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %185, align 8
  %187 = call i32 @avio_tell(%struct.TYPE_23__* %186)
  store i32 %187, i32* %6, align 4
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %189 = call i32 @ff_ape_parse_tag(%struct.TYPE_21__* %188)
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %194 = call i32 @av_dict_get(i32 %192, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %183
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %198 = call i32 @ff_id3v1_read(%struct.TYPE_21__* %197)
  br label %199

199:                                              ; preds = %196, %183
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %201, align 8
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* @SEEK_SET, align 4
  %205 = call i32 @avio_seek(%struct.TYPE_23__* %202, i32 %203, i32 %204)
  br label %206

206:                                              ; preds = %199, %143
  store i32 0, i32* %2, align 4
  br label %213

207:                                              ; preds = %142, %108
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 4
  %210 = call i32 @av_freep(i32* %209)
  %211 = load i32, i32* @ENOMEM, align 4
  %212 = call i32 @AVERROR(i32 %211)
  store i32 %212, i32* %2, align 4
  br label %213

213:                                              ; preds = %207, %206, %84, %60, %37, %16
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local i64 @avio_rl24(%struct.TYPE_23__*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*, ...) #1

declare dso_local i32 @avio_r8(%struct.TYPE_23__*) #1

declare dso_local i32 @avio_rl32(%struct.TYPE_23__*) #1

declare dso_local i32 @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_20__* @avformat_new_stream(%struct.TYPE_21__*, i32*) #1

declare dso_local i64 @ff_get_extradata(%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @avio_tell(%struct.TYPE_23__*) #1

declare dso_local i32 @ff_ape_parse_tag(%struct.TYPE_21__*) #1

declare dso_local i32 @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local i32 @ff_id3v1_read(%struct.TYPE_21__*) #1

declare dso_local i32 @avio_seek(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @av_freep(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
