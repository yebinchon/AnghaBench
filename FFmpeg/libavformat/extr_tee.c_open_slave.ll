; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tee.c_open_slave.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tee.c_open_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_27__**, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32*, i32, %struct.TYPE_26__**, %struct.TYPE_28__*, i32, i32* }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_29__ = type { i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"onfail\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"use_fifo\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"fifo_options\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"bsfs\00", align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [69 x i8] c"Invalid onfail option value, valid options are 'abort' and 'ignore'\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Error parsing fifo options: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"format_opts\00", align 1
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"fifo_format\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"fifo\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@slave_select_sep = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [47 x i8] c"Invalid stream specifier '%s' for output '%s'\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Slave '%s': error opening: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Slave '%s': error writing header: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@slave_bsfs_spec_sep = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [75 x i8] c"Specifier separator in '%s' is '%c', but only characters '%s' are allowed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [73 x i8] c"Invalid stream specifier '%s' in bsfs option '%s' for slave output '%s'\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [56 x i8] c"spec:%s bsfs:%s matches stream %d of slave output '%s'\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [100 x i8] c"Duplicate bsfs specification associated to stream %d of slave output '%s', filters will be ignored\0A\00", align 1
@.str.19 = private unnamed_addr constant [91 x i8] c"Error parsing bitstream filter sequence '%s' associated to stream %d of slave output '%s'\0A\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"Failed to create pass-through bitstream filter: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"Failed to initialize bitstream filter(s): %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"Unknown option '%s'\0A\00", align 1
@AVERROR_OPTION_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, i8*, %struct.TYPE_25__*)* @open_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_slave(%struct.TYPE_28__* %0, i8* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_28__*, align 8
  %20 = alloca %struct.TYPE_27__*, align 8
  %21 = alloca %struct.TYPE_27__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %19, align 8
  store i8* null, i8** %24, align 8
  store i8* null, i8** %25, align 8
  store i8* null, i8** %26, align 8
  store i8* null, i8** %27, align 8
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @ff_tee_parse_slave_options(%struct.TYPE_28__* %31, i8* %32, i32** %10, i8** %13)
  store i32 %33, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %649

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %37
  %39 = load i32*, i32** %10, align 8
  %40 = call %struct.TYPE_29__* @av_dict_get(i32* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.TYPE_29__* null, i32 0)
  store %struct.TYPE_29__* %40, %struct.TYPE_29__** %12, align 8
  %41 = icmp ne %struct.TYPE_29__* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %14, align 8
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i32 0, i32 1
  store i8* null, i8** %47, align 8
  %48 = call i32 @av_dict_set(i32** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* null, i32 0)
  br label %49

49:                                               ; preds = %42, %38
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  %52 = load i32*, i32** %10, align 8
  %53 = call %struct.TYPE_29__* @av_dict_get(i32* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_29__* null, i32 0)
  store %struct.TYPE_29__* %53, %struct.TYPE_29__** %12, align 8
  %54 = icmp ne %struct.TYPE_29__* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %15, align 8
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i32 0, i32 1
  store i8* null, i8** %60, align 8
  %61 = call i32 @av_dict_set(i32** %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* null, i32 0)
  br label %62

62:                                               ; preds = %55, %51
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63
  %65 = load i32*, i32** %10, align 8
  %66 = call %struct.TYPE_29__* @av_dict_get(i32* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_29__* null, i32 0)
  store %struct.TYPE_29__* %66, %struct.TYPE_29__** %12, align 8
  %67 = icmp ne %struct.TYPE_29__* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %16, align 8
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 1
  store i8* null, i8** %73, align 8
  %74 = call i32 @av_dict_set(i32** %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* null, i32 0)
  br label %75

75:                                               ; preds = %68, %64
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  %78 = load i32*, i32** %10, align 8
  %79 = call %struct.TYPE_29__* @av_dict_get(i32* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_29__* null, i32 0)
  store %struct.TYPE_29__* %79, %struct.TYPE_29__** %12, align 8
  %80 = icmp ne %struct.TYPE_29__* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %17, align 8
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 1
  store i8* null, i8** %86, align 8
  %87 = call i32 @av_dict_set(i32** %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* null, i32 0)
  br label %88

88:                                               ; preds = %81, %77
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89
  %91 = load i32*, i32** %10, align 8
  %92 = call %struct.TYPE_29__* @av_dict_get(i32* %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_29__* null, i32 0)
  store %struct.TYPE_29__* %92, %struct.TYPE_29__** %12, align 8
  %93 = icmp ne %struct.TYPE_29__* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %18, align 8
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 1
  store i8* null, i8** %99, align 8
  %100 = call i32 @av_dict_set(i32** %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* null, i32 0)
  br label %101

101:                                              ; preds = %94, %90
  br label %102

102:                                              ; preds = %101
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %12, align 8
  br label %103

103:                                              ; preds = %109, %102
  %104 = load i32*, i32** %10, align 8
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %106 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %107 = call %struct.TYPE_29__* @av_dict_get(i32* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_29__* %105, i32 %106)
  store %struct.TYPE_29__* %107, %struct.TYPE_29__** %12, align 8
  %108 = icmp ne %struct.TYPE_29__* %107, null
  br i1 %108, label %109, label %122

109:                                              ; preds = %103
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 4
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @av_dict_set(i32** %11, i8* %113, i8* %116, i32 0)
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @av_dict_set(i32** %10, i8* %120, i8* null, i32 0)
  br label %103

122:                                              ; preds = %103
  %123 = load i8*, i8** %16, align 8
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %125 = call i32 @parse_slave_failure_policy_option(i8* %123, %struct.TYPE_25__* %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %130 = load i32, i32* @AV_LOG_ERROR, align 4
  %131 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %129, i32 %130, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0))
  br label %638

