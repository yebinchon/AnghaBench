; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_decavcodecaInit.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_decavcodecaInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, %struct.TYPE_42__*, %struct.TYPE_39__*, %struct.TYPE_45__* }
%struct.TYPE_42__ = type { i64, %struct.TYPE_43__ }
%struct.TYPE_43__ = type { %struct.TYPE_41__, %struct.TYPE_44__ }
%struct.TYPE_41__ = type { i64, %struct.TYPE_38__, i32, i32, i32, i32 }
%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_44__ = type { i32, i32, float, i32, i32 }
%struct.TYPE_39__ = type { i32* }
%struct.TYPE_45__ = type { i32*, %struct.TYPE_42__*, %struct.TYPE_36__*, i32*, i32, %struct.TYPE_39__*, i32, i64, i32, %struct.TYPE_31__* }
%struct.TYPE_36__ = type { i32, %struct.TYPE_37__, i32 }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_39__* }
%struct.TYPE_35__ = type { i32* }
%struct.TYPE_33__ = type { %struct.TYPE_40__** }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_32__ = type { float }
%struct.TYPE_34__ = type { i32 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_SAMPLE_FMT_FLT = common dso_local global i32 0, align 4
@HB_ACODEC_PASS_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"decavcodecaInit: hb_audio_resample_init() failed\00", align 1
@HB_AMIXDOWN_MONO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_5POINT1 = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_MONO = common dso_local global i64 0, align 8
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"refcounted_frames\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"drc_scale\00", align 1
@AV_OPT_FLAG_DECODING_PARAM = common dso_local global i32 0, align 4
@AV_OPT_FLAG_AUDIO_PARAM = common dso_local global i32 0, align 4
@AV_OPT_SEARCH_FAKE_OBJ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [68 x i8] c"decavcodecaInit: track %d, sanitizing out-of-range DRC %.2f to %.2f\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"decavcodecaInit: avcodec_open failed\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"decavcodecaInit: unknown option '%s'\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"decavcodecaInit: av_frame_alloc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*, %struct.TYPE_31__*)* @decavcodecaInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decavcodecaInit(%struct.TYPE_30__* %0, %struct.TYPE_31__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca %struct.TYPE_45__*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca float, align 4
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca [5 x i8], align 1
  %14 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %5, align 8
  %15 = call %struct.TYPE_45__* @calloc(i32 1, i32 80)
  store %struct.TYPE_45__* %15, %struct.TYPE_45__** %7, align 8
  %16 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %17 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 3
  store %struct.TYPE_45__* %16, %struct.TYPE_45__** %18, align 8
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %20 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %20, i32 0, i32 9
  store %struct.TYPE_31__* %19, %struct.TYPE_31__** %21, align 8
  %22 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %25 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %25, i32 0, i32 1
  store %struct.TYPE_42__* %24, %struct.TYPE_42__** %26, align 8
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_42__*, %struct.TYPE_42__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %37 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %37, i32 0, i32 7
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %40 = icmp ne %struct.TYPE_31__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %2
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_39__*, %struct.TYPE_39__** %43, align 8
  %45 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %45, i32 0, i32 5
  store %struct.TYPE_39__* %44, %struct.TYPE_39__** %46, align 8
  br label %53

47:                                               ; preds = %2
  %48 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_39__*, %struct.TYPE_39__** %49, align 8
  %51 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %51, i32 0, i32 5
  store %struct.TYPE_39__* %50, %struct.TYPE_39__** %52, align 8
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %54, i32 0, i32 6
  %56 = call i32 @hb_buffer_list_clear(i32* %55)
  %57 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.TYPE_35__* @avcodec_find_decoder(i32 %59)
  store %struct.TYPE_35__* %60, %struct.TYPE_35__** %6, align 8
  %61 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %62 = call %struct.TYPE_36__* @avcodec_alloc_context3(%struct.TYPE_35__* %61)
  %63 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %63, i32 0, i32 2
  store %struct.TYPE_36__* %62, %struct.TYPE_36__** %64, align 8
  %65 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %65, i32 0, i32 5
  %67 = load %struct.TYPE_39__*, %struct.TYPE_39__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %101

71:                                               ; preds = %53
  %72 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %72, i32 0, i32 5
  %74 = load %struct.TYPE_39__*, %struct.TYPE_39__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = bitcast i32* %76 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %77, %struct.TYPE_33__** %8, align 8
  %78 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_36__*, %struct.TYPE_36__** %79, align 8
  %81 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %82, align 8
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_42__*, %struct.TYPE_42__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %83, i64 %88
  %90 = load %struct.TYPE_40__*, %struct.TYPE_40__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @avcodec_parameters_to_context(%struct.TYPE_36__* %80, i32 %92)
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_36__*, %struct.TYPE_36__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 4
  br label %108

101:                                              ; preds = %53
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @av_parser_init(i32 %104)
  %106 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %101, %71
  %109 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_36__*, %struct.TYPE_36__** %110, align 8
  %112 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %113 = load i32, i32* @AV_SAMPLE_FMT_FLT, align 4
  %114 = call i32 @hb_ff_set_sample_fmt(%struct.TYPE_36__* %111, %struct.TYPE_35__* %112, i32 %113)
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_42__*, %struct.TYPE_42__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @HB_ACODEC_PASS_FLAG, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %254, label %125

125:                                              ; preds = %108
  %126 = load i32, i32* @AV_SAMPLE_FMT_FLT, align 4
  %127 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_42__*, %struct.TYPE_42__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_42__*, %struct.TYPE_42__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_42__*, %struct.TYPE_42__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i32* @hb_audio_resample_init(i32 %126, i32 %133, i32 %140, i32 %147)
  %149 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %149, i32 0, i32 3
  store i32* %148, i32** %150, align 8
  %151 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %157

155:                                              ; preds = %125
  %156 = call i32 @hb_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %434

157:                                              ; preds = %125
  store i32 0, i32* %9, align 4
  %158 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  switch i32 %160, label %221 [
    i32 133, label %161
    i32 131, label %161
    i32 132, label %171
    i32 130, label %181
  ]

161:                                              ; preds = %157, %157
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_42__*, %struct.TYPE_42__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  %170 = zext i1 %169 to i32
  store i32 %170, i32* %9, align 4
  br label %222

171:                                              ; preds = %157
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_42__*, %struct.TYPE_42__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %178, 0
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %9, align 4
  br label %222

181:                                              ; preds = %157
  %182 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_42__*, %struct.TYPE_42__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %218, label %190

190:                                              ; preds = %181
  %191 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_42__*, %struct.TYPE_42__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @HB_AMIXDOWN_MONO, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %218, label %200

200:                                              ; preds = %190
  %201 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_42__*, %struct.TYPE_42__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 129
  br i1 %208, label %218, label %209

209:                                              ; preds = %200
  %210 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_42__*, %struct.TYPE_42__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 128
  br label %218

218:                                              ; preds = %209, %200, %190, %181
  %219 = phi i1 [ true, %200 ], [ true, %190 ], [ true, %181 ], [ %217, %209 ]
  %220 = zext i1 %219 to i32
  store i32 %220, i32* %9, align 4
  br label %222

221:                                              ; preds = %157
  br label %222

222:                                              ; preds = %221, %218, %171, %161
  %223 = load i32, i32* %9, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %253

225:                                              ; preds = %222
  %226 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_42__*, %struct.TYPE_42__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  switch i32 %232, label %239 [
    i32 129, label %233
    i32 128, label %233
  ]

233:                                              ; preds = %225, %225
  %234 = load i32, i32* @AV_CH_LAYOUT_5POINT1, align 4
  %235 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_36__*, %struct.TYPE_36__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %237, i32 0, i32 2
  store i32 %234, i32* %238, align 4
  br label %252

239:                                              ; preds = %225
  %240 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_42__*, %struct.TYPE_42__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @hb_ff_mixdown_xlat(i32 %246, i32* null)
  %248 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_36__*, %struct.TYPE_36__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %250, i32 0, i32 2
  store i32 %247, i32* %251, align 4
  br label %252

252:                                              ; preds = %239, %233
  br label %253

253:                                              ; preds = %252, %222
  br label %254

254:                                              ; preds = %253, %108
  %255 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp eq i32 %257, 130
  br i1 %258, label %259, label %275

259:                                              ; preds = %254
  %260 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_42__*, %struct.TYPE_42__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @AV_CH_LAYOUT_MONO, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %275

269:                                              ; preds = %259
  %270 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  %271 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %271, i32 0, i32 2
  %273 = load %struct.TYPE_36__*, %struct.TYPE_36__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %273, i32 0, i32 2
  store i32 %270, i32* %274, align 4
  br label %275

275:                                              ; preds = %269, %259, %254
  store i32* null, i32** %10, align 8
  %276 = call i32 @av_dict_set(i32** %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %277 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_42__*, %struct.TYPE_42__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %281, i32 0, i32 2
  %283 = load float, float* %282, align 8
  %284 = fcmp oge float %283, 0.000000e+00
  br i1 %284, label %285, label %374

285:                                              ; preds = %275
  %286 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %286, i32 0, i32 1
  %288 = load %struct.TYPE_42__*, %struct.TYPE_42__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %293, i32 0, i32 1
  %295 = load %struct.TYPE_42__*, %struct.TYPE_42__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = call i64 @hb_audio_can_apply_drc(i32 %292, i32 %299, i32 0)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %374

302:                                              ; preds = %285
  store float 1.000000e+00, float* %11, align 4
  %303 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %304 = icmp ne %struct.TYPE_35__* %303, null
  br i1 %304, label %305, label %326

305:                                              ; preds = %302
  %306 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = icmp ne i32* %308, null
  br i1 %309, label %310, label %326

310:                                              ; preds = %305
  %311 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %311, i32 0, i32 0
  %313 = bitcast i32** %312 to i8*
  %314 = load i32, i32* @AV_OPT_FLAG_DECODING_PARAM, align 4
  %315 = load i32, i32* @AV_OPT_FLAG_AUDIO_PARAM, align 4
  %316 = or i32 %314, %315
  %317 = load i32, i32* @AV_OPT_SEARCH_FAKE_OBJ, align 4
  %318 = call %struct.TYPE_32__* @av_opt_find2(i8* %313, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %316, i32 %317, i32* null)
  store %struct.TYPE_32__* %318, %struct.TYPE_32__** %12, align 8
  %319 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %320 = icmp ne %struct.TYPE_32__* %319, null
  br i1 %320, label %321, label %325

321:                                              ; preds = %310
  %322 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %323 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %322, i32 0, i32 0
  %324 = load float, float* %323, align 4
  store float %324, float* %11, align 4
  br label %325

325:                                              ; preds = %321, %310
  br label %326

326:                                              ; preds = %325, %305, %302
  %327 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_42__*, %struct.TYPE_42__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %331, i32 0, i32 2
  %333 = load float, float* %332, align 8
  %334 = load float, float* %11, align 4
  %335 = fcmp ogt float %333, %334
  br i1 %335, label %336, label %362

336:                                              ; preds = %326
  %337 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_42__*, %struct.TYPE_42__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %344, i32 0, i32 1
  %346 = load %struct.TYPE_42__*, %struct.TYPE_42__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %348, i32 0, i32 2
  %350 = load float, float* %349, align 8
  %351 = fpext float %350 to double
  %352 = load float, float* %11, align 4
  %353 = fpext float %352 to double
  %354 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 %343, double %351, double %353)
  %355 = load float, float* %11, align 4
  %356 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %356, i32 0, i32 1
  %358 = load %struct.TYPE_42__*, %struct.TYPE_42__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %360, i32 0, i32 2
  store float %355, float* %361, align 8
  br label %362

362:                                              ; preds = %336, %326
  %363 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 0
  %364 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %364, i32 0, i32 1
  %366 = load %struct.TYPE_42__*, %struct.TYPE_42__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %368, i32 0, i32 2
  %370 = load float, float* %369, align 8
  %371 = call i32 @snprintf(i8* %363, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), float %370)
  %372 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 0
  %373 = call i32 @av_dict_set(i32** %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %372, i32 0)
  br label %374

