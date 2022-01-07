; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_decavcodecvInit.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_decavcodecvInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_41__*, %struct.TYPE_42__* }
%struct.TYPE_41__ = type { i32, i64, %struct.TYPE_36__, i64, i32 }
%struct.TYPE_36__ = type { i32, i32 }
%struct.TYPE_42__ = type { i32, i32*, i32*, i32, %struct.TYPE_41__*, %struct.TYPE_34__*, i32, i32*, %struct.TYPE_38__, %struct.TYPE_30__*, i32, i64 }
%struct.TYPE_34__ = type { i32, i64, %struct.TYPE_35__, i64, i32, i32, i32, i32 }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_38__ = type { i64, %struct.TYPE_37__, i32 }
%struct.TYPE_37__ = type { i64, i32, i32, i64, i32, i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_41__*, %struct.TYPE_40__, i32 }
%struct.TYPE_40__ = type { %struct.TYPE_32__*, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_39__* }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_33__** }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_28__ = type { i64, i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@HBTF_RAW_VIDEO = common dso_local global i32 0, align 4
@HB_FFMPEG_THREADS_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"decavcodecvInit: failed to find codec for id (%d)\00", align 1
@FF_BUG_AUTODETECT = common dso_local global i32 0, align 4
@AV_EF_CRCCHECK = common dso_local global i32 0, align 4
@FF_EC_GUESS_MVS = common dso_local global i32 0, align 4
@FF_EC_DEBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"refcounted_frames\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@HBTF_NO_IDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"output_corrupt\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"decavcodecvInit: avcodec_open failed\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"decavcodecvInit: av_frame_alloc failed\00", align 1
@CC608SUB = common dso_local global i64 0, align 8
@HB_SUBTITLE_EMBEDDED_CC_TAG = common dso_local global i64 0, align 8
@AV_CODEC_ID_HEVC = common dso_local global i64 0, align 8
@HB_QSV_CAP_RATECONTROL_LA = common dso_local global i32 0, align 4
@MFX_IOPATTERN_OUT_SYSTEM_MEMORY = common dso_local global i64 0, align 8
@MFX_IOPATTERN_OUT_VIDEO_MEMORY = common dso_local global i64 0, align 8
@hb_qsv_get_buffer = common dso_local global i32 0, align 4
@hb_qsv_get_format = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_30__*)* @decavcodecvInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decavcodecvInit(%struct.TYPE_27__* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_42__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  %11 = call %struct.TYPE_42__* @calloc(i32 1, i32 136)
  store %struct.TYPE_42__* %11, %struct.TYPE_42__** %6, align 8
  %12 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 2
  store %struct.TYPE_42__* %12, %struct.TYPE_42__** %14, align 8
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %16 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %16, i32 0, i32 9
  store %struct.TYPE_30__* %15, %struct.TYPE_30__** %17, align 8
  %18 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %19 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %19, i32 0, i32 11
  store i64 %18, i64* %20, align 8
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %22 = icmp ne %struct.TYPE_30__* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_41__*, %struct.TYPE_41__** %25, align 8
  %27 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %27, i32 0, i32 4
  store %struct.TYPE_41__* %26, %struct.TYPE_41__** %28, align 8
  br label %35

29:                                               ; preds = %2
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_41__*, %struct.TYPE_41__** %31, align 8
  %33 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %33, i32 0, i32 4
  store %struct.TYPE_41__* %32, %struct.TYPE_41__** %34, align 8
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_41__*, %struct.TYPE_41__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @HBTF_RAW_VIDEO, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %45, i32 0, i32 11
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %35
  %48 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %48, i32 0, i32 10
  %50 = call i32 @hb_buffer_list_clear(i32* %49)
  %51 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %51, i32 0, i32 9
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %52, align 8
  %54 = icmp ne %struct.TYPE_30__* %53, null
  br i1 %54, label %55, label %75

55:                                               ; preds = %47
  %56 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %56, i32 0, i32 9
  %58 = load %struct.TYPE_30__*, %struct.TYPE_30__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_41__*, %struct.TYPE_41__** %59, align 8
  %61 = icmp ne %struct.TYPE_41__* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %63, i32 0, i32 9
  %65 = load %struct.TYPE_30__*, %struct.TYPE_30__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_41__*, %struct.TYPE_41__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* @HB_FFMPEG_THREADS_AUTO, align 4
  %73 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %71, %62, %55, %47
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32* @avcodec_find_decoder(i32 %78)
  %80 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %80, i32 0, i32 7
  store i32* %79, i32** %81, align 8
  %82 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %82, i32 0, i32 7
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %75
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %89)
  store i32 1, i32* %3, align 4
  br label %261

91:                                               ; preds = %75
  %92 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %92, i32 0, i32 7
  %94 = load i32*, i32** %93, align 8
  %95 = call %struct.TYPE_34__* @avcodec_alloc_context3(i32* %94)
  %96 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %96, i32 0, i32 5
  store %struct.TYPE_34__* %95, %struct.TYPE_34__** %97, align 8
  %98 = load i32, i32* @FF_BUG_AUTODETECT, align 4
  %99 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %99, i32 0, i32 5
  %101 = load %struct.TYPE_34__*, %struct.TYPE_34__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %101, i32 0, i32 7
  store i32 %98, i32* %102, align 4
  %103 = load i32, i32* @AV_EF_CRCCHECK, align 4
  %104 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %104, i32 0, i32 5
  %106 = load %struct.TYPE_34__*, %struct.TYPE_34__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %106, i32 0, i32 6
  store i32 %103, i32* %107, align 8
  %108 = load i32, i32* @FF_EC_GUESS_MVS, align 4
  %109 = load i32, i32* @FF_EC_DEBLOCK, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %111, i32 0, i32 5
  %113 = load %struct.TYPE_34__*, %struct.TYPE_34__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %113, i32 0, i32 0
  store i32 %110, i32* %114, align 8
  %115 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_41__*, %struct.TYPE_41__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %196