132:                                              ; preds = %122
  %133 = load i8*, i8** %17, align 8
  %134 = load i8*, i8** %18, align 8
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %136 = call i32 @parse_slave_fifo_options(i8* %133, i8* %134, %struct.TYPE_25__* %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %132
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %141 = load i32, i32* @AV_LOG_ERROR, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i8* @av_err2str(i32 %142)
  %144 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %140, i32 %141, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %143)
  br label %638

145:                                              ; preds = %132
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %187

150:                                              ; preds = %145
  %151 = load i32*, i32** %10, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %169

153:                                              ; preds = %150
  store i8* null, i8** %28, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = call i32 @av_dict_get_string(i32* %154, i8** %28, i8 signext 61, i8 signext 58)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %638

159:                                              ; preds = %153
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 5
  %162 = load i8*, i8** %28, align 8
  %163 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %164 = call i32 @av_dict_set(i32** %161, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %162, i32 %163)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  br label %638

168:                                              ; preds = %159
  br label %169

169:                                              ; preds = %168, %150
  %170 = load i8*, i8** %14, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %182

172:                                              ; preds = %169
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 5
  %175 = load i8*, i8** %14, align 8
  %176 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %177 = call i32 @av_dict_set(i32** %174, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %175, i32 %176)
  store i32 %177, i32* %9, align 4
  store i8* null, i8** %14, align 8
  %178 = load i32, i32* %9, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %172
  br label %638

181:                                              ; preds = %172
  br label %182

182:                                              ; preds = %181, %169
  %183 = call i32 @av_dict_free(i32** %10)
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 5
  %186 = load i32*, i32** %185, align 8
  store i32* %186, i32** %10, align 8
  br label %187

187:                                              ; preds = %182, %145
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  br label %195

193:                                              ; preds = %187
  %194 = load i8*, i8** %14, align 8
  br label %195

195:                                              ; preds = %193, %192
  %196 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %192 ], [ %194, %193 ]
  %197 = load i8*, i8** %13, align 8
  %198 = call i32 @avformat_alloc_output_context2(%struct.TYPE_28__** %19, i32* null, i8* %196, i8* %197)
  store i32 %198, i32* %9, align 4
  %199 = load i32, i32* %9, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  br label %638

202:                                              ; preds = %195
  %203 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 3
  store %struct.TYPE_28__* %203, %struct.TYPE_28__** %205, align 8
  %206 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %207 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %206, i32 0, i32 8
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @av_dict_copy(i32* %207, i32 %210, i32 0)
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %212, i32 0, i32 7
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %216 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %215, i32 0, i32 7
  store i32 %214, i32* %216, align 4
  %217 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %221 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %220, i32 0, i32 6
  store i32 %219, i32* %221, align 8
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 5
  store i32 %224, i32* %226, align 4
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %231 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %230, i32 0, i32 4
  store i32 %229, i32* %231, align 8
  %232 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 3
  store i32 %234, i32* %236, align 4
  %237 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %241 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 8
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i8* @av_calloc(i32 %244, i32 4)
  %246 = bitcast i8* %245 to i32*
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 0
  store i32* %246, i32** %248, align 8
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %256, label %253

