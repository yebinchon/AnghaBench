; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_open_input_file.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_open_input_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_27__*, %struct.TYPE_24__* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__** }
%struct.TYPE_26__ = type { i32, %struct.TYPE_23__*, i32, i32, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_21__*, %struct.TYPE_26__* }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@format_opts = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"scan_all_pmts\00", align 1
@AV_DICT_MATCH_CASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@AV_DICT_DONT_OVERWRITE = common dso_local global i32 0, align 4
@iformat = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Option %s not found.\0A\00", align 1
@AVERROR_OPTION_NOT_FOUND = common dso_local global i32 0, align 4
@find_stream_info = common dso_local global i64 0, align 8
@codec_opts = common dso_local global i32* null, align 8
@AV_CODEC_ID_PROBE = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Failed to probe codec for input stream %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Unsupported codec with id %d for input stream %d\0A\00", align 1
@do_show_log = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Could not open codec for input stream %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Option %s for input stream %d not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i8*)* @open_input_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_input_file(%struct.TYPE_25__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = call %struct.TYPE_27__* (...) @avformat_alloc_context()
  store %struct.TYPE_27__* %17, %struct.TYPE_27__** %8, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %19 = icmp ne %struct.TYPE_27__* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = call i32 @AVERROR(i32 %22)
  %24 = call i32 @print_error(i8* %21, i32 %23)
  %25 = call i32 @exit_program(i32 1)
  br label %26

26:                                               ; preds = %20, %2
  %27 = load i32*, i32** @format_opts, align 8
  %28 = load i32, i32* @AV_DICT_MATCH_CASE, align 4
  %29 = call %struct.TYPE_28__* @av_dict_get(i32* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null, i32 %28)
  %30 = icmp ne %struct.TYPE_28__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @AV_DICT_DONT_OVERWRITE, align 4
  %33 = call i32 @av_dict_set(i32** @format_opts, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  store i32 1, i32* %10, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* @iformat, align 4
  %37 = call i32 @avformat_open_input(%struct.TYPE_27__** %8, i8* %35, i32 %36, i32** @format_opts)
  store i32 %37, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @print_error(i8* %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %270

44:                                               ; preds = %34
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 1
  store %struct.TYPE_27__* %45, %struct.TYPE_27__** %47, align 8
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @AV_DICT_MATCH_CASE, align 4
  %52 = call i32 @av_dict_set(i32** @format_opts, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* null, i32 %51)
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i32*, i32** @format_opts, align 8
  %55 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %56 = call %struct.TYPE_28__* @av_dict_get(i32* %54, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %55)
  store %struct.TYPE_28__* %56, %struct.TYPE_28__** %9, align 8
  %57 = icmp ne %struct.TYPE_28__* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i32, i32* @AV_LOG_ERROR, align 4
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i32*, i32, i8*, i64, ...) @av_log(i32* null, i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %62)
  %64 = load i32, i32* @AVERROR_OPTION_NOT_FOUND, align 4
  store i32 %64, i32* %3, align 4
  br label %270

65:                                               ; preds = %53
  %66 = load i64, i64* @find_stream_info, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %101

68:                                               ; preds = %65
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %70 = load i32*, i32** @codec_opts, align 8
  %71 = call i32** @setup_find_stream_info_opts(%struct.TYPE_27__* %69, i32* %70)
  store i32** %71, i32*** %11, align 8
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %12, align 4
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %76 = load i32**, i32*** %11, align 8
  %77 = call i32 @avformat_find_stream_info(%struct.TYPE_27__* %75, i32** %76)
  store i32 %77, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %88, %68
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i32**, i32*** %11, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = call i32 @av_dict_free(i32** %86)
  br label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %78

91:                                               ; preds = %78
  %92 = call i32 @av_freep(i32*** %11)
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i8*, i8** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @print_error(i8* %96, i32 %97)
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  br label %270

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100, %65
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 @av_dump_format(%struct.TYPE_27__* %102, i32 0, i8* %103, i32 0)
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call %struct.TYPE_24__* @av_mallocz_array(i32 %107, i32 16)
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 2
  store %struct.TYPE_24__* %108, %struct.TYPE_24__** %110, align 8
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %112, align 8
  %114 = icmp ne %struct.TYPE_24__* %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %101
  %116 = call i32 @exit(i32 1) #3
  unreachable

117:                                              ; preds = %101
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  store i32 0, i32* %7, align 4
  br label %123

123:                                              ; preds = %263, %117
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %266

129:                                              ; preds = %123
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i64 %134
  store %struct.TYPE_24__* %135, %struct.TYPE_24__** %13, align 8
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %138, i64 %140
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %141, align 8
  store %struct.TYPE_26__* %142, %struct.TYPE_26__** %14, align 8
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 1
  store %struct.TYPE_26__* %143, %struct.TYPE_26__** %145, align 8
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 4
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @AV_CODEC_ID_PROBE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %129
  %154 = load i32, i32* @AV_LOG_WARNING, align 4
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = call i32 (i32*, i32, i8*, i64, ...) @av_log(i32* null, i32 %154, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %158)
  br label %263

160:                                              ; preds = %129
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 4
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i32* @avcodec_find_decoder(i64 %165)
  store i32* %166, i32** %15, align 8
  %167 = load i32*, i32** %15, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %180, label %169

169:                                              ; preds = %160
  %170 = load i32, i32* @AV_LOG_WARNING, align 4
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 (i32*, i32, i8*, i64, ...) @av_log(i32* null, i32 %170, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i64 %175, i32 %178)
  br label %263

180:                                              ; preds = %160
  %181 = load i32*, i32** @codec_opts, align 8
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 4
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %189 = load i32*, i32** %15, align 8
  %190 = call i32* @filter_codec_opts(i32* %181, i64 %186, %struct.TYPE_27__* %187, %struct.TYPE_26__* %188, i32* %189)
  store i32* %190, i32** %16, align 8
  %191 = load i32*, i32** %15, align 8
  %192 = call %struct.TYPE_21__* @avcodec_alloc_context3(i32* %191)
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 0
  store %struct.TYPE_21__* %192, %struct.TYPE_21__** %194, align 8
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %196, align 8
  %198 = icmp ne %struct.TYPE_21__* %197, null
  br i1 %198, label %201, label %199

199:                                              ; preds = %180
  %200 = call i32 @exit(i32 1) #3
  unreachable

201:                                              ; preds = %180
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %203, align 8
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 4
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %206, align 8
  %208 = call i32 @avcodec_parameters_to_context(%struct.TYPE_21__* %204, %struct.TYPE_22__* %207)
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* %6, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %201
  %212 = call i32 @exit(i32 1) #3
  unreachable

213:                                              ; preds = %201
  %214 = load i64, i64* @do_show_log, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = call i32 @av_dict_set(i32** @codec_opts, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %218

218:                                              ; preds = %216, %213
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 3
  store i32 %221, i32* %225, align 4
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 2
  store i32 %228, i32* %232, align 4
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %234, align 8
  %236 = load i32*, i32** %15, align 8
  %237 = call i64 @avcodec_open2(%struct.TYPE_21__* %235, i32* %236, i32** %16)
  %238 = icmp slt i64 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %218
  %240 = load i32, i32* @AV_LOG_WARNING, align 4
  %241 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = sext i32 %243 to i64
  %245 = call i32 (i32*, i32, i8*, i64, ...) @av_log(i32* null, i32 %240, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 %244)
  %246 = call i32 @exit(i32 1) #3
  unreachable

247:                                              ; preds = %218
  %248 = load i32*, i32** %16, align 8
  %249 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %250 = call %struct.TYPE_28__* @av_dict_get(i32* %248, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %249)
  store %struct.TYPE_28__* %250, %struct.TYPE_28__** %9, align 8
  %251 = icmp ne %struct.TYPE_28__* %250, null
  br i1 %251, label %252, label %262

252:                                              ; preds = %247
  %253 = load i32, i32* @AV_LOG_ERROR, align 4
  %254 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %258 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i32 (i32*, i32, i8*, i64, ...) @av_log(i32* null, i32 %253, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i64 %256, i32 %259)
  %261 = load i32, i32* @AVERROR_OPTION_NOT_FOUND, align 4
  store i32 %261, i32* %3, align 4
  br label %270

262:                                              ; preds = %247
  br label %263

263:                                              ; preds = %262, %169, %153
  %264 = load i32, i32* %7, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %7, align 4
  br label %123

266:                                              ; preds = %123
  %267 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %268 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %268, i32 0, i32 1
  store %struct.TYPE_27__* %267, %struct.TYPE_27__** %269, align 8
  store i32 0, i32* %3, align 4
  br label %270

270:                                              ; preds = %266, %252, %95, %58, %39
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local %struct.TYPE_27__* @avformat_alloc_context(...) #1

declare dso_local i32 @print_error(i8*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local %struct.TYPE_28__* @av_dict_get(i32*, i8*, i32*, i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @avformat_open_input(%struct.TYPE_27__**, i8*, i32, i32**) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i64, ...) #1

declare dso_local i32** @setup_find_stream_info_opts(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @avformat_find_stream_info(%struct.TYPE_27__*, i32**) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i32 @av_freep(i32***) #1

declare dso_local i32 @av_dump_format(%struct.TYPE_27__*, i32, i8*, i32) #1

declare dso_local %struct.TYPE_24__* @av_mallocz_array(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @avcodec_find_decoder(i64) #1

declare dso_local i32* @filter_codec_opts(i32*, i64, %struct.TYPE_27__*, %struct.TYPE_26__*, i32*) #1

declare dso_local %struct.TYPE_21__* @avcodec_alloc_context3(i32*) #1

declare dso_local i32 @avcodec_parameters_to_context(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i64 @avcodec_open2(%struct.TYPE_21__*, i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
