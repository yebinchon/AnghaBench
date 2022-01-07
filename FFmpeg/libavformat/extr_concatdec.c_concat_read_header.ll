; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_concatdec.c_concat_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_concatdec.c_concat_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i64, %struct.TYPE_17__**, i32, %struct.TYPE_20__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_19__ = type { i32, i64, i64, i64 }

@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@SPACE_CHARS = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Line %d: filename required\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"inpoint\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"outpoint\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Line %d: %s without file\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Line %d: invalid %s '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"file_packet_metadata\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Line %d: packet metadata required\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Line %d: failed to parse metadata string\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"exact_stream_id\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"Line %d: exact_stream_id without stream\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"ffconcat\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"Line %d: invalid version\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Line %d: unknown keyword '%s'\0A\00", align 1
@AVERROR_EOF = common dso_local global i64 0, align 8
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@MATCH_EXACT_ID = common dso_local global i32 0, align 4
@MATCH_ONE_TO_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @concat_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_read_header(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_22__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %11, align 8
  store i64 0, i64* %13, align 8
  %23 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %24 = call i32 @av_bprint_init(%struct.TYPE_22__* %5, i32 0, i32 %23)
  br label %25

25:                                               ; preds = %260, %45, %1
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @ff_read_line_to_bprint_overwrite(i32 %28, %struct.TYPE_22__* %5)
  store i64 %29, i64* %12, align 8
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %261

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %6, align 8
  %36 = call i8* @get_keyword(i8** %6)
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 35
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %31
  br label %25

46:                                               ; preds = %40
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @SPACE_CHARS, align 4
  %52 = call i8* @av_get_token(i8** %6, i32 %51)
  store i8* %52, i8** %14, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_21__* %56, i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  %61 = call i32 @FAIL(i32 %60)
  br label %62

62:                                               ; preds = %55, %50
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = call i64 @add_file(%struct.TYPE_21__* %63, i8* %64, %struct.TYPE_19__** %11, i32* %10)
  store i64 %65, i64* %12, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %432

68:                                               ; preds = %62
  br label %260

69:                                               ; preds = %46
  %70 = load i8*, i8** %7, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load i8*, i8** %7, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i8*, i8** %7, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %131, label %81

81:                                               ; preds = %77, %73, %69
  %82 = call i8* @get_keyword(i8** %6)
  store i8* %82, i8** %15, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %84 = icmp ne %struct.TYPE_19__* %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %81
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %87 = load i32, i32* @AV_LOG_ERROR, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_21__* %86, i32 %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %88, i8* %89)
  %91 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  %92 = call i32 @FAIL(i32 %91)
  br label %93

93:                                               ; preds = %85, %81
  %94 = load i8*, i8** %15, align 8
  %95 = call i64 @av_parse_time(i64* %16, i8* %94, i32 1)
  store i64 %95, i64* %12, align 8
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %99 = load i32, i32* @AV_LOG_ERROR, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i8*, i8** %7, align 8
  %102 = load i8*, i8** %15, align 8
  %103 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_21__* %98, i32 %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %100, i8* %101, i8* %102)
  br label %432

104:                                              ; preds = %93
  %105 = load i8*, i8** %7, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i64, i64* %16, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 3
  store i64 %109, i64* %111, align 8
  br label %130