253:                                              ; preds = %202
  %254 = load i32, i32* @ENOMEM, align 4
  %255 = call i32 @AVERROR(i32 %254)
  store i32 %255, i32* %9, align 4
  br label %638

256:                                              ; preds = %202
  store i32 0, i32* %22, align 4
  store i32 0, i32* %8, align 4
  br label %257

257:                                              ; preds = %347, %256
  %258 = load i32, i32* %8, align 4
  %259 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp slt i32 %258, %261
  br i1 %262, label %263, label %350

263:                                              ; preds = %257
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %265, align 8
  %267 = load i32, i32* %8, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %266, i64 %268
  %270 = load %struct.TYPE_27__*, %struct.TYPE_27__** %269, align 8
  store %struct.TYPE_27__* %270, %struct.TYPE_27__** %20, align 8
  %271 = load i8*, i8** %15, align 8
  %272 = icmp ne i8* %271, null
  br i1 %272, label %273, label %324

273:                                              ; preds = %263
  %274 = load i8*, i8** %15, align 8
  %275 = call i8* @av_strdup(i8* %274)
  store i8* %275, i8** %27, align 8
  %276 = load i8*, i8** %27, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %281, label %278

278:                                              ; preds = %273
  %279 = load i32, i32* @ENOMEM, align 4
  %280 = call i32 @AVERROR(i32 %279)
  store i32 %280, i32* %9, align 4
  br label %638

281:                                              ; preds = %273
  store i32 0, i32* %23, align 4
  %282 = load i8*, i8** %27, align 8
  store i8* %282, i8** %26, align 8
  store i8* null, i8** %25, align 8
  br label %283

283:                                              ; preds = %311, %281
  %284 = load i8*, i8** %26, align 8
  %285 = load i32, i32* @slave_select_sep, align 4
  %286 = call i8* @av_strtok(i8* %284, i32 %285, i8** %25)
  store i8* %286, i8** %24, align 8
  %287 = icmp ne i8* %286, null
  br i1 %287, label %288, label %312

288:                                              ; preds = %283
  store i8* null, i8** %26, align 8
  %289 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %290 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %291, align 8
  %293 = load i32, i32* %8, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %292, i64 %294
  %296 = load %struct.TYPE_27__*, %struct.TYPE_27__** %295, align 8
  %297 = load i8*, i8** %24, align 8
  %298 = call i32 @avformat_match_stream_specifier(%struct.TYPE_28__* %289, %struct.TYPE_27__* %296, i8* %297)
  store i32 %298, i32* %9, align 4
  %299 = load i32, i32* %9, align 4
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %307

301:                                              ; preds = %288
  %302 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %303 = load i32, i32* @AV_LOG_ERROR, align 4
  %304 = load i8*, i8** %24, align 8
  %305 = load i8*, i8** %6, align 8
  %306 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %302, i32 %303, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i8* %304, i8* %305)
  br label %638

307:                                              ; preds = %288
  %308 = load i32, i32* %9, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %307
  store i32 1, i32* %23, align 4
  br label %312

311:                                              ; preds = %307
  br label %283

312:                                              ; preds = %310, %283
  %313 = call i32 @av_freep(i8** %27)
  %314 = load i32, i32* %23, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %323

316:                                              ; preds = %312
  %317 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %317, i32 0, i32 0
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %8, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  store i32 -1, i32* %322, align 4
  br label %347

323:                                              ; preds = %312
  br label %324

324:                                              ; preds = %323, %263
  %325 = load i32, i32* %22, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %22, align 4
  %327 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %8, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  store i32 %325, i32* %332, align 4
  %333 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %334 = call %struct.TYPE_27__* @avformat_new_stream(%struct.TYPE_28__* %333, i32* null)
  store %struct.TYPE_27__* %334, %struct.TYPE_27__** %21, align 8
  %335 = icmp ne %struct.TYPE_27__* %334, null
  br i1 %335, label %339, label %336

336:                                              ; preds = %324
  %337 = load i32, i32* @ENOMEM, align 4
  %338 = call i32 @AVERROR(i32 %337)
  store i32 %338, i32* %9, align 4
  br label %638

