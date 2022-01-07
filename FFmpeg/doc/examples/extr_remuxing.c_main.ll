; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_remuxing.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_remuxing.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_25__**, %struct.TYPE_27__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64, i64 }
%struct.TYPE_26__ = type { i64, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [162 x i8] c"usage: %s input output\0AAPI example program to remux a media file with libavformat and libavcodec.\0AThe output format is guessed according to the file extension.\0A\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not open input file '%s'\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to retrieve input stream information\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Could not create output context\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed allocating output stream\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to copy codec parameters\0A\00", align 1
@AVFMT_NOFILE = common dso_local global i32 0, align 4
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Could not open output file '%s'\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Error occurred when opening output file\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@AV_ROUND_NEAR_INF = common dso_local global i32 0, align 4
@AV_ROUND_PASS_MINMAX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Error muxing packet\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"Error occurred: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_26__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca %struct.TYPE_25__*, align 8
  %19 = alloca %struct.TYPE_29__*, align 8
  %20 = alloca %struct.TYPE_25__*, align 8
  %21 = alloca %struct.TYPE_25__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %6, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %7, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %8, align 8
  store i32 0, i32* %14, align 4
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @printf(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i32 1, i32* %3, align 4
  br label %309

29:                                               ; preds = %2
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %10, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 2
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @avformat_open_input(%struct.TYPE_28__** %7, i8* %36, i32 0, i32 0)
  store i32 %37, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %278

43:                                               ; preds = %29
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %45 = call i32 @avformat_find_stream_info(%struct.TYPE_28__* %44, i32 0)
  store i32 %45, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %278

50:                                               ; preds = %43
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @av_dump_format(%struct.TYPE_28__* %51, i32 0, i8* %52, i32 0)
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @avformat_alloc_output_context2(%struct.TYPE_28__** %8, i32* null, i32* null, i8* %54)
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %57 = icmp ne %struct.TYPE_28__* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %61, i32* %12, align 4
  br label %278

62:                                               ; preds = %50
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = call i32* @av_mallocz_array(i32 %66, i32 4)
  store i32* %67, i32** %15, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = call i32 @AVERROR(i32 %71)
  store i32 %72, i32* %12, align 4
  br label %278

73:                                               ; preds = %62
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %75, align 8
  store %struct.TYPE_27__* %76, %struct.TYPE_27__** %6, align 8
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %147, %73
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %150

83:                                               ; preds = %77
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %86, i64 %88
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %89, align 8
  store %struct.TYPE_25__* %90, %struct.TYPE_25__** %18, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %92, align 8
  store %struct.TYPE_29__* %93, %struct.TYPE_29__** %19, align 8
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %83
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %99
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load i32*, i32** %15, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 -1, i32* %115, align 4
  br label %147

116:                                              ; preds = %105, %99, %83
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  %119 = load i32*, i32** %15, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %117, i32* %122, align 4
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %124 = call %struct.TYPE_25__* @avformat_new_stream(%struct.TYPE_28__* %123, i32* null)
  store %struct.TYPE_25__* %124, %struct.TYPE_25__** %17, align 8
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %126 = icmp ne %struct.TYPE_25__* %125, null
  br i1 %126, label %131, label %127

127:                                              ; preds = %116
  %128 = load i32, i32* @stderr, align 4
  %129 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %130 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %130, i32* %12, align 4
  br label %278

131:                                              ; preds = %116
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %133, align 8
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %136 = call i32 @avcodec_parameters_copy(%struct.TYPE_29__* %134, %struct.TYPE_29__* %135)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %131
  %140 = load i32, i32* @stderr, align 4
  %141 = call i32 (i32, i8*, ...) @fprintf(i32 %140, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %278

142:                                              ; preds = %131
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %145, i32 0, i32 1
  store i64 0, i64* %146, align 8
  br label %147

147:                                              ; preds = %142, %111
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %13, align 4
  br label %77

150:                                              ; preds = %77
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %152 = load i8*, i8** %11, align 8
  %153 = call i32 @av_dump_format(%struct.TYPE_28__* %151, i32 0, i8* %152, i32 1)
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @AVFMT_NOFILE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %173, label %160

160:                                              ; preds = %150
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 1
  %163 = load i8*, i8** %11, align 8
  %164 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %165 = call i32 @avio_open(i32* %162, i8* %163, i32 %164)
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %160
  %169 = load i32, i32* @stderr, align 4
  %170 = load i8*, i8** %11, align 8
  %171 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %170)
  br label %278

172:                                              ; preds = %160
  br label %173

173:                                              ; preds = %172, %150
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %175 = call i32 @avformat_write_header(%struct.TYPE_28__* %174, i32* null)
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %12, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load i32, i32* @stderr, align 4
  %180 = call i32 (i32, i8*, ...) @fprintf(i32 %179, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %278

181:                                              ; preds = %173
  br label %182

182:                                              ; preds = %181, %208, %273
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %184 = call i32 @av_read_frame(%struct.TYPE_28__* %183, %struct.TYPE_26__* %9)
  store i32 %184, i32* %12, align 4
  %185 = load i32, i32* %12, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  br label %275

188:                                              ; preds = %182
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %191, i64 %193
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %194, align 8
  store %struct.TYPE_25__* %195, %struct.TYPE_25__** %20, align 8
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = icmp uge i64 %197, %199
  br i1 %200, label %208, label %201

201:                                              ; preds = %188
  %202 = load i32*, i32** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %201, %188
  %209 = call i32 @av_packet_unref(%struct.TYPE_26__* %9)
  br label %182

210:                                              ; preds = %201
  %211 = load i32*, i32** %15, align 8
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  store i64 %216, i64* %217, align 8
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %220, i64 %222
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %223, align 8
  store %struct.TYPE_25__* %224, %struct.TYPE_25__** %21, align 8
  %225 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %226 = call i32 @log_packet(%struct.TYPE_28__* %225, %struct.TYPE_26__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 4
  %228 = load i8*, i8** %227, align 8
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %233 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @AV_ROUND_NEAR_INF, align 4
  %236 = load i32, i32* @AV_ROUND_PASS_MINMAX, align 4
  %237 = or i32 %235, %236
  %238 = call i8* @av_rescale_q_rnd(i8* %228, i32 %231, i32 %234, i32 %237)
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 4
  store i8* %238, i8** %239, align 8
  %240 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 3
  %241 = load i8*, i8** %240, align 8
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @AV_ROUND_NEAR_INF, align 4
  %249 = load i32, i32* @AV_ROUND_PASS_MINMAX, align 4
  %250 = or i32 %248, %249
  %251 = call i8* @av_rescale_q_rnd(i8* %241, i32 %244, i32 %247, i32 %250)
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 3
  store i8* %251, i8** %252, align 8
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %256 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %259 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @av_rescale_q(i32 %254, i32 %257, i32 %260)
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 2
  store i32 %261, i32* %262, align 4
  %263 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 1
  store i32 -1, i32* %263, align 8
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %265 = call i32 @log_packet(%struct.TYPE_28__* %264, %struct.TYPE_26__* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %266 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %267 = call i32 @av_interleaved_write_frame(%struct.TYPE_28__* %266, %struct.TYPE_26__* %9)
  store i32 %267, i32* %12, align 4
  %268 = load i32, i32* %12, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %210
  %271 = load i32, i32* @stderr, align 4
  %272 = call i32 (i32, i8*, ...) @fprintf(i32 %271, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %275

273:                                              ; preds = %210
  %274 = call i32 @av_packet_unref(%struct.TYPE_26__* %9)
  br label %182

275:                                              ; preds = %270, %187
  %276 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %277 = call i32 @av_write_trailer(%struct.TYPE_28__* %276)
  br label %278

278:                                              ; preds = %275, %178, %168, %139, %127, %70, %58, %47, %39
  %279 = call i32 @avformat_close_input(%struct.TYPE_28__** %7)
  %280 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %281 = icmp ne %struct.TYPE_28__* %280, null
  br i1 %281, label %282, label %293

282:                                              ; preds = %278
  %283 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @AVFMT_NOFILE, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %293, label %289

289:                                              ; preds = %282
  %290 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %290, i32 0, i32 1
  %292 = call i32 @avio_closep(i32* %291)
  br label %293

293:                                              ; preds = %289, %282, %278
  %294 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %295 = call i32 @avformat_free_context(%struct.TYPE_28__* %294)
  %296 = call i32 @av_freep(i32** %15)
  %297 = load i32, i32* %12, align 4
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %299, label %308

299:                                              ; preds = %293
  %300 = load i32, i32* %12, align 4
  %301 = load i32, i32* @AVERROR_EOF, align 4
  %302 = icmp ne i32 %300, %301
  br i1 %302, label %303, label %308

303:                                              ; preds = %299
  %304 = load i32, i32* @stderr, align 4
  %305 = load i32, i32* %12, align 4
  %306 = call i8* @av_err2str(i32 %305)
  %307 = call i32 (i32, i8*, ...) @fprintf(i32 %304, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* %306)
  store i32 1, i32* %3, align 4
  br label %309

308:                                              ; preds = %299, %293
  store i32 0, i32* %3, align 4
  br label %309

309:                                              ; preds = %308, %303, %24
  %310 = load i32, i32* %3, align 4
  ret i32 %310
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @avformat_open_input(%struct.TYPE_28__**, i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @avformat_find_stream_info(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @av_dump_format(%struct.TYPE_28__*, i32, i8*, i32) #1

declare dso_local i32 @avformat_alloc_output_context2(%struct.TYPE_28__**, i32*, i32*, i8*) #1

declare dso_local i32* @av_mallocz_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_25__* @avformat_new_stream(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @avcodec_parameters_copy(%struct.TYPE_29__*, %struct.TYPE_29__*) #1

declare dso_local i32 @avio_open(i32*, i8*, i32) #1

declare dso_local i32 @avformat_write_header(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @av_read_frame(%struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_26__*) #1

declare dso_local i32 @log_packet(%struct.TYPE_28__*, %struct.TYPE_26__*, i8*) #1

declare dso_local i8* @av_rescale_q_rnd(i8*, i32, i32, i32) #1

declare dso_local i32 @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @av_interleaved_write_frame(%struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local i32 @av_write_trailer(%struct.TYPE_28__*) #1

declare dso_local i32 @avformat_close_input(%struct.TYPE_28__**) #1

declare dso_local i32 @avio_closep(i32*) #1

declare dso_local i32 @avformat_free_context(%struct.TYPE_28__*) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i8* @av_err2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
