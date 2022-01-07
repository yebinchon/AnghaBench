; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_librtmp.c_rtmp_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_librtmp.c_rtmp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@RTMP_LOGCRIT = common dso_local global i32 0, align 4
@RTMP_LOGERROR = common dso_local global i32 0, align 4
@RTMP_LOGWARNING = common dso_local global i32 0, align 4
@RTMP_LOGINFO = common dso_local global i32 0, align 4
@RTMP_LOGDEBUG = common dso_local global i32 0, align 4
@RTMP_LOGDEBUG2 = common dso_local global i32 0, align 4
@rtmp_log = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" app=\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" tcUrl=\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c" pageUrl=\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" swfUrl=\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" flashVer=\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" conn=\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c" playpath=\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c" live=1\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c" subscribe=\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" buffer=\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c" swfVfy=1\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i32)* @rtmp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtmp_open(%struct.TYPE_13__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %8, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 13
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %9, align 8
  store i32 0, i32* %10, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %12, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %13, align 4
  %32 = call i32 (...) @av_log_get_level()
  switch i32 %32, label %33 [
    i32 131, label %34
    i32 132, label %36
    i32 128, label %38
    i32 130, label %40
    i32 129, label %42
    i32 133, label %44
  ]

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %3, %33
  %35 = load i32, i32* @RTMP_LOGCRIT, align 4
  store i32 %35, i32* %11, align 4
  br label %46

36:                                               ; preds = %3
  %37 = load i32, i32* @RTMP_LOGERROR, align 4
  store i32 %37, i32* %11, align 4
  br label %46

38:                                               ; preds = %3
  %39 = load i32, i32* @RTMP_LOGWARNING, align 4
  store i32 %39, i32* %11, align 4
  br label %46

40:                                               ; preds = %3
  %41 = load i32, i32* @RTMP_LOGINFO, align 4
  store i32 %41, i32* %11, align 4
  br label %46

42:                                               ; preds = %3
  %43 = load i32, i32* @RTMP_LOGDEBUG, align 4
  store i32 %43, i32* %11, align 4
  br label %46

44:                                               ; preds = %3
  %45 = load i32, i32* @RTMP_LOGDEBUG2, align 4
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %44, %42, %40, %38, %36, %34
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @RTMP_LogSetLevel(i32 %47)
  %49 = load i32, i32* @rtmp_log, align 4
  %50 = call i32 @RTMP_LogSetCallback(i32 %49)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %46
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 6
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %55, %46
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = sext i32 %75 to i64
  %77 = add i64 %76, 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %71, %66
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = sext i32 %91 to i64
  %93 = add i64 %92, 10
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %87, %82
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = sext i32 %107 to i64
  %109 = add i64 %108, 11
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = add i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %103, %98
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 4
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %162

119:                                              ; preds = %114
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 4
  %122 = load i8*, i8** %121, align 8
  store i8* %122, i8** %15, align 8
  store i32 0, i32* %16, align 4
  br label %123

123:                                              ; preds = %147, %119
  %124 = load i8*, i8** %15, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %148

