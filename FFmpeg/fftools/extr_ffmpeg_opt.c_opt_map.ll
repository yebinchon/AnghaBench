; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_opt_map.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_opt_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@nb_input_files = common dso_local global i32 0, align 4
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Invalid sync file index: %d.\0A\00", align 1
@input_files = common dso_local global %struct.TYPE_10__** null, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"Sync stream specification in map %s does not match any streams.\0A\00", align 1
@input_streams = common dso_local global %struct.TYPE_9__** null, align 8
@AVDISCARD_ALL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [70 x i8] c"Sync stream specification in map %s matches a disabled input stream.\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Invalid output link label: %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Invalid input file index: %d.\0A\00", align 1
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"Stream map '%s' matches no streams; ignoring.\0A\00", align 1
@.str.7 = private unnamed_addr constant [90 x i8] c"Stream map '%s' matches disabled streams.\0ATo ignore this, add a trailing '?' to the map.\0A\00", align 1
@.str.8 = private unnamed_addr constant [84 x i8] c"Stream map '%s' matches no streams.\0ATo ignore this, add a trailing '?' to the map.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @opt_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt_map(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 45
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %7, align 8
  br label %30

30:                                               ; preds = %27, %3
  %31 = load i8*, i8** %7, align 8
  %32 = call i8* @av_strdup(i8* %31)
  store i8* %32, i8** %18, align 8
  %33 = load i8*, i8** %18, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %4, align 4
  br label %410

38:                                               ; preds = %30
  %39 = load i8*, i8** %18, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 44)
  store i8* %40, i8** %17, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %145

42:                                               ; preds = %38
  %43 = load i8*, i8** %17, align 8
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %17, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = call i32 @strtol(i8* %45, i8** %17, i32 0)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @nb_input_files, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %14, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50, %42
  %54 = load i32, i32* @AV_LOG_FATAL, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = call i32 @exit_program(i32 1)
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i8*, i8** %17, align 8
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i8*, i8** %17, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %17, align 8
  br label %65

65:                                               ; preds = %62, %58
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %103, %65
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @input_files, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %68, i64 %70
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %67, %74
  br i1 %75, label %76, label %106

76:                                               ; preds = %66
  %77 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @input_files, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %77, i64 %79
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @input_files, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %84, i64 %86
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i8*, i8** %17, align 8
  %98 = call i32 @check_stream_specifier(%struct.TYPE_11__* %83, i32 %96, i8* %97)
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %102

100:                                              ; preds = %76
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %15, align 4
  br label %106

102:                                              ; preds = %76
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %66

106:                                              ; preds = %100, %66
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @input_files, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %108, i64 %110
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %107, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %106
  %117 = load i32, i32* @AV_LOG_FATAL, align 4
  %118 = load i8*, i8** %7, align 8
  %119 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %117, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i8* %118)
  %120 = call i32 @exit_program(i32 1)
  br label %121

121:                                              ; preds = %116, %106
  %122 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @input_streams, align 8
  %123 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @input_files, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %123, i64 %125
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %122, i64 %132
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @AVDISCARD_ALL, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %121
  %140 = load i32, i32* @AV_LOG_FATAL, align 4
  %141 = load i8*, i8** %7, align 8
  %142 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %140, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* %141)
  %143 = call i32 @exit_program(i32 1)
  br label %144

144:                                              ; preds = %139, %121
  br label %145

145:                                              ; preds = %144, %38
  %146 = load i8*, i8** %18, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 91
  br i1 %150, label %151, label %183

151:                                              ; preds = %145
  %152 = load i8*, i8** %18, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  store i8* %153, i8** %20, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @GROW_ARRAY(%struct.TYPE_7__* %156, i32 %159)
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i64 %168
  store %struct.TYPE_7__* %169, %struct.TYPE_7__** %9, align 8
  %170 = call i32 @av_get_token(i8** %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %151
  %178 = load i32, i32* @AV_LOG_ERROR, align 4
  %179 = load i8*, i8** %18, align 8
  %180 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %178, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %179)
  %181 = call i32 @exit_program(i32 1)
  br label %182