112:                                              ; preds = %104
  %113 = load i8*, i8** %7, align 8
  %114 = call i64 @strcmp(i8* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i64, i64* %16, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  br label %129

120:                                              ; preds = %112
  %121 = load i8*, i8** %7, align 8
  %122 = call i64 @strcmp(i8* %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i64, i64* %16, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %124, %120
  br label %129

129:                                              ; preds = %128, %116
  br label %130

130:                                              ; preds = %129, %108
  br label %259

131:                                              ; preds = %77
  %132 = load i8*, i8** %7, align 8
  %133 = call i64 @strcmp(i8* %132, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %174, label %135

135:                                              ; preds = %131
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %137 = icmp ne %struct.TYPE_19__* %136, null
  br i1 %137, label %146, label %138

138:                                              ; preds = %135
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %140 = load i32, i32* @AV_LOG_ERROR, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load i8*, i8** %7, align 8
  %143 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_21__* %139, i32 %140, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %141, i8* %142)
  %144 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  %145 = call i32 @FAIL(i32 %144)
  br label %146

146:                                              ; preds = %138, %135
  %147 = load i32, i32* @SPACE_CHARS, align 4
  %148 = call i8* @av_get_token(i8** %6, i32 %147)
  store i8* %148, i8** %17, align 8
  %149 = load i8*, i8** %17, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %158, label %151

151:                                              ; preds = %146
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %153 = load i32, i32* @AV_LOG_ERROR, align 4
  %154 = load i32, i32* %8, align 4
  %155 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_21__* %152, i32 %153, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  %157 = call i32 @FAIL(i32 %156)
  br label %158

158:                                              ; preds = %151, %146
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i8*, i8** %17, align 8
  %162 = call i64 @av_dict_parse_string(i32* %160, i8* %161, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i32 0)
  store i64 %162, i64* %12, align 8
  %163 = icmp slt i64 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %158
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %166 = load i32, i32* @AV_LOG_ERROR, align 4
  %167 = load i32, i32* %8, align 4
  %168 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_21__* %165, i32 %166, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 %167)
  %169 = call i32 @av_freep(i8** %17)
  %170 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  %171 = call i32 @FAIL(i32 %170)
  br label %172

172:                                              ; preds = %164, %158
  %173 = call i32 @av_freep(i8** %17)
  br label %258

174:                                              ; preds = %131
  %175 = load i8*, i8** %7, align 8
  %176 = call i64 @strcmp(i8* %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %187, label %178

178:                                              ; preds = %174
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %180 = call i32 @avformat_new_stream(%struct.TYPE_21__* %179, i32* null)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %178
  %183 = load i32, i32* @ENOMEM, align 4
  %184 = call i32 @AVERROR(i32 %183)
  %185 = call i32 @FAIL(i32 %184)
  br label %186

186:                                              ; preds = %182, %178
  br label %257

187:                                              ; preds = %174
  %188 = load i8*, i8** %7, align 8
  %189 = call i64 @strcmp(i8* %188, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %217, label %191

191:                                              ; preds = %187
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %203, label %196

196:                                              ; preds = %191
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %198 = load i32, i32* @AV_LOG_ERROR, align 4
  %199 = load i32, i32* %8, align 4
  %200 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_21__* %197, i32 %198, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  %202 = call i32 @FAIL(i32 %201)
  br label %203

203:                                              ; preds = %196, %191
  %204 = call i8* @get_keyword(i8** %6)
  %205 = call i32 @strtol(i8* %204, i32* null, i32 0)
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %207, align 8
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = sub nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %208, i64 %213
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  store i32 %205, i32* %216, align 4
  br label %256

217:                                              ; preds = %187
  %218 = load i8*, i8** %7, align 8
  %219 = call i64 @strcmp(i8* %218, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %247, label %221

221:                                              ; preds = %217
  %222 = call i8* @get_keyword(i8** %6)
  store i8* %222, i8** %18, align 8
  %223 = call i8* @get_keyword(i8** %6)
  store i8* %223, i8** %19, align 8
  %224 = load i8*, i8** %18, align 8
  %225 = call i64 @strcmp(i8* %224, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %231, label %227

227:                                              ; preds = %221
  %228 = load i8*, i8** %19, align 8
  %229 = call i64 @strcmp(i8* %228, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %227, %221
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %233 = load i32, i32* @AV_LOG_ERROR, align 4
  %234 = load i32, i32* %8, align 4
  %235 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_21__* %232, i32 %233, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i32 %234)
  %236 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  %237 = call i32 @FAIL(i32 %236)
  br label %238

238:                                              ; preds = %231, %227
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %238
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 0
  store i32 1, i32* %245, align 8
  br label %246

246:                                              ; preds = %243, %238
  br label %255

247:                                              ; preds = %217
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %249 = load i32, i32* @AV_LOG_ERROR, align 4
  %250 = load i32, i32* %8, align 4
  %251 = load i8*, i8** %7, align 8
  %252 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_21__* %248, i32 %249, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i32 %250, i8* %251)
  %253 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  %254 = call i32 @FAIL(i32 %253)
  br label %255

255:                                              ; preds = %247, %246
  br label %256

256:                                              ; preds = %255, %203
  br label %257

257:                                              ; preds = %256, %186
  br label %258

258:                                              ; preds = %257, %172
  br label %259

259:                                              ; preds = %258, %130
  br label %260

260:                                              ; preds = %259, %68
  br label %25

261:                                              ; preds = %25
  %262 = load i64, i64* %12, align 8
  %263 = load i64, i64* @AVERROR_EOF, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %269

265:                                              ; preds = %261
  %266 = load i64, i64* %12, align 8
  %267 = icmp slt i64 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %265
  br label %432

269:                                              ; preds = %265, %261
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %269
  %275 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  %276 = call i32 @FAIL(i32 %275)
  br label %277

277:                                              ; preds = %274, %269
  store i32 0, i32* %9, align 4
  br label %278

278:                                              ; preds = %398, %277
  %279 = load i32, i32* %9, align 4
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp slt i32 %279, %282
  br i1 %283, label %284, label %401

284:                                              ; preds = %278
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 4
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %286, align 8
  %288 = load i32, i32* %9, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %304

295:                                              ; preds = %284
  %296 = load i64, i64* %13, align 8
  %297 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %297, i32 0, i32 4
  %299 = load %struct.TYPE_18__*, %struct.TYPE_18__** %298, align 8
  %300 = load i32, i32* %9, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 0
  store i64 %296, i64* %303, align 8
  br label %313

304:                                              ; preds = %284
  %305 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 4
  %307 = load %struct.TYPE_18__*, %struct.TYPE_18__** %306, align 8
  %308 = load i32, i32* %9, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  store i64 %312, i64* %13, align 8
  br label %313

313:                                              ; preds = %304, %295
  %314 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %314, i32 0, i32 4
  %316 = load %struct.TYPE_18__*, %struct.TYPE_18__** %315, align 8
  %317 = load i32, i32* %9, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %372

324:                                              ; preds = %313
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 4
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %326, align 8
  %328 = load i32, i32* %9, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %330, i32 0, i32 2
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %346, label %335

335:                                              ; preds = %324
  %336 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %336, i32 0, i32 4
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %337, align 8
  %339 = load i32, i32* %9, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %338, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %341, i32 0, i32 3
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %345 = icmp eq i64 %343, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %335, %324
  br label %401

347:                                              ; preds = %335
  %348 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %348, i32 0, i32 4
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %349, align 8
  %351 = load i32, i32* %9, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %353, i32 0, i32 3
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %356, i32 0, i32 4
  %358 = load %struct.TYPE_18__*, %struct.TYPE_18__** %357, align 8
  %359 = load i32, i32* %9, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %358, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %361, i32 0, i32 2
  %363 = load i64, i64* %362, align 8
  %364 = sub nsw i64 %355, %363
  %365 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %365, i32 0, i32 4
  %367 = load %struct.TYPE_18__*, %struct.TYPE_18__** %366, align 8
  %368 = load i32, i32* %9, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %370, i32 0, i32 1
  store i64 %364, i64* %371, align 8
  br label %372

372:                                              ; preds = %347, %313
  %373 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %373, i32 0, i32 4
  %375 = load %struct.TYPE_18__*, %struct.TYPE_18__** %374, align 8
  %376 = load i32, i32* %9, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %378, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %382 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %381, i32 0, i32 4
  %383 = load %struct.TYPE_18__*, %struct.TYPE_18__** %382, align 8
  %384 = load i32, i32* %9, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %383, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %386, i32 0, i32 4
  store i64 %380, i64* %387, align 8
  %388 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %388, i32 0, i32 4
  %390 = load %struct.TYPE_18__*, %struct.TYPE_18__** %389, align 8
  %391 = load i32, i32* %9, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %393, i32 0, i32 1
  %395 = load i64, i64* %394, align 8
  %396 = load i64, i64* %13, align 8
  %397 = add nsw i64 %396, %395
  store i64 %397, i64* %13, align 8
  br label %398

398:                                              ; preds = %372
  %399 = load i32, i32* %9, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %9, align 4
  br label %278

401:                                              ; preds = %346, %278
  %402 = load i32, i32* %9, align 4
  %403 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %404 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = icmp eq i32 %402, %405
  br i1 %406, label %407, label %413

407:                                              ; preds = %401
  %408 = load i64, i64* %13, align 8
  %409 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %410 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %409, i32 0, i32 1
  store i64 %408, i64* %410, align 8
  %411 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %411, i32 0, i32 2
  store i32 1, i32* %412, align 8
  br label %413

413:                                              ; preds = %407, %401
  %414 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %415 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %420

418:                                              ; preds = %413
  %419 = load i32, i32* @MATCH_EXACT_ID, align 4
  br label %422

420:                                              ; preds = %413
  %421 = load i32, i32* @MATCH_ONE_TO_ONE, align 4
  br label %422

422:                                              ; preds = %420, %418
  %423 = phi i32 [ %419, %418 ], [ %421, %420 ]
  %424 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %425 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %424, i32 0, i32 3
  store i32 %423, i32* %425, align 4
  %426 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %427 = call i64 @open_file(%struct.TYPE_21__* %426, i32 0)
  store i64 %427, i64* %12, align 8
  %428 = icmp slt i64 %427, 0
  br i1 %428, label %429, label %430

429:                                              ; preds = %422
  br label %432

430:                                              ; preds = %422
  %431 = call i32 @av_bprint_finalize(%struct.TYPE_22__* %5, i32* null)
  store i32 0, i32* %2, align 4
  br label %438

432:                                              ; preds = %429, %268, %97, %67
  %433 = call i32 @av_bprint_finalize(%struct.TYPE_22__* %5, i32* null)
  %434 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %435 = call i32 @concat_read_close(%struct.TYPE_21__* %434)
  %436 = load i64, i64* %12, align 8
  %437 = trunc i64 %436 to i32
  store i32 %437, i32* %2, align 4
  br label %438

438:                                              ; preds = %432, %430
  %439 = load i32, i32* %2, align 4
  ret i32 %439
}

declare dso_local i32 @av_bprint_init(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i64 @ff_read_line_to_bprint_overwrite(i32, %struct.TYPE_22__*) #1

declare dso_local i8* @get_keyword(i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @av_get_token(i8**, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*, i32, ...) #1

declare dso_local i32 @FAIL(i32) #1

declare dso_local i64 @add_file(%struct.TYPE_21__*, i8*, %struct.TYPE_19__**, i32*) #1

declare dso_local i64 @av_parse_time(i64*, i8*, i32) #1

declare dso_local i64 @av_dict_parse_string(i32*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i32 @avformat_new_stream(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i64 @open_file(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @concat_read_close(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