339:                                              ; preds = %324
  %340 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  %341 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %342 = call i32 @ff_stream_encode_params_copy(%struct.TYPE_27__* %340, %struct.TYPE_27__* %341)
  store i32 %342, i32* %9, align 4
  %343 = load i32, i32* %9, align 4
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %339
  br label %638

346:                                              ; preds = %339
  br label %347

347:                                              ; preds = %346, %316
  %348 = load i32, i32* %8, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %8, align 4
  br label %257

350:                                              ; preds = %257
  %351 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %352 = load i8*, i8** %13, align 8
  %353 = call i32 @ff_format_output_open(%struct.TYPE_28__* %351, i8* %352, i32* null)
  store i32 %353, i32* %9, align 4
  %354 = load i32, i32* %9, align 4
  %355 = icmp slt i32 %354, 0
  br i1 %355, label %356, label %363

356:                                              ; preds = %350
  %357 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %358 = load i32, i32* @AV_LOG_ERROR, align 4
  %359 = load i8*, i8** %6, align 8
  %360 = load i32, i32* %9, align 4
  %361 = call i8* @av_err2str(i32 %360)
  %362 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %357, i32 %358, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* %359, i8* %361)
  br label %638

363:                                              ; preds = %350
  %364 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %365 = call i32 @avformat_write_header(%struct.TYPE_28__* %364, i32** %10)
  store i32 %365, i32* %9, align 4
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %367, label %374

367:                                              ; preds = %363
  %368 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %369 = load i32, i32* @AV_LOG_ERROR, align 4
  %370 = load i8*, i8** %6, align 8
  %371 = load i32, i32* %9, align 4
  %372 = call i8* @av_err2str(i32 %371)
  %373 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %368, i32 %369, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i8* %370, i8* %372)
  br label %638

374:                                              ; preds = %363
  %375 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %376 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %375, i32 0, i32 1
  store i32 1, i32* %376, align 8
  %377 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %378 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = call i8* @av_calloc(i32 %379, i32 8)
  %381 = bitcast i8* %380 to %struct.TYPE_26__**
  %382 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %382, i32 0, i32 2
  store %struct.TYPE_26__** %381, %struct.TYPE_26__*** %383, align 8
  %384 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %384, i32 0, i32 2
  %386 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %385, align 8
  %387 = icmp ne %struct.TYPE_26__** %386, null
  br i1 %387, label %391, label %388

388:                                              ; preds = %374
  %389 = load i32, i32* @ENOMEM, align 4
  %390 = call i32 @AVERROR(i32 %389)
  store i32 %390, i32* %9, align 4
  br label %638

391:                                              ; preds = %374
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %12, align 8
  br label %392

392:                                              ; preds = %508, %391
  %393 = load i32*, i32** %11, align 8
  %394 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %395 = call %struct.TYPE_29__* @av_dict_get(i32* %393, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %struct.TYPE_29__* null, i32 %394)
  store %struct.TYPE_29__* %395, %struct.TYPE_29__** %12, align 8
  %396 = icmp ne %struct.TYPE_29__* %395, null
  br i1 %396, label %397, label %513

397:                                              ; preds = %392
  %398 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %399 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %398, i32 0, i32 0
  %400 = load i8*, i8** %399, align 8
  store i8* %400, i8** %29, align 8
  %401 = load i8*, i8** %29, align 8
  %402 = load i8, i8* %401, align 1
  %403 = icmp ne i8 %402, 0
  br i1 %403, label %404, label %425

404:                                              ; preds = %397
  %405 = load i8*, i8** %29, align 8
  %406 = load i32, i32* @slave_bsfs_spec_sep, align 4
  %407 = call i32 @strspn(i8* %405, i32 %406)
  %408 = icmp ne i32 %407, 1
  br i1 %408, label %409, label %422

409:                                              ; preds = %404
  %410 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %411 = load i32, i32* @AV_LOG_ERROR, align 4
  %412 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %413 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %412, i32 0, i32 0
  %414 = load i8*, i8** %413, align 8
  %415 = load i8*, i8** %29, align 8
  %416 = load i8, i8* %415, align 1
  %417 = sext i8 %416 to i32
  %418 = load i32, i32* @slave_bsfs_spec_sep, align 4
  %419 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %410, i32 %411, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.15, i64 0, i64 0), i8* %414, i32 %417, i32 %418)
  %420 = load i32, i32* @EINVAL, align 4
  %421 = call i32 @AVERROR(i32 %420)
  store i32 %421, i32* %9, align 4
  br label %638