374:                                              ; preds = %362, %285, %275
  %375 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %376 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %375, i32 0, i32 2
  %377 = load %struct.TYPE_36__*, %struct.TYPE_36__** %376, align 8
  %378 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %379 = call i64 @hb_avcodec_open(%struct.TYPE_36__* %377, %struct.TYPE_35__* %378, i32** %10, i32 0)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %384

381:                                              ; preds = %374
  %382 = call i32 @av_dict_free(i32** %10)
  %383 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %434

384:                                              ; preds = %374
  %385 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %386 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %385, i32 0, i32 1
  %387 = load %struct.TYPE_42__*, %struct.TYPE_42__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %394 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %393, i32 0, i32 2
  %395 = load %struct.TYPE_36__*, %struct.TYPE_36__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %396, i32 0, i32 1
  store i32 %392, i32* %397, align 4
  %398 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %399 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %398, i32 0, i32 1
  %400 = load %struct.TYPE_42__*, %struct.TYPE_42__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %407 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %406, i32 0, i32 2
  %408 = load %struct.TYPE_36__*, %struct.TYPE_36__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %409, i32 0, i32 0
  store i32 %405, i32* %410, align 4
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %14, align 8
  br label %411

411:                                              ; preds = %417, %384
  %412 = load i32*, i32** %10, align 8
  %413 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %414 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %415 = call %struct.TYPE_34__* @av_dict_get(i32* %412, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_34__* %413, i32 %414)
  store %struct.TYPE_34__* %415, %struct.TYPE_34__** %14, align 8
  %416 = icmp ne %struct.TYPE_34__* %415, null
  br i1 %416, label %417, label %422