182:                                              ; preds = %177, %151
  br label %383

183:                                              ; preds = %145
  %184 = load i8*, i8** %18, align 8
  %185 = call i8* @strchr(i8* %184, i8 signext 63)
  store i8* %185, i8** %19, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = load i8*, i8** %19, align 8
  store i8 0, i8* %188, align 1
  br label %189

189:                                              ; preds = %187, %183
  %190 = load i8*, i8** %18, align 8
  %191 = call i32 @strtol(i8* %190, i8** %16, i32 0)
  store i32 %191, i32* %12, align 4
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* @nb_input_files, align 4
  %194 = icmp sge i32 %192, %193
  br i1 %194, label %198, label %195

195:                                              ; preds = %189
  %196 = load i32, i32* %12, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %195, %189
  %199 = load i32, i32* @AV_LOG_FATAL, align 4
  %200 = load i32, i32* %12, align 4
  %201 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %199, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %200)
  %202 = call i32 @exit_program(i32 1)
  br label %203

203:                                              ; preds = %198, %195
  %204 = load i32, i32* %11, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %272

206:                                              ; preds = %203
  store i32 0, i32* %10, align 4
  br label %207

207:                                              ; preds = %268, %206
  %208 = load i32, i32* %10, align 4
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp slt i32 %208, %211
  br i1 %212, label %213, label %271

213:                                              ; preds = %207
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %215, align 8
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i64 %218
  store %struct.TYPE_7__* %219, %struct.TYPE_7__** %9, align 8
  %220 = load i32, i32* %12, align 4
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp eq i32 %220, %223
  br i1 %224, label %225, label %267

225:                                              ; preds = %213
  %226 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @input_files, align 8
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %226, i64 %230
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %233, align 8
  %235 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @input_files, align 8
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %235, i64 %239
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i8*, i8** %16, align 8
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp eq i32 %253, 58
  br i1 %254, label %255, label %258

255:                                              ; preds = %225
  %256 = load i8*, i8** %16, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 1
  br label %260

258:                                              ; preds = %225
  %259 = load i8*, i8** %16, align 8
  br label %260

260:                                              ; preds = %258, %255
  %261 = phi i8* [ %257, %255 ], [ %259, %258 ]
  %262 = call i32 @check_stream_specifier(%struct.TYPE_11__* %234, i32 %250, i8* %261)
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %260
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 2
  store i32 1, i32* %266, align 8
  br label %267

267:                                              ; preds = %264, %260, %213
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %10, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %10, align 4
  br label %207

271:                                              ; preds = %207
  br label %382

272:                                              ; preds = %203
  store i32 0, i32* %10, align 4
  br label %273

273:                                              ; preds = %378, %272
  %274 = load i32, i32* %10, align 4
  %275 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @input_files, align 8
  %276 = load i32, i32* %12, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %275, i64 %277
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = icmp slt i32 %274, %281
  br i1 %282, label %283, label %381

283:                                              ; preds = %273
  %284 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @input_files, align 8
  %285 = load i32, i32* %12, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %284, i64 %286
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 2
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %289, align 8
  %291 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @input_files, align 8
  %292 = load i32, i32* %12, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %291, i64 %293
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 2
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* %10, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = load i8*, i8** %16, align 8
  %305 = load i8, i8* %304, align 1
  %306 = sext i8 %305 to i32
  %307 = icmp eq i32 %306, 58
  br i1 %307, label %308, label %311

308:                                              ; preds = %283
  %309 = load i8*, i8** %16, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 1
  br label %313

311:                                              ; preds = %283
  %312 = load i8*, i8** %16, align 8
  br label %313

313:                                              ; preds = %311, %308
  %314 = phi i8* [ %310, %308 ], [ %312, %311 ]
  %315 = call i32 @check_stream_specifier(%struct.TYPE_11__* %290, i32 %303, i8* %314)
  %316 = icmp sle i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %313
  br label %378