422:                                              ; preds = %404
  %423 = load i8*, i8** %29, align 8
  %424 = getelementptr inbounds i8, i8* %423, i32 1
  store i8* %424, i8** %29, align 8
  br label %425

425:                                              ; preds = %422, %397
  store i32 0, i32* %8, align 4
  br label %426

426:                                              ; preds = %505, %425
  %427 = load i32, i32* %8, align 4
  %428 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %429 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = icmp slt i32 %427, %430
  br i1 %431, label %432, label %508

432:                                              ; preds = %426
  %433 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %434 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %435 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %434, i32 0, i32 1
  %436 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %435, align 8
  %437 = load i32, i32* %8, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %436, i64 %438
  %440 = load %struct.TYPE_27__*, %struct.TYPE_27__** %439, align 8
  %441 = load i8*, i8** %29, align 8
  %442 = call i32 @avformat_match_stream_specifier(%struct.TYPE_28__* %433, %struct.TYPE_27__* %440, i8* %441)
  store i32 %442, i32* %9, align 4
  %443 = load i32, i32* %9, align 4
  %444 = icmp slt i32 %443, 0
  br i1 %444, label %445, label %454

445:                                              ; preds = %432
  %446 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %447 = load i32, i32* @AV_LOG_ERROR, align 4
  %448 = load i8*, i8** %29, align 8
  %449 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %450 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %449, i32 0, i32 0
  %451 = load i8*, i8** %450, align 8
  %452 = load i8*, i8** %13, align 8
  %453 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %446, i32 %447, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.16, i64 0, i64 0), i8* %448, i8* %451, i8* %452)
  br label %638

454:                                              ; preds = %432
  %455 = load i32, i32* %9, align 4
  %456 = icmp sgt i32 %455, 0
  br i1 %456, label %457, label %504

457:                                              ; preds = %454
  %458 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %459 = load i32, i32* @AV_LOG_DEBUG, align 4
  %460 = load i8*, i8** %29, align 8
  %461 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %462 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %461, i32 0, i32 1
  %463 = load i8*, i8** %462, align 8
  %464 = load i32, i32* %8, align 4
  %465 = load i8*, i8** %13, align 8
  %466 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %458, i32 %459, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i64 0, i64 0), i8* %460, i8* %463, i32 %464, i8* %465)
  %467 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %468 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %467, i32 0, i32 2
  %469 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %468, align 8
  %470 = load i32, i32* %8, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %469, i64 %471
  %473 = load %struct.TYPE_26__*, %struct.TYPE_26__** %472, align 8
  %474 = icmp ne %struct.TYPE_26__* %473, null
  br i1 %474, label %475, label %481

475:                                              ; preds = %457
  %476 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %477 = load i32, i32* @AV_LOG_WARNING, align 4
  %478 = load i32, i32* %8, align 4
  %479 = load i8*, i8** %13, align 8
  %480 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %476, i32 %477, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.18, i64 0, i64 0), i32 %478, i8* %479)
  br label %505

481:                                              ; preds = %457
  %482 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %483 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %482, i32 0, i32 1
  %484 = load i8*, i8** %483, align 8
  %485 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %486 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %485, i32 0, i32 2
  %487 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %486, align 8
  %488 = load i32, i32* %8, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %487, i64 %489
  %491 = call i32 @av_bsf_list_parse_str(i8* %484, %struct.TYPE_26__** %490)
  store i32 %491, i32* %9, align 4
  %492 = load i32, i32* %9, align 4
  %493 = icmp slt i32 %492, 0
  br i1 %493, label %494, label %503

494:                                              ; preds = %481
  %495 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %496 = load i32, i32* @AV_LOG_ERROR, align 4
  %497 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %498 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %497, i32 0, i32 1
  %499 = load i8*, i8** %498, align 8
  %500 = load i32, i32* %8, align 4
  %501 = load i8*, i8** %13, align 8
  %502 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %495, i32 %496, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.19, i64 0, i64 0), i8* %499, i32 %500, i8* %501)
  br label %638

503:                                              ; preds = %481
  br label %504

504:                                              ; preds = %503, %454
  br label %505

505:                                              ; preds = %504, %475
  %506 = load i32, i32* %8, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %8, align 4
  br label %426