417:                                              ; preds = %411
  %418 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %419 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %420)
  br label %411

422:                                              ; preds = %411
  %423 = call i32 @av_dict_free(i32** %10)
  %424 = call i32* (...) @av_frame_alloc()
  %425 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %426 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %425, i32 0, i32 0
  store i32* %424, i32** %426, align 8
  %427 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %428 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %427, i32 0, i32 0
  %429 = load i32*, i32** %428, align 8
  %430 = icmp eq i32* %429, null
  br i1 %430, label %431, label %433

431:                                              ; preds = %422
  %432 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %434

433:                                              ; preds = %422
  store i32 0, i32* %3, align 4
  br label %434

434:                                              ; preds = %433, %431, %381, %155
  %435 = load i32, i32* %3, align 4
  ret i32 %435
}

declare dso_local %struct.TYPE_45__* @calloc(i32, i32) #1

declare dso_local i32 @hb_buffer_list_clear(i32*) #1

declare dso_local %struct.TYPE_35__* @avcodec_find_decoder(i32) #1

declare dso_local %struct.TYPE_36__* @avcodec_alloc_context3(%struct.TYPE_35__*) #1

declare dso_local i32 @avcodec_parameters_to_context(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @av_parser_init(i32) #1

declare dso_local i32 @hb_ff_set_sample_fmt(%struct.TYPE_36__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32* @hb_audio_resample_init(i32, i32, i32, i32) #1

declare dso_local i32 @hb_error(i8*) #1

declare dso_local i32 @hb_ff_mixdown_xlat(i32, i32*) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i64 @hb_audio_can_apply_drc(i32, i32, i32) #1

declare dso_local %struct.TYPE_32__* @av_opt_find2(i8*, i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @hb_log(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, float) #1

declare dso_local i64 @hb_avcodec_open(%struct.TYPE_36__*, %struct.TYPE_35__*, i32**, i32) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local %struct.TYPE_34__* @av_dict_get(i32*, i8*, %struct.TYPE_34__*, i32) #1

declare dso_local i32* @av_frame_alloc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