121:                                              ; preds = %91
  %122 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %122, i32 0, i32 4
  %124 = load %struct.TYPE_41__*, %struct.TYPE_41__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %127, %struct.TYPE_31__** %7, align 8
  %128 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %128, i32 0, i32 5
  %130 = load %struct.TYPE_34__*, %struct.TYPE_34__** %129, align 8
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %132, align 8
  %134 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %134, i32 0, i32 4
  %136 = load %struct.TYPE_41__*, %struct.TYPE_41__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %133, i64 %138
  %140 = load %struct.TYPE_33__*, %struct.TYPE_33__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @avcodec_parameters_to_context(%struct.TYPE_34__* %130, i32 %142)
  store i32* null, i32** %8, align 8
  %144 = call i32 @av_dict_set(i32** %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %145 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %145, i32 0, i32 4
  %147 = load %struct.TYPE_41__*, %struct.TYPE_41__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @HBTF_NO_IDR, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %121
  %154 = call i32 @av_dict_set(i32** %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %155

155:                                              ; preds = %153, %121
  %156 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %156, i32 0, i32 5
  %158 = load %struct.TYPE_34__*, %struct.TYPE_34__** %157, align 8
  %159 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %159, i32 0, i32 7
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = call i64 @hb_avcodec_open(%struct.TYPE_34__* %158, i32* %161, i32** %8, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %155
  %168 = call i32 @av_dict_free(i32** %8)
  %169 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %261

170:                                              ; preds = %155
  %171 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_41__*, %struct.TYPE_41__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %177, i32 0, i32 5
  %179 = load %struct.TYPE_34__*, %struct.TYPE_34__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %180, i32 0, i32 1
  store i32 %176, i32* %181, align 4
  %182 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %182, i32 0, i32 4
  %184 = load %struct.TYPE_41__*, %struct.TYPE_41__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %188, i32 0, i32 5
  %190 = load %struct.TYPE_34__*, %struct.TYPE_34__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %191, i32 0, i32 0
  store i32 %187, i32* %192, align 8
  %193 = call i32 @av_dict_free(i32** %8)
  %194 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %194, i32 0, i32 0
  store i32 1, i32* %195, align 8
  br label %203

196:                                              ; preds = %91
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @av_parser_init(i32 %199)
  %201 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %196, %170
  %204 = call i32* (...) @av_frame_alloc()
  %205 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %205, i32 0, i32 2
  store i32* %204, i32** %206, align 8
  %207 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = icmp eq i32* %209, null
  br i1 %210, label %211, label %213

211:                                              ; preds = %203
  %212 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %261

213:                                              ; preds = %203
  %214 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %215 = icmp ne %struct.TYPE_30__* %214, null
  br i1 %215, label %216, label %260

216:                                              ; preds = %213
  %217 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i64 @hb_list_count(i32 %219)
  %221 = icmp sgt i64 %220, 0
  br i1 %221, label %222, label %260

222:                                              ; preds = %216
  store i32 0, i32* %10, align 4
  br label %223

223:                                              ; preds = %258, %222
  %224 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %10, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %10, align 4
  %229 = call %struct.TYPE_28__* @hb_list_item(i32 %226, i32 %227)
  store %struct.TYPE_28__* %229, %struct.TYPE_28__** %9, align 8
  %230 = icmp ne %struct.TYPE_28__* %229, null
  br i1 %230, label %231, label %259

231:                                              ; preds = %223
  %232 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @CC608SUB, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %258

237:                                              ; preds = %231
  %238 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @HB_SUBTITLE_EMBEDDED_CC_TAG, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %258

243:                                              ; preds = %237
  %244 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = icmp eq i32* %246, null
  br i1 %247, label %248, label %252

248:                                              ; preds = %243
  %249 = call i32* (...) @hb_list_init()
  %250 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %250, i32 0, i32 1
  store i32* %249, i32** %251, align 8
  br label %252

252:                                              ; preds = %248, %243
  %253 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %257 = call i32 @hb_list_add(i32* %255, %struct.TYPE_28__* %256)
  br label %258

258:                                              ; preds = %252, %237, %231
  br label %223

259:                                              ; preds = %223
  br label %260

260:                                              ; preds = %259, %216, %213
  store i32 0, i32* %3, align 4
  br label %261

261:                                              ; preds = %260, %211, %167, %86
  %262 = load i32, i32* %3, align 4
  ret i32 %262
}

declare dso_local %struct.TYPE_42__* @calloc(i32, i32) #1

declare dso_local i32 @hb_buffer_list_clear(i32*) #1

declare dso_local i32* @avcodec_find_decoder(i32) #1

declare dso_local i32 @hb_log(i8*, ...) #1

declare dso_local %struct.TYPE_34__* @avcodec_alloc_context3(i32*) #1

declare dso_local i32 @avcodec_parameters_to_context(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i64 @hb_avcodec_open(%struct.TYPE_34__*, i32*, i32**, i32) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i32 @av_parser_init(i32) #1

declare dso_local i32* @av_frame_alloc(...) #1

declare dso_local i64 @hb_list_count(i32) #1

declare dso_local %struct.TYPE_28__* @hb_list_item(i32, i32) #1

declare dso_local i32* @hb_list_init(...) #1

declare dso_local i32 @hb_list_add(i32*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