508:                                              ; preds = %426
  %509 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %510 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %509, i32 0, i32 0
  %511 = load i8*, i8** %510, align 8
  %512 = call i32 @av_dict_set(i32** %11, i8* %511, i8* null, i32 0)
  br label %392

513:                                              ; preds = %392
  store i32 0, i32* %8, align 4
  br label %514

514:                                              ; preds = %615, %513
  %515 = load i32, i32* %8, align 4
  %516 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %517 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 8
  %519 = icmp slt i32 %515, %518
  br i1 %519, label %520, label %618

520:                                              ; preds = %514
  %521 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %522 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %521, i32 0, i32 0
  %523 = load i32*, i32** %522, align 8
  %524 = load i32, i32* %8, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32, i32* %523, i64 %525
  %527 = load i32, i32* %526, align 4
  store i32 %527, i32* %30, align 4
  %528 = load i32, i32* %30, align 4
  %529 = icmp slt i32 %528, 0
  br i1 %529, label %530, label %531

530:                                              ; preds = %520
  br label %615

531:                                              ; preds = %520
  %532 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %533 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %532, i32 0, i32 2
  %534 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %533, align 8
  %535 = load i32, i32* %30, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %534, i64 %536
  %538 = load %struct.TYPE_26__*, %struct.TYPE_26__** %537, align 8
  %539 = icmp ne %struct.TYPE_26__* %538, null
  br i1 %539, label %557, label %540

540:                                              ; preds = %531
  %541 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %542 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %541, i32 0, i32 2
  %543 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %542, align 8
  %544 = load i32, i32* %30, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %543, i64 %545
  %547 = call i32 @av_bsf_get_null_filter(%struct.TYPE_26__** %546)
  store i32 %547, i32* %9, align 4
  %548 = load i32, i32* %9, align 4
  %549 = icmp slt i32 %548, 0
  br i1 %549, label %550, label %556

550:                                              ; preds = %540
  %551 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %552 = load i32, i32* @AV_LOG_ERROR, align 4
  %553 = load i32, i32* %9, align 4
  %554 = call i8* @av_err2str(i32 %553)
  %555 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %551, i32 %552, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i64 0, i64 0), i8* %554)
  br label %638

556:                                              ; preds = %540
  br label %557

557:                                              ; preds = %556, %531
  %558 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %559 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %558, i32 0, i32 1
  %560 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %559, align 8
  %561 = load i32, i32* %8, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %560, i64 %562
  %564 = load %struct.TYPE_27__*, %struct.TYPE_27__** %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %564, i32 0, i32 1
  %566 = load i32, i32* %565, align 4
  %567 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %568 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %567, i32 0, i32 2
  %569 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %568, align 8
  %570 = load i32, i32* %30, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %569, i64 %571
  %573 = load %struct.TYPE_26__*, %struct.TYPE_26__** %572, align 8
  %574 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %573, i32 0, i32 1
  store i32 %566, i32* %574, align 4
  %575 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %576 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %575, i32 0, i32 2
  %577 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %576, align 8
  %578 = load i32, i32* %30, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %577, i64 %579
  %581 = load %struct.TYPE_26__*, %struct.TYPE_26__** %580, align 8
  %582 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 4
  %584 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %585 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %584, i32 0, i32 1
  %586 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %585, align 8
  %587 = load i32, i32* %8, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %586, i64 %588
  %590 = load %struct.TYPE_27__*, %struct.TYPE_27__** %589, align 8
  %591 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 4
  %593 = call i32 @avcodec_parameters_copy(i32 %583, i32 %592)
  store i32 %593, i32* %9, align 4
  %594 = load i32, i32* %9, align 4
  %595 = icmp slt i32 %594, 0
  br i1 %595, label %596, label %597

596:                                              ; preds = %557
  br label %638

597:                                              ; preds = %557
  %598 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %599 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %598, i32 0, i32 2
  %600 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %599, align 8
  %601 = load i32, i32* %30, align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %600, i64 %602
  %604 = load %struct.TYPE_26__*, %struct.TYPE_26__** %603, align 8
  %605 = call i32 @av_bsf_init(%struct.TYPE_26__* %604)
  store i32 %605, i32* %9, align 4
  %606 = load i32, i32* %9, align 4
  %607 = icmp slt i32 %606, 0
  br i1 %607, label %608, label %614