126:                                              ; preds = %123
  %127 = load i32, i32* %16, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %16, align 4
  %129 = load i8*, i8** %15, align 8
  %130 = call i32 @strspn(i8* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %131 = load i8*, i8** %15, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  store i8* %133, i8** %15, align 8
  %134 = load i8*, i8** %15, align 8
  %135 = load i8, i8* %134, align 1
  %136 = icmp ne i8 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %126
  br label %148

138:                                              ; preds = %126
  %139 = load i8*, i8** %15, align 8
  %140 = call i8* @strchr(i8* %139, i8 signext 32)
  store i8* %140, i8** %14, align 8
  %141 = load i8*, i8** %14, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load i8*, i8** %14, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  store i8* %145, i8** %15, align 8
  br label %147

146:                                              ; preds = %138
  br label %148

147:                                              ; preds = %143
  br label %123

148:                                              ; preds = %146, %137, %123
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = mul i64 %150, 7
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = add i64 %153, %151
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %13, align 4
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 4
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @strlen(i8* %158)
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %13, align 4
  br label %162

162:                                              ; preds = %148, %114
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 5
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %178

167:                                              ; preds = %162
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 5
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @strlen(i8* %170)
  %172 = sext i32 %171 to i64
  %173 = add i64 %172, 11
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = add i64 %175, %173
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %13, align 4
  br label %178

178:                                              ; preds = %167, %162
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 12
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = add i64 %185, 8
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %13, align 4
  br label %188

188:                                              ; preds = %183, %178
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 6
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %204

193:                                              ; preds = %188
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 6
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 @strlen(i8* %196)
  %198 = sext i32 %197 to i64
  %199 = add i64 %198, 12
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = add i64 %201, %199
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %13, align 4
  br label %204

204:                                              ; preds = %193, %188
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 7
  %207 = load i8*, i8** %206, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %209, label %220

209:                                              ; preds = %204
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 7
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @strlen(i8* %212)
  %214 = sext i32 %213 to i64
  %215 = add i64 %214, 9
  %216 = load i32, i32* %13, align 4
  %217 = sext i32 %216 to i64
  %218 = add i64 %217, %215
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %13, align 4
  br label %220

220:                                              ; preds = %209, %204
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 8
  %223 = load i8*, i8** %222, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %230, label %225

225:                                              ; preds = %220
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 9
  %228 = load i8*, i8** %227, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %258

230:                                              ; preds = %225, %220
  %231 = load i32, i32* %13, align 4
  %232 = sext i32 %231 to i64
  %233 = add i64 %232, 9
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %13, align 4
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 9
  %237 = load i8*, i8** %236, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %250

239:                                              ; preds = %230
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 9
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @strlen(i8* %242)
  %244 = sext i32 %243 to i64
  %245 = add i64 %244, 10
  %246 = load i32, i32* %13, align 4
  %247 = sext i32 %246 to i64
  %248 = add i64 %247, %245
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %13, align 4
  br label %257

250:                                              ; preds = %230
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 8
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 @strlen(i8* %253)
  %255 = load i32, i32* %13, align 4
  %256 = add nsw i32 %255, %254
  store i32 %256, i32* %13, align 4
  br label %257

257:                                              ; preds = %250, %239
  br label %258

258:                                              ; preds = %257, %225
  %259 = load i32, i32* %13, align 4
  %260 = call i8* @av_malloc(i32 %259)
  store i8* %260, i8** %12, align 8
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 10
  store i8* %260, i8** %262, align 8
  %263 = icmp ne i8* %260, null
  br i1 %263, label %267, label %264

264:                                              ; preds = %258
  %265 = load i32, i32* @ENOMEM, align 4
  %266 = call i32 @AVERROR(i32 %265)
  store i32 %266, i32* %4, align 4
  br label %524

267:                                              ; preds = %258
  %268 = load i8*, i8** %12, align 8
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  %272 = load i32, i32* %13, align 4
  %273 = call i32 @av_strlcpy(i8* %268, i8* %271, i32 %272)
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 0
  %276 = load i8*, i8** %275, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %278, label %288

278:                                              ; preds = %267
  %279 = load i8*, i8** %12, align 8
  %280 = load i32, i32* %13, align 4
  %281 = call i32 @av_strlcat(i8* %279, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %280)
  %282 = load i8*, i8** %12, align 8
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 0
  %285 = load i8*, i8** %284, align 8
  %286 = load i32, i32* %13, align 4
  %287 = call i32 @av_strlcat(i8* %282, i8* %285, i32 %286)
  br label %288

288:                                              ; preds = %278, %267
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 1
  %291 = load i8*, i8** %290, align 8
  %292 = icmp ne i8* %291, null
  br i1 %292, label %293, label %303

293:                                              ; preds = %288
  %294 = load i8*, i8** %12, align 8
  %295 = load i32, i32* %13, align 4
  %296 = call i32 @av_strlcat(i8* %294, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %295)
  %297 = load i8*, i8** %12, align 8
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 1
  %300 = load i8*, i8** %299, align 8
  %301 = load i32, i32* %13, align 4
  %302 = call i32 @av_strlcat(i8* %297, i8* %300, i32 %301)
  br label %303

303:                                              ; preds = %293, %288
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 2
  %306 = load i8*, i8** %305, align 8
  %307 = icmp ne i8* %306, null
  br i1 %307, label %308, label %318

308:                                              ; preds = %303
  %309 = load i8*, i8** %12, align 8
  %310 = load i32, i32* %13, align 4
  %311 = call i32 @av_strlcat(i8* %309, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %310)
  %312 = load i8*, i8** %12, align 8
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 2
  %315 = load i8*, i8** %314, align 8
  %316 = load i32, i32* %13, align 4
  %317 = call i32 @av_strlcat(i8* %312, i8* %315, i32 %316)
  br label %318

318:                                              ; preds = %308, %303
  %319 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 8
  %321 = load i8*, i8** %320, align 8
  %322 = icmp ne i8* %321, null
  br i1 %322, label %323, label %333

323:                                              ; preds = %318
  %324 = load i8*, i8** %12, align 8
  %325 = load i32, i32* %13, align 4
  %326 = call i32 @av_strlcat(i8* %324, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %325)
  %327 = load i8*, i8** %12, align 8
  %328 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 8
  %330 = load i8*, i8** %329, align 8
  %331 = load i32, i32* %13, align 4
  %332 = call i32 @av_strlcat(i8* %327, i8* %330, i32 %331)
  br label %333

333:                                              ; preds = %323, %318
  %334 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 3
  %336 = load i8*, i8** %335, align 8
  %337 = icmp ne i8* %336, null
  br i1 %337, label %338, label %348

338:                                              ; preds = %333
  %339 = load i8*, i8** %12, align 8
  %340 = load i32, i32* %13, align 4
  %341 = call i32 @av_strlcat(i8* %339, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %340)
  %342 = load i8*, i8** %12, align 8
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 3
  %345 = load i8*, i8** %344, align 8
  %346 = load i32, i32* %13, align 4
  %347 = call i32 @av_strlcat(i8* %342, i8* %345, i32 %346)
  br label %348

348:                                              ; preds = %338, %333
  %349 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 4
  %351 = load i8*, i8** %350, align 8
  %352 = icmp ne i8* %351, null
  br i1 %352, label %353, label %393

353:                                              ; preds = %348
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 4
  %356 = load i8*, i8** %355, align 8
  store i8* %356, i8** %18, align 8
  br label %357

357:                                              ; preds = %391, %353
  %358 = load i8*, i8** %18, align 8
  %359 = icmp ne i8* %358, null
  br i1 %359, label %360, label %392

360:                                              ; preds = %357
  %361 = load i8*, i8** %12, align 8
  %362 = load i32, i32* %13, align 4
  %363 = call i32 @av_strlcat(i8* %361, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %362)
  %364 = load i8*, i8** %18, align 8
  %365 = call i32 @strspn(i8* %364, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %366 = load i8*, i8** %18, align 8
  %367 = sext i32 %365 to i64
  %368 = getelementptr inbounds i8, i8* %366, i64 %367
  store i8* %368, i8** %18, align 8
  %369 = load i8*, i8** %18, align 8
  %370 = load i8, i8* %369, align 1
  %371 = icmp ne i8 %370, 0
  br i1 %371, label %373, label %372

372:                                              ; preds = %360
  br label %392

373:                                              ; preds = %360
  %374 = load i8*, i8** %18, align 8
  %375 = call i8* @strchr(i8* %374, i8 signext 32)
  store i8* %375, i8** %17, align 8
  %376 = load i8*, i8** %17, align 8
  %377 = icmp ne i8* %376, null
  br i1 %377, label %378, label %380

378:                                              ; preds = %373
  %379 = load i8*, i8** %17, align 8
  store i8 0, i8* %379, align 1
  br label %380

380:                                              ; preds = %378, %373
  %381 = load i8*, i8** %12, align 8
  %382 = load i8*, i8** %18, align 8
  %383 = load i32, i32* %13, align 4
  %384 = call i32 @av_strlcat(i8* %381, i8* %382, i32 %383)
  %385 = load i8*, i8** %17, align 8
  %386 = icmp ne i8* %385, null
  br i1 %386, label %387, label %390

387:                                              ; preds = %380
  %388 = load i8*, i8** %17, align 8
  %389 = getelementptr inbounds i8, i8* %388, i64 1
  store i8* %389, i8** %18, align 8
  br label %391

390:                                              ; preds = %380
  br label %392

391:                                              ; preds = %387
  br label %357

392:                                              ; preds = %390, %372, %357
  br label %393

393:                                              ; preds = %392, %348
  %394 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %395 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %394, i32 0, i32 5
  %396 = load i8*, i8** %395, align 8
  %397 = icmp ne i8* %396, null
  br i1 %397, label %398, label %408

398:                                              ; preds = %393
  %399 = load i8*, i8** %12, align 8
  %400 = load i32, i32* %13, align 4
  %401 = call i32 @av_strlcat(i8* %399, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %400)
  %402 = load i8*, i8** %12, align 8
  %403 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %404 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %403, i32 0, i32 5
  %405 = load i8*, i8** %404, align 8
  %406 = load i32, i32* %13, align 4
  %407 = call i32 @av_strlcat(i8* %402, i8* %405, i32 %406)
  br label %408

408:                                              ; preds = %398, %393
  %409 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %410 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %409, i32 0, i32 12
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %417

413:                                              ; preds = %408
  %414 = load i8*, i8** %12, align 8
  %415 = load i32, i32* %13, align 4
  %416 = call i32 @av_strlcat(i8* %414, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %415)
  br label %417

417:                                              ; preds = %413, %408
  %418 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %419 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %418, i32 0, i32 6
  %420 = load i8*, i8** %419, align 8
  %421 = icmp ne i8* %420, null
  br i1 %421, label %422, label %432

422:                                              ; preds = %417
  %423 = load i8*, i8** %12, align 8
  %424 = load i32, i32* %13, align 4
  %425 = call i32 @av_strlcat(i8* %423, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %424)
  %426 = load i8*, i8** %12, align 8
  %427 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %428 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %427, i32 0, i32 6
  %429 = load i8*, i8** %428, align 8
  %430 = load i32, i32* %13, align 4
  %431 = call i32 @av_strlcat(i8* %426, i8* %429, i32 %430)
  br label %432

432:                                              ; preds = %422, %417
  %433 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %434 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %433, i32 0, i32 7
  %435 = load i8*, i8** %434, align 8
  %436 = icmp ne i8* %435, null
  br i1 %436, label %437, label %447

437:                                              ; preds = %432
  %438 = load i8*, i8** %12, align 8
  %439 = load i32, i32* %13, align 4
  %440 = call i32 @av_strlcat(i8* %438, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %439)
  %441 = load i8*, i8** %12, align 8
  %442 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %443 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %442, i32 0, i32 7
  %444 = load i8*, i8** %443, align 8
  %445 = load i32, i32* %13, align 4
  %446 = call i32 @av_strlcat(i8* %441, i8* %444, i32 %445)
  br label %447

447:                                              ; preds = %437, %432
  %448 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %449 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %448, i32 0, i32 8
  %450 = load i8*, i8** %449, align 8
  %451 = icmp ne i8* %450, null
  br i1 %451, label %457, label %452

452:                                              ; preds = %447
  %453 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %454 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %453, i32 0, i32 9
  %455 = load i8*, i8** %454, align 8
  %456 = icmp ne i8* %455, null
  br i1 %456, label %457, label %483

457:                                              ; preds = %452, %447
  %458 = load i8*, i8** %12, align 8
  %459 = load i32, i32* %13, align 4
  %460 = call i32 @av_strlcat(i8* %458, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %459)
  %461 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %462 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %461, i32 0, i32 9
  %463 = load i8*, i8** %462, align 8
  %464 = icmp ne i8* %463, null
  br i1 %464, label %465, label %475

465:                                              ; preds = %457
  %466 = load i8*, i8** %12, align 8
  %467 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %468 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %467, i32 0, i32 9
  %469 = load i8*, i8** %468, align 8
  %470 = load i32, i32* %13, align 4
  %471 = call i32 @av_strlcat(i8* %466, i8* %469, i32 %470)
  %472 = load i8*, i8** %12, align 8
  %473 = load i32, i32* %13, align 4
  %474 = call i32 @av_strlcat(i8* %472, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %473)
  br label %482

475:                                              ; preds = %457
  %476 = load i8*, i8** %12, align 8
  %477 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %478 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %477, i32 0, i32 8
  %479 = load i8*, i8** %478, align 8
  %480 = load i32, i32* %13, align 4
  %481 = call i32 @av_strlcat(i8* %476, i8* %479, i32 %480)
  br label %482

482:                                              ; preds = %475, %465
  br label %483

483:                                              ; preds = %482, %452
  %484 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %485 = call i32 @RTMP_Init(%struct.TYPE_14__* %484)
  %486 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %487 = load i8*, i8** %12, align 8
  %488 = call i32 @RTMP_SetupURL(%struct.TYPE_14__* %486, i8* %487)
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %492, label %490

490:                                              ; preds = %483
  %491 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %491, i32* %10, align 4
  br label %513

492:                                              ; preds = %483
  %493 = load i32, i32* %7, align 4
  %494 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %495 = and i32 %493, %494
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %500

497:                                              ; preds = %492
  %498 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %499 = call i32 @RTMP_EnableWrite(%struct.TYPE_14__* %498)
  br label %500

500:                                              ; preds = %497, %492
  %501 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %502 = call i32 @RTMP_Connect(%struct.TYPE_14__* %501, i32* null)
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %508

504:                                              ; preds = %500
  %505 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %506 = call i32 @RTMP_ConnectStream(%struct.TYPE_14__* %505, i32 0)
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %510, label %508

508:                                              ; preds = %504, %500
  %509 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %509, i32* %10, align 4
  br label %513

510:                                              ; preds = %504
  %511 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %512 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %511, i32 0, i32 1
  store i32 1, i32* %512, align 8
  store i32 0, i32* %4, align 4
  br label %524

513:                                              ; preds = %508, %490
  %514 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %515 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %514, i32 0, i32 10
  %516 = call i32 @av_freep(i8** %515)
  %517 = load i32, i32* %10, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %522

519:                                              ; preds = %513
  %520 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %521 = call i32 @RTMP_Close(%struct.TYPE_14__* %520)
  br label %522

522:                                              ; preds = %519, %513
  %523 = load i32, i32* %10, align 4
  store i32 %523, i32* %4, align 4
  br label %524

524:                                              ; preds = %522, %510, %264
  %525 = load i32, i32* %4, align 4
  ret i32 %525
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @av_log_get_level(...) #1

declare dso_local i32 @RTMP_LogSetLevel(i32) #1

declare dso_local i32 @RTMP_LogSetCallback(i32) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @av_strlcat(i8*, i8*, i32) #1

declare dso_local i32 @RTMP_Init(%struct.TYPE_14__*) #1

declare dso_local i32 @RTMP_SetupURL(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @RTMP_EnableWrite(%struct.TYPE_14__*) #1

declare dso_local i32 @RTMP_Connect(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @RTMP_ConnectStream(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i32 @RTMP_Close(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
