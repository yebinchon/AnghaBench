; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avio.c_url_alloc_for_protocol.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avio.c_url_alloc_for_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32, %struct.TYPE_10__*, i32, i64, i64, %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32, i8*, i32, i32*, i32, i32 }

@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Impossible to open the '%s' protocol for reading\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Impossible to open the '%s' protocol for writing\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ffurl_context_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"subfile\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@AVERROR_OPTION_NOT_FOUND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Key '%s' not found.\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Error parsing options string %s\0A\00", align 1
@URL_PROTOCOL_FLAG_NETWORK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__**, %struct.TYPE_9__*, i8*, i32, i32*)* @url_alloc_for_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @url_alloc_for_protocol(%struct.TYPE_10__** %0, %struct.TYPE_9__* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @AVIO_FLAG_READ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %5
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @AV_LOG_ERROR, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @av_log(%struct.TYPE_10__* null, i32 %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @EIO, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %6, align 4
  br label %275

38:                                               ; preds = %25, %5
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @av_log(%struct.TYPE_10__* null, i32 %49, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* @EIO, align 4
  %55 = call i32 @AVERROR(i32 %54)
  store i32 %55, i32* %6, align 4
  br label %275

56:                                               ; preds = %43, %38
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = sext i32 %58 to i64
  %60 = add i64 64, %59
  %61 = add i64 %60, 1
  %62 = trunc i64 %61 to i32
  %63 = call i8* @av_mallocz(i32 %62)
  %64 = bitcast i8* %63 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %12, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %66 = icmp ne %struct.TYPE_10__* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %56
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = call i32 @AVERROR(i32 %68)
  store i32 %69, i32* %13, align 4
  br label %264

70:                                               ; preds = %56
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 7
  store i32* @ffurl_context_class, i32** %72, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 1
  %75 = bitcast %struct.TYPE_10__* %74 to i8*
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @strcpy(i8* %80, i8* %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 6
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %85, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 5
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 4
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %253

97:                                               ; preds = %70
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @av_mallocz(i32 %100)
  %102 = bitcast i8* %101 to %struct.TYPE_10__*
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  store %struct.TYPE_10__* %102, %struct.TYPE_10__** %104, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = icmp ne %struct.TYPE_10__* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %97
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = call i32 @AVERROR(i32 %110)
  store i32 %111, i32* %13, align 4
  br label %264

112:                                              ; preds = %97
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %252

117:                                              ; preds = %112
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @strlen(i8* %120)
  store i32 %121, i32* %14, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i8* @strchr(i8* %124, i8 signext 44)
  store i8* %125, i8** %15, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = bitcast %struct.TYPE_10__* %131 to i32**
  store i32* %128, i32** %132, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = call i32 @av_opt_set_defaults(%struct.TYPE_10__* %135)
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @strncmp(i8* %139, i8* %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %251, label %146

146:                                              ; preds = %117
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8*, i8** %15, align 8
  %154 = icmp eq i8* %152, %153
  br i1 %154, label %155, label %251

155:                                              ; preds = %146
  store i32 0, i32* %16, align 4
  %156 = load i8*, i8** %15, align 8
  store i8* %156, i8** %17, align 8
  %157 = load i8*, i8** %17, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %17, align 8
  %159 = load i8, i8* %158, align 1
  store i8 %159, i8* %18, align 1
  %160 = load i8*, i8** %17, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %17, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = call i64 @strcmp(i8* %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %155
  %168 = load i32, i32* @EINVAL, align 4
  %169 = call i32 @AVERROR(i32 %168)
  store i32 %169, i32* %16, align 4
  br label %170

170:                                              ; preds = %167, %155
  br label %171

171:                                              ; preds = %220, %170
  %172 = load i32, i32* %16, align 4
  %173 = icmp sge i32 %172, 0
  br i1 %173, label %174, label %189

174:                                              ; preds = %171
  %175 = load i8*, i8** %17, align 8
  %176 = load i8, i8* %18, align 1
  %177 = call i8* @strchr(i8* %175, i8 signext %176)
  store i8* %177, i8** %19, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %189

179:                                              ; preds = %174
  %180 = load i8*, i8** %17, align 8
  %181 = load i8*, i8** %19, align 8
  %182 = icmp ult i8* %180, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %179
  %184 = load i8*, i8** %19, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  %186 = load i8, i8* %18, align 1
  %187 = call i8* @strchr(i8* %185, i8 signext %186)
  store i8* %187, i8** %20, align 8
  %188 = icmp ne i8* %187, null
  br label %189

189:                                              ; preds = %183, %179, %174, %171
  %190 = phi i1 [ false, %179 ], [ false, %174 ], [ false, %171 ], [ %188, %183 ]
  br i1 %190, label %191, label %226

191:                                              ; preds = %189
  %192 = load i8*, i8** %19, align 8
  store i8 0, i8* %192, align 1
  %193 = load i8*, i8** %20, align 8
  store i8 0, i8* %193, align 1
  %194 = load i8*, i8** %17, align 8
  %195 = call i64 @strcmp(i8* %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %191
  %198 = load i8*, i8** %17, align 8
  %199 = call i64 @strcmp(i8* %198, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = load i32, i32* @AVERROR_OPTION_NOT_FOUND, align 4
  store i32 %202, i32* %16, align 4
  br label %211

203:                                              ; preds = %197, %191
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = load i8*, i8** %17, align 8
  %208 = load i8*, i8** %19, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 1
  %210 = call i32 @av_opt_set(%struct.TYPE_10__* %206, i8* %207, i8* %209, i32 0)
  store i32 %210, i32* %16, align 4
  br label %211

211:                                              ; preds = %203, %201
  %212 = load i32, i32* %16, align 4
  %213 = load i32, i32* @AVERROR_OPTION_NOT_FOUND, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %211
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %217 = load i32, i32* @AV_LOG_ERROR, align 4
  %218 = load i8*, i8** %17, align 8
  %219 = call i32 @av_log(%struct.TYPE_10__* %216, i32 %217, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %218)
  br label %220

220:                                              ; preds = %215, %211
  %221 = load i8, i8* %18, align 1
  %222 = load i8*, i8** %19, align 8
  store i8 %221, i8* %222, align 1
  %223 = load i8*, i8** %20, align 8
  store i8 %221, i8* %223, align 1
  %224 = load i8*, i8** %20, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 1
  store i8* %225, i8** %17, align 8
  br label %171

226:                                              ; preds = %189
  %227 = load i32, i32* %16, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %226
  %230 = load i8*, i8** %17, align 8
  %231 = load i8*, i8** %19, align 8
  %232 = icmp ne i8* %230, %231
  br i1 %232, label %233, label %244

233:                                              ; preds = %229, %226
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %235 = load i32, i32* @AV_LOG_ERROR, align 4
  %236 = load i8*, i8** %15, align 8
  %237 = call i32 @av_log(%struct.TYPE_10__* %234, i32 %235, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %236)
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 2
  %240 = call i32 @av_freep(%struct.TYPE_10__** %239)
  %241 = call i32 @av_freep(%struct.TYPE_10__** %12)
  %242 = load i32, i32* @EINVAL, align 4
  %243 = call i32 @AVERROR(i32 %242)
  store i32 %243, i32* %13, align 4
  br label %264

244:                                              ; preds = %229
  %245 = load i8*, i8** %15, align 8
  %246 = load i8*, i8** %19, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 1
  %248 = load i8*, i8** %19, align 8
  %249 = call i32 @strlen(i8* %248)
  %250 = call i32 @memmove(i8* %245, i8* %247, i32 %249)
  br label %251

251:                                              ; preds = %244, %146, %117
  br label %252

252:                                              ; preds = %251, %112
  br label %253

253:                                              ; preds = %252, %70
  %254 = load i32*, i32** %11, align 8
  %255 = icmp ne i32* %254, null
  br i1 %255, label %256, label %261

256:                                              ; preds = %253
  %257 = load i32*, i32** %11, align 8
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 3
  store i32 %258, i32* %260, align 8
  br label %261

261:                                              ; preds = %256, %253
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %263 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %262, %struct.TYPE_10__** %263, align 8
  store i32 0, i32* %6, align 4
  br label %275

264:                                              ; preds = %233, %109, %67
  %265 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %265, align 8
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %267 = icmp ne %struct.TYPE_10__* %266, null
  br i1 %267, label %268, label %272

268:                                              ; preds = %264
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 2
  %271 = call i32 @av_freep(%struct.TYPE_10__** %270)
  br label %272

272:                                              ; preds = %268, %264
  %273 = call i32 @av_freep(%struct.TYPE_10__** %12)
  %274 = load i32, i32* %13, align 4
  store i32 %274, i32* %6, align 4
  br label %275

275:                                              ; preds = %272, %261, %48, %30
  %276 = load i32, i32* %6, align 4
  ret i32 %276
}

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_mallocz(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @av_opt_set_defaults(%struct.TYPE_10__*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @av_opt_set(%struct.TYPE_10__*, i8*, i8*, i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_10__**) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