608:                                              ; preds = %597
  %609 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %610 = load i32, i32* @AV_LOG_ERROR, align 4
  %611 = load i32, i32* %9, align 4
  %612 = call i8* @av_err2str(i32 %611)
  %613 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %609, i32 %610, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0), i8* %612)
  br label %638

614:                                              ; preds = %597
  br label %615

615:                                              ; preds = %614, %530
  %616 = load i32, i32* %8, align 4
  %617 = add nsw i32 %616, 1
  store i32 %617, i32* %8, align 4
  br label %514

618:                                              ; preds = %514
  %619 = load i32*, i32** %10, align 8
  %620 = icmp ne i32* %619, null
  br i1 %620, label %621, label %637

621:                                              ; preds = %618
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %12, align 8
  br label %622

622:                                              ; preds = %628, %621
  %623 = load i32*, i32** %10, align 8
  %624 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %625 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %626 = call %struct.TYPE_29__* @av_dict_get(i32* %623, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %struct.TYPE_29__* %624, i32 %625)
  store %struct.TYPE_29__* %626, %struct.TYPE_29__** %12, align 8
  %627 = icmp ne %struct.TYPE_29__* %626, null
  br i1 %627, label %628, label %635

628:                                              ; preds = %622
  %629 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %630 = load i32, i32* @AV_LOG_ERROR, align 4
  %631 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %632 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %631, i32 0, i32 0
  %633 = load i8*, i8** %632, align 8
  %634 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %629, i32 %630, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i8* %633)
  br label %622

635:                                              ; preds = %622
  %636 = load i32, i32* @AVERROR_OPTION_NOT_FOUND, align 4
  store i32 %636, i32* %9, align 4
  br label %638

637:                                              ; preds = %618
  br label %638

638:                                              ; preds = %637, %635, %608, %596, %550, %494, %445, %409, %388, %367, %356, %345, %336, %301, %278, %253, %201, %180, %167, %158, %139, %128
  %639 = load i8*, i8** %14, align 8
  %640 = call i32 @av_free(i8* %639)
  %641 = load i8*, i8** %15, align 8
  %642 = call i32 @av_free(i8* %641)
  %643 = load i8*, i8** %16, align 8
  %644 = call i32 @av_free(i8* %643)
  %645 = call i32 @av_dict_free(i32** %10)
  %646 = call i32 @av_dict_free(i32** %11)
  %647 = call i32 @av_freep(i8** %27)
  %648 = load i32, i32* %9, align 4
  store i32 %648, i32* %4, align 4
  br label %649

649:                                              ; preds = %638, %35
  %650 = load i32, i32* %4, align 4
  ret i32 %650
}

declare dso_local i32 @ff_tee_parse_slave_options(%struct.TYPE_28__*, i8*, i32**, i8**) #1

declare dso_local %struct.TYPE_29__* @av_dict_get(i32*, i8*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @parse_slave_failure_policy_option(i8*, %struct.TYPE_25__*) #1

declare dso_local i32 @av_log(%struct.TYPE_28__*, i32, i8*, ...) #1

declare dso_local i32 @parse_slave_fifo_options(i8*, i8*, %struct.TYPE_25__*) #1

declare dso_local i8* @av_err2str(i32) #1

declare dso_local i32 @av_dict_get_string(i32*, i8**, i8 signext, i8 signext) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i32 @avformat_alloc_output_context2(%struct.TYPE_28__**, i32*, i8*, i8*) #1

declare dso_local i32 @av_dict_copy(i32*, i32, i32) #1

declare dso_local i8* @av_calloc(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i8* @av_strtok(i8*, i32, i8**) #1

declare dso_local i32 @avformat_match_stream_specifier(%struct.TYPE_28__*, %struct.TYPE_27__*, i8*) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local %struct.TYPE_27__* @avformat_new_stream(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @ff_stream_encode_params_copy(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @ff_format_output_open(%struct.TYPE_28__*, i8*, i32*) #1

declare dso_local i32 @avformat_write_header(%struct.TYPE_28__*, i32**) #1

declare dso_local i32 @strspn(i8*, i32) #1

declare dso_local i32 @av_bsf_list_parse_str(i8*, %struct.TYPE_26__**) #1

declare dso_local i32 @av_bsf_get_null_filter(%struct.TYPE_26__**) #1

declare dso_local i32 @avcodec_parameters_copy(i32, i32) #1

declare dso_local i32 @av_bsf_init(%struct.TYPE_26__*) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
