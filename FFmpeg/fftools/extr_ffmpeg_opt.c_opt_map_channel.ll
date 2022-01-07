; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_opt_map_channel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_opt_map_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_13__** }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%d:%d.%d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%d.%d.%d:%d.%d\00", align 1
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"Syntax error, mapchan usage: [file.stream.channel|-1][:syncfile:syncstream]\0A\00", align 1
@nb_input_files = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"mapchan: invalid input file index: %d\0A\00", align 1
@input_files = common dso_local global %struct.TYPE_15__** null, align 8
@.str.4 = private unnamed_addr constant [49 x i8] c"mapchan: invalid input file stream index #%d.%d\0A\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"mapchan: stream #%d.%d is not an audio stream.\0A\00", align 1
@input_streams = common dso_local global %struct.TYPE_14__** null, align 8
@AVDISCARD_ALL = common dso_local global i64 0, align 8
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"mapchan: invalid audio channel #%d.%d.%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [97 x i8] c"mapchan: invalid audio channel #%d.%d.%d\0ATo ignore this, add a trailing '?' to the map_channel.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @opt_map_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt_map_channel(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i8* @av_strdup(i8* %16)
  store i8* %17, i8** %13, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %4, align 4
  br label %260

23:                                               ; preds = %3
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @GROW_ARRAY(%struct.TYPE_12__* %26, i32 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i64 %38
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %11, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = call i32 (i8*, i8*, i32*, i32*, i32*, ...) @sscanf(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %42, i32* %44, i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %53, label %50

50:                                               ; preds = %23
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %73

53:                                               ; preds = %50, %23
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 4
  store i32 -1, i32* %60, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 3
  store i32 -1, i32* %62, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  store i32 -1, i32* %67, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  store i32 -1, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %58
  %71 = load i8*, i8** %13, align 8
  %72 = call i32 @av_free(i8* %71)
  store i32 0, i32* %4, align 4
  br label %260

73:                                               ; preds = %53, %50
  %74 = load i8*, i8** %7, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  %85 = call i32 (i8*, i8*, i32*, i32*, i32*, ...) @sscanf(i8* %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %76, i32* %78, i32* %80, i32* %82, i32* %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 3
  br i1 %87, label %88, label %95

88:                                               ; preds = %73
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 5
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* @AV_LOG_FATAL, align 4
  %93 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %92, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0))
  %94 = call i32 @exit_program(i32 1)
  br label %95

95:                                               ; preds = %91, %88, %73
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 5
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  store i32 -1, i32* %100, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  store i32 -1, i32* %102, align 4
  br label %103

103:                                              ; preds = %98, %95
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %103
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @nb_input_files, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %108, %103
  %115 = load i32, i32* @AV_LOG_FATAL, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = call i32 @exit_program(i32 1)
  br label %121

121:                                              ; preds = %114, %108
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %140, label %126

126:                                              ; preds = %121
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @input_files, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %130, i64 %134
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp sge i32 %129, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %126, %121
  %141 = load i32, i32* @AV_LOG_FATAL, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %141, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %144, i32 %147)
  %149 = call i32 @exit_program(i32 1)
  br label %150

150:                                              ; preds = %140, %126
  %151 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @input_files, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %151, i64 %155
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %160, align 8
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %161, i64 %165
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  store %struct.TYPE_13__* %167, %struct.TYPE_13__** %10, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %185

175:                                              ; preds = %150
  %176 = load i32, i32* @AV_LOG_FATAL, align 4
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %176, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %179, i32 %182)
  %184 = call i32 @exit_program(i32 1)
  br label %185

185:                                              ; preds = %175, %150
  %186 = load i8*, i8** %13, align 8
  %187 = call i8* @strchr(i8* %186, i8 signext 63)
  store i8* %187, i8** %12, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  %190 = load i8*, i8** %12, align 8
  store i8 0, i8* %190, align 1
  br label %191

191:                                              ; preds = %189, %185
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %228, label %196

196:                                              ; preds = %191
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = icmp sge i32 %199, %204
  br i1 %205, label %228, label %206

206:                                              ; preds = %196
  %207 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @input_streams, align 8
  %208 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @input_files, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %208, i64 %212
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = add i64 %216, %220
  %222 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %207, i64 %221
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @AVDISCARD_ALL, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %257

228:                                              ; preds = %206, %196, %191
  %229 = load i8*, i8** %12, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %243

231:                                              ; preds = %228
  %232 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %232, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %235, i32 %238, i32 %241)
  br label %256

243:                                              ; preds = %228
  %244 = load i32, i32* @AV_LOG_FATAL, align 4
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %244, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.7, i64 0, i64 0), i32 %247, i32 %250, i32 %253)
  %255 = call i32 @exit_program(i32 1)
  br label %256

256:                                              ; preds = %243, %231
  br label %257

257:                                              ; preds = %256, %206
  %258 = load i8*, i8** %13, align 8
  %259 = call i32 @av_free(i8* %258)
  store i32 0, i32* %4, align 4
  br label %260

260:                                              ; preds = %257, %70, %20
  %261 = load i32, i32* %4, align 4
  ret i32 %261
}

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @GROW_ARRAY(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, ...) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