318:                                              ; preds = %313
  %319 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @input_streams, align 8
  %320 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @input_files, align 8
  %321 = load i32, i32* %12, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %320, i64 %322
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* %10, align 4
  %328 = add nsw i32 %326, %327
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %319, i64 %329
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @AVDISCARD_ALL, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %318
  store i32 1, i32* %13, align 4
  br label %378

337:                                              ; preds = %318
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 1
  %340 = load %struct.TYPE_7__*, %struct.TYPE_7__** %339, align 8
  %341 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @GROW_ARRAY(%struct.TYPE_7__* %340, i32 %343)
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 1
  %347 = load %struct.TYPE_7__*, %struct.TYPE_7__** %346, align 8
  %348 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = sub nsw i32 %350, 1
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i64 %352
  store %struct.TYPE_7__* %353, %struct.TYPE_7__** %9, align 8
  %354 = load i32, i32* %12, align 4
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 0
  store i32 %354, i32* %356, align 8
  %357 = load i32, i32* %10, align 4
  %358 = sext i32 %357 to i64
  %359 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %360 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %359, i32 0, i32 1
  store i64 %358, i64* %360, align 8
  %361 = load i32, i32* %14, align 4
  %362 = icmp sge i32 %361, 0
  br i1 %362, label %363, label %370

363:                                              ; preds = %337
  %364 = load i32, i32* %14, align 4
  %365 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %366 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %365, i32 0, i32 3
  store i32 %364, i32* %366, align 4
  %367 = load i32, i32* %15, align 4
  %368 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 4
  store i32 %367, i32* %369, align 8
  br label %377

370:                                              ; preds = %337
  %371 = load i32, i32* %12, align 4
  %372 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 3
  store i32 %371, i32* %373, align 4
  %374 = load i32, i32* %10, align 4
  %375 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %376 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %375, i32 0, i32 4
  store i32 %374, i32* %376, align 8
  br label %377

377:                                              ; preds = %370, %363
  br label %378

378:                                              ; preds = %377, %336, %317
  %379 = load i32, i32* %10, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %10, align 4
  br label %273

381:                                              ; preds = %273
  br label %382

382:                                              ; preds = %381, %271
  br label %383

383:                                              ; preds = %382, %182
  %384 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %385 = icmp ne %struct.TYPE_7__* %384, null
  br i1 %385, label %408, label %386

386:                                              ; preds = %383
  %387 = load i8*, i8** %19, align 8
  %388 = icmp ne i8* %387, null
  br i1 %388, label %389, label %393

389:                                              ; preds = %386
  %390 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %391 = load i8*, i8** %7, align 8
  %392 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %390, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8* %391)
  br label %407

393:                                              ; preds = %386
  %394 = load i32, i32* %13, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %401

396:                                              ; preds = %393
  %397 = load i32, i32* @AV_LOG_FATAL, align 4
  %398 = load i8*, i8** %7, align 8
  %399 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %397, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.7, i64 0, i64 0), i8* %398)
  %400 = call i32 @exit_program(i32 1)
  br label %406

401:                                              ; preds = %393
  %402 = load i32, i32* @AV_LOG_FATAL, align 4
  %403 = load i8*, i8** %7, align 8
  %404 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %402, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.8, i64 0, i64 0), i8* %403)
  %405 = call i32 @exit_program(i32 1)
  br label %406

406:                                              ; preds = %401, %396
  br label %407

407:                                              ; preds = %406, %389
  br label %408

408:                                              ; preds = %407, %383
  %409 = call i32 @av_freep(i8** %18)
  store i32 0, i32* %4, align 4
  br label %410

410:                                              ; preds = %408, %35
  %411 = load i32, i32* %4, align 4
  ret i32 %411
}

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local i32 @check_stream_specifier(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @GROW_ARRAY(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @av_get_token(i8**, i8*) #1

declare dso_local i32 @av_freep(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
