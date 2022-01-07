; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_hls_window.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_hls_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32, i64, i64, i32, i64, i64, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_15__ = type { i8*, i64, i8*, i32, i32, %struct.TYPE_16__*, i32, i32, i64, i32, i64, i64 }
%struct.TYPE_16__ = type { i32, i8*, i8*, i32, i32, i32, %struct.TYPE_16__*, i32, i32, i32, i32 }

@MAX_URL_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@HLS_TEMP_FILE = common dso_local global i32 0, align 4
@PLAYLIST_TYPE_VOD = common dso_local global i64 0, align 8
@hls_window.warned_non_file = internal global i32 0, align 4
@HLS_PROGRAM_DATE_TIME = common dso_local global i32 0, align 4
@HLS_SINGLE_FILE = common dso_local global i32 0, align 4
@HLS_INDEPENDENT_SEGMENTS = common dso_local global i32 0, align 4
@SEGMENT_TYPE_FMP4 = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [92 x i8] c"Cannot use rename on non file protocol, this may lead to races and temporary partial files\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s.tmp\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HLS_I_FRAMES_ONLY = common dso_local global i32 0, align 4
@HLS_DISCONT_START = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"#EXT-X-DISCONTINUITY\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"#EXT-X-INDEPENDENT-SEGMENTS\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"#EXT-X-KEY:METHOD=AES-128,URI=\22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c",IV=0x%s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@HLS_ROUND_DURATIONS = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"ff_hls_write_file_entry get error\0A\00", align 1
@HLS_OMIT_ENDLIST = common dso_local global i32 0, align 4
@PLAYLIST_TYPE_NONE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [33 x i8] c"Master playlist creation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32, %struct.TYPE_15__*)* @hls_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hls_window(%struct.TYPE_18__* %0, i32 %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca double, align 8
  %23 = alloca double*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %29 = load i32, i32* @MAX_URL_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %12, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %13, align 8
  %33 = load i32, i32* @MAX_URL_SIZE, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %14, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 11
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 10
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = call i64 @FFMAX(i64 %38, i64 %45)
  store i64 %46, i64* %15, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @avio_find_protocol_name(i8* %49)
  store i8* %50, i8** %16, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %3
  %54 = load i8*, i8** %16, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %53, %3
  %59 = phi i1 [ false, %3 ], [ %57, %53 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @HLS_TEMP_FILE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %63
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PLAYLIST_TYPE_VOD, align 8
  %75 = icmp eq i64 %73, %74
  %76 = xor i1 %75, true
  br label %77

77:                                               ; preds = %70, %63
  %78 = phi i1 [ true, %63 ], [ %76, %70 ]
  br label %79

79:                                               ; preds = %77, %58
  %80 = phi i1 [ false, %58 ], [ %78, %77 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %18, align 4
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i32* null, i32** %21, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 8
  %85 = sitofp i32 %84 to double
  store double %85, double* %22, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @HLS_PROGRAM_DATE_TIME, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %79
  br label %94

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93, %92
  %95 = phi double* [ %22, %92 ], [ null, %93 ]
  store double* %95, double** %23, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @HLS_SINGLE_FILE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %94
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %105, 0
  br label %107

107:                                              ; preds = %102, %94
  %108 = phi i1 [ true, %94 ], [ %106, %102 ]
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %24, align 4
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 4
  store i32 3, i32* %111, align 8
  %112 = load i32, i32* %24, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 4
  store i32 4, i32* %116, align 8
  store i64 0, i64* %15, align 8
  br label %117

117:                                              ; preds = %114, %107
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @HLS_INDEPENDENT_SEGMENTS, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 4
  store i32 6, i32* %126, align 8
  br label %127

127:                                              ; preds = %124, %117
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @SEGMENT_TYPE_FMP4, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 4
  store i32 7, i32* %135, align 8
  br label %136

136:                                              ; preds = %133, %127
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %154, label %139

139:                                              ; preds = %136
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @HLS_TEMP_FILE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %139
  %147 = load i32, i32* @hls_window.warned_non_file, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* @hls_window.warned_non_file, align 4
  %149 = icmp ne i32 %147, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %152 = load i32, i32* @AV_LOG_ERROR, align 4
  %153 = call i32 @av_log(%struct.TYPE_18__* %151, i32 %152, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0))
  br label %154

154:                                              ; preds = %150, %146, %139, %136
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %157 = call i32 @set_http_options(%struct.TYPE_18__* %155, i32** %21, %struct.TYPE_17__* %156)
  %158 = trunc i64 %30 to i32
  %159 = load i32, i32* %18, align 4
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @snprintf(i8* %32, i32 %158, i8* %162, i8* %165)
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %168 = load i32, i32* %24, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %154
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 8
  br label %176

173:                                              ; preds = %154
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 3
  br label %176

176:                                              ; preds = %173, %170
  %177 = phi i32* [ %172, %170 ], [ %175, %173 ]
  %178 = call i32 @hlsenc_io_open(%struct.TYPE_18__* %167, i32* %177, i8* %32, i32** %21)
  store i32 %178, i32* %11, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %176
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 10
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  store i32 0, i32* %11, align 4
  br label %186

186:                                              ; preds = %185, %180
  br label %618

187:                                              ; preds = %176
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 5
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %189, align 8
  store %struct.TYPE_16__* %190, %struct.TYPE_16__** %9, align 8
  br label %191

191:                                              ; preds = %206, %187
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %193 = icmp ne %struct.TYPE_16__* %192, null
  br i1 %193, label %194, label %210

194:                                              ; preds = %191
  %195 = load i32, i32* %10, align 4
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp sle i32 %195, %198
  br i1 %199, label %200, label %205

200:                                              ; preds = %194
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @lrint(i32 %203)
  store i32 %204, i32* %10, align 4
  br label %205

205:                                              ; preds = %200, %194
  br label %206

206:                                              ; preds = %205
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 6
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %208, align 8
  store %struct.TYPE_16__* %209, %struct.TYPE_16__** %9, align 8
  br label %191

210:                                              ; preds = %191
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 1
  store i64 0, i64* %212, align 8
  %213 = load i32, i32* %24, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 8
  %218 = load i32, i32* %217, align 4
  br label %223

219:                                              ; preds = %210
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  br label %223

223:                                              ; preds = %219, %215
  %224 = phi i32 [ %218, %215 ], [ %222, %219 ]
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 9
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %10, align 4
  %232 = load i64, i64* %15, align 8
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @HLS_I_FRAMES_ONLY, align 4
  %240 = and i32 %238, %239
  %241 = call i32 @ff_hls_write_playlist_header(i32 %224, i32 %227, i32 %230, i32 %231, i64 %232, i64 %235, i32 %240)
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @HLS_DISCONT_START, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %275

248:                                              ; preds = %223
  %249 = load i64, i64* %15, align 8
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp eq i64 %249, %252
  br i1 %253, label %254, label %275

254:                                              ; preds = %248
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %259, label %275

259:                                              ; preds = %254
  %260 = load i32, i32* %24, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %259
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 8
  %265 = load i32, i32* %264, align 4
  br label %270

266:                                              ; preds = %259
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  br label %270

270:                                              ; preds = %266, %262
  %271 = phi i32 [ %265, %262 ], [ %269, %266 ]
  %272 = call i32 (i32, i8*, ...) @avio_printf(i32 %271, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 1
  store i64 1, i64* %274, align 8
  br label %275

275:                                              ; preds = %270, %254, %248, %223
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 8
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %301

280:                                              ; preds = %275
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @HLS_INDEPENDENT_SEGMENTS, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %301

287:                                              ; preds = %280
  %288 = load i32, i32* %24, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %294

290:                                              ; preds = %287
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 8
  %293 = load i32, i32* %292, align 4
  br label %298

294:                                              ; preds = %287
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 8
  br label %298

298:                                              ; preds = %294, %290
  %299 = phi i32 [ %293, %290 ], [ %297, %294 ]
  %300 = call i32 (i32, i8*, ...) @avio_printf(i32 %299, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %301

301:                                              ; preds = %298, %280, %275
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 5
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %303, align 8
  store %struct.TYPE_16__* %304, %struct.TYPE_16__** %9, align 8
  br label %305

305:                                              ; preds = %501, %301
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %307 = icmp ne %struct.TYPE_16__* %306, null
  br i1 %307, label %308, label %505

308:                                              ; preds = %305
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 12
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %318, label %313

313:                                              ; preds = %308
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 11
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %394

318:                                              ; preds = %313, %308
  %319 = load i8*, i8** %19, align 8
  %320 = icmp ne i8* %319, null
  br i1 %320, label %321, label %335

321:                                              ; preds = %318
  %322 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i32 0, i32 1
  %324 = load i8*, i8** %323, align 8
  %325 = load i8*, i8** %19, align 8
  %326 = call i64 @strcmp(i8* %324, i8* %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %335, label %328

328:                                              ; preds = %321
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i32 0, i32 2
  %331 = load i8*, i8** %330, align 8
  %332 = load i8*, i8** %20, align 8
  %333 = call i64 @av_strcasecmp(i8* %331, i8* %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %394

335:                                              ; preds = %328, %321, %318
  %336 = load i32, i32* %24, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %335
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 8
  %341 = load i32, i32* %340, align 4
  br label %346

342:                                              ; preds = %335
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 3
  %345 = load i32, i32* %344, align 8
  br label %346

346:                                              ; preds = %342, %338
  %347 = phi i32 [ %341, %338 ], [ %345, %342 ]
  %348 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %348, i32 0, i32 1
  %350 = load i8*, i8** %349, align 8
  %351 = call i32 (i32, i8*, ...) @avio_printf(i32 %347, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %350)
  %352 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %353 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %352, i32 0, i32 2
  %354 = load i8*, i8** %353, align 8
  %355 = load i8, i8* %354, align 1
  %356 = icmp ne i8 %355, 0
  br i1 %356, label %357, label %374

357:                                              ; preds = %346
  %358 = load i32, i32* %24, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %364

360:                                              ; preds = %357
  %361 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %362 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %361, i32 0, i32 8
  %363 = load i32, i32* %362, align 4
  br label %368

364:                                              ; preds = %357
  %365 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 8
  br label %368

368:                                              ; preds = %364, %360
  %369 = phi i32 [ %363, %360 ], [ %367, %364 ]
  %370 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %370, i32 0, i32 2
  %372 = load i8*, i8** %371, align 8
  %373 = call i32 (i32, i8*, ...) @avio_printf(i32 %369, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %372)
  br label %374

374:                                              ; preds = %368, %346
  %375 = load i32, i32* %24, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %374
  %378 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %378, i32 0, i32 8
  %380 = load i32, i32* %379, align 4
  br label %385

381:                                              ; preds = %374
  %382 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 8
  br label %385

385:                                              ; preds = %381, %377
  %386 = phi i32 [ %380, %377 ], [ %384, %381 ]
  %387 = call i32 (i32, i8*, ...) @avio_printf(i32 %386, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %388 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %389 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %388, i32 0, i32 1
  %390 = load i8*, i8** %389, align 8
  store i8* %390, i8** %19, align 8
  %391 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %392 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %391, i32 0, i32 2
  %393 = load i8*, i8** %392, align 8
  store i8* %393, i8** %20, align 8
  br label %394

394:                                              ; preds = %385, %328, %313
  %395 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %395, i32 0, i32 5
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @SEGMENT_TYPE_FMP4, align 8
  %399 = icmp eq i64 %397, %398
  br i1 %399, label %400, label %444

400:                                              ; preds = %394
  %401 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %402 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %403 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %402, i32 0, i32 5
  %404 = load %struct.TYPE_16__*, %struct.TYPE_16__** %403, align 8
  %405 = icmp eq %struct.TYPE_16__* %401, %404
  br i1 %405, label %406, label %444

406:                                              ; preds = %400
  %407 = load i32, i32* %24, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %413

409:                                              ; preds = %406
  %410 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %411 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %410, i32 0, i32 8
  %412 = load i32, i32* %411, align 4
  br label %417

413:                                              ; preds = %406
  %414 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %415 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %414, i32 0, i32 3
  %416 = load i32, i32* %415, align 8
  br label %417

417:                                              ; preds = %413, %409
  %418 = phi i32 [ %412, %409 ], [ %416, %413 ]
  %419 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %420 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 8
  %422 = load i32, i32* @HLS_SINGLE_FILE, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %429

425:                                              ; preds = %417
  %426 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %427 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %426, i32 0, i32 9
  %428 = load i32, i32* %427, align 8
  br label %433

429:                                              ; preds = %417
  %430 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %431 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %430, i32 0, i32 7
  %432 = load i32, i32* %431, align 4
  br label %433

433:                                              ; preds = %429, %425
  %434 = phi i32 [ %428, %425 ], [ %432, %429 ]
  %435 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %436 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 8
  %438 = load i32, i32* @HLS_SINGLE_FILE, align 4
  %439 = and i32 %437, %438
  %440 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %441 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %440, i32 0, i32 6
  %442 = load i32, i32* %441, align 8
  %443 = call i32 @ff_hls_write_init_file(i32 %418, i32 %434, i32 %439, i32 %442, i32 0)
  br label %444

444:                                              ; preds = %433, %400, %394
  %445 = load i32, i32* %24, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %451

447:                                              ; preds = %444
  %448 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %449 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %448, i32 0, i32 8
  %450 = load i32, i32* %449, align 4
  br label %455

451:                                              ; preds = %444
  %452 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %453 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %452, i32 0, i32 3
  %454 = load i32, i32* %453, align 8
  br label %455

455:                                              ; preds = %451, %447
  %456 = phi i32 [ %450, %447 ], [ %454, %451 ]
  %457 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %458 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %457, i32 0, i32 10
  %459 = load i32, i32* %458, align 4
  %460 = load i32, i32* %24, align 4
  %461 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %462 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %465 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 8
  %467 = load i32, i32* @HLS_ROUND_DURATIONS, align 4
  %468 = and i32 %466, %467
  %469 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %470 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %469, i32 0, i32 5
  %471 = load i32, i32* %470, align 8
  %472 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %473 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %472, i32 0, i32 4
  %474 = load i32, i32* %473, align 4
  %475 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %476 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %475, i32 0, i32 4
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %479 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %478, i32 0, i32 9
  %480 = load i32, i32* %479, align 8
  %481 = load double*, double** %23, align 8
  %482 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %483 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %482, i32 0, i32 8
  %484 = load i32, i32* %483, align 4
  %485 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %486 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %485, i32 0, i32 7
  %487 = load i32, i32* %486, align 8
  %488 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %489 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 8
  %491 = load i32, i32* @HLS_I_FRAMES_ONLY, align 4
  %492 = and i32 %490, %491
  %493 = call i32 @ff_hls_write_file_entry(i32 %456, i32 %459, i32 %460, i32 %463, i32 %468, i32 %471, i32 %474, i32 %477, i32 %480, double* %481, i32 %484, i32 %487, i32 %492)
  store i32 %493, i32* %11, align 4
  %494 = load i32, i32* %11, align 4
  %495 = icmp slt i32 %494, 0
  br i1 %495, label %496, label %500

496:                                              ; preds = %455
  %497 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %498 = load i32, i32* @AV_LOG_WARNING, align 4
  %499 = call i32 @av_log(%struct.TYPE_18__* %497, i32 %498, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %500

500:                                              ; preds = %496, %455
  br label %501

501:                                              ; preds = %500
  %502 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %503 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %502, i32 0, i32 6
  %504 = load %struct.TYPE_16__*, %struct.TYPE_16__** %503, align 8
  store %struct.TYPE_16__* %504, %struct.TYPE_16__** %9, align 8
  br label %305

505:                                              ; preds = %305
  %506 = load i32, i32* %6, align 4
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %529

508:                                              ; preds = %505
  %509 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %510 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 8
  %512 = load i32, i32* @HLS_OMIT_ENDLIST, align 4
  %513 = and i32 %511, %512
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %529

515:                                              ; preds = %508
  %516 = load i32, i32* %24, align 4
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %522

518:                                              ; preds = %515
  %519 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %520 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %519, i32 0, i32 8
  %521 = load i32, i32* %520, align 4
  br label %526

522:                                              ; preds = %515
  %523 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %524 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %523, i32 0, i32 3
  %525 = load i32, i32* %524, align 8
  br label %526

526:                                              ; preds = %522, %518
  %527 = phi i32 [ %521, %518 ], [ %525, %522 ]
  %528 = call i32 @ff_hls_write_end_list(i32 %527)
  br label %529

529:                                              ; preds = %526, %508, %505
  %530 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %531 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %530, i32 0, i32 2
  %532 = load i8*, i8** %531, align 8
  %533 = icmp ne i8* %532, null
  br i1 %533, label %534, label %617

534:                                              ; preds = %529
  %535 = trunc i64 %34 to i32
  %536 = load i32, i32* %18, align 4
  %537 = icmp ne i32 %536, 0
  %538 = zext i1 %537 to i64
  %539 = select i1 %537, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %540 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %541 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %540, i32 0, i32 2
  %542 = load i8*, i8** %541, align 8
  %543 = call i32 @snprintf(i8* %35, i32 %535, i8* %539, i8* %542)
  %544 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %545 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %546 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %545, i32 0, i32 7
  %547 = call i32 @hlsenc_io_open(%struct.TYPE_18__* %544, i32* %546, i8* %35, i32** %21)
  store i32 %547, i32* %11, align 4
  %548 = icmp slt i32 %547, 0
  br i1 %548, label %549, label %556

549:                                              ; preds = %534
  %550 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %551 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %550, i32 0, i32 10
  %552 = load i64, i64* %551, align 8
  %553 = icmp ne i64 %552, 0
  br i1 %553, label %554, label %555

554:                                              ; preds = %549
  store i32 0, i32* %11, align 4
  br label %555

555:                                              ; preds = %554, %549
  br label %618

556:                                              ; preds = %534
  %557 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %558 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %557, i32 0, i32 7
  %559 = load i32, i32* %558, align 8
  %560 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %561 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %560, i32 0, i32 4
  %562 = load i32, i32* %561, align 8
  %563 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %564 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %563, i32 0, i32 9
  %565 = load i32, i32* %564, align 8
  %566 = load i32, i32* %10, align 4
  %567 = load i64, i64* %15, align 8
  %568 = load i64, i64* @PLAYLIST_TYPE_NONE, align 8
  %569 = call i32 @ff_hls_write_playlist_header(i32 %559, i32 %562, i32 %565, i32 %566, i64 %567, i64 %568, i32 0)
  %570 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %571 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %570, i32 0, i32 5
  %572 = load %struct.TYPE_16__*, %struct.TYPE_16__** %571, align 8
  store %struct.TYPE_16__* %572, %struct.TYPE_16__** %9, align 8
  br label %573

573:                                              ; preds = %604, %556
  %574 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %575 = icmp ne %struct.TYPE_16__* %574, null
  br i1 %575, label %576, label %608

576:                                              ; preds = %573
  %577 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %578 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %577, i32 0, i32 7
  %579 = load i32, i32* %578, align 8
  %580 = load i32, i32* %24, align 4
  %581 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %582 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 8
  %584 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %585 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %584, i32 0, i32 5
  %586 = load i32, i32* %585, align 8
  %587 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %588 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %587, i32 0, i32 4
  %589 = load i32, i32* %588, align 4
  %590 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %591 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %590, i32 0, i32 4
  %592 = load i32, i32* %591, align 4
  %593 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %594 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %593, i32 0, i32 3
  %595 = load i32, i32* %594, align 8
  %596 = call i32 @ff_hls_write_file_entry(i32 %579, i32 0, i32 %580, i32 %583, i32 0, i32 %586, i32 %589, i32 %592, i32 %595, double* null, i32 0, i32 0, i32 0)
  store i32 %596, i32* %11, align 4
  %597 = load i32, i32* %11, align 4
  %598 = icmp slt i32 %597, 0
  br i1 %598, label %599, label %603

599:                                              ; preds = %576
  %600 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %601 = load i32, i32* @AV_LOG_WARNING, align 4
  %602 = call i32 @av_log(%struct.TYPE_18__* %600, i32 %601, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %603

603:                                              ; preds = %599, %576
  br label %604

604:                                              ; preds = %603
  %605 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %606 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %605, i32 0, i32 6
  %607 = load %struct.TYPE_16__*, %struct.TYPE_16__** %606, align 8
  store %struct.TYPE_16__* %607, %struct.TYPE_16__** %9, align 8
  br label %573

608:                                              ; preds = %573
  %609 = load i32, i32* %6, align 4
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %616

611:                                              ; preds = %608
  %612 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %613 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %612, i32 0, i32 7
  %614 = load i32, i32* %613, align 8
  %615 = call i32 @ff_hls_write_end_list(i32 %614)
  br label %616

616:                                              ; preds = %611, %608
  br label %617

617:                                              ; preds = %616, %529
  br label %618

618:                                              ; preds = %617, %555, %186
  %619 = call i32 @av_dict_free(i32** %21)
  %620 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %621 = load i32, i32* %24, align 4
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %623, label %626

623:                                              ; preds = %618
  %624 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %625 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %624, i32 0, i32 8
  br label %629

626:                                              ; preds = %618
  %627 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %628 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %627, i32 0, i32 3
  br label %629

629:                                              ; preds = %626, %623
  %630 = phi i32* [ %625, %623 ], [ %628, %626 ]
  %631 = call i32 @hlsenc_io_close(%struct.TYPE_18__* %620, i32* %630, i8* %32)
  store i32 %631, i32* %11, align 4
  %632 = load i32, i32* %11, align 4
  %633 = icmp slt i32 %632, 0
  br i1 %633, label %634, label %636

634:                                              ; preds = %629
  %635 = load i32, i32* %11, align 4
  store i32 %635, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %683

636:                                              ; preds = %629
  %637 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %638 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %639 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %638, i32 0, i32 7
  %640 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %641 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %640, i32 0, i32 2
  %642 = load i8*, i8** %641, align 8
  %643 = call i32 @hlsenc_io_close(%struct.TYPE_18__* %637, i32* %639, i8* %642)
  %644 = load i32, i32* %18, align 4
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %663

646:                                              ; preds = %636
  %647 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %648 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %647, i32 0, i32 0
  %649 = load i8*, i8** %648, align 8
  %650 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %651 = call i32 @ff_rename(i8* %32, i8* %649, %struct.TYPE_18__* %650)
  %652 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %653 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %652, i32 0, i32 2
  %654 = load i8*, i8** %653, align 8
  %655 = icmp ne i8* %654, null
  br i1 %655, label %656, label %662

656:                                              ; preds = %646
  %657 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %658 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %657, i32 0, i32 2
  %659 = load i8*, i8** %658, align 8
  %660 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %661 = call i32 @ff_rename(i8* %35, i8* %659, %struct.TYPE_18__* %660)
  br label %662

662:                                              ; preds = %656, %646
  br label %663

663:                                              ; preds = %662, %636
  %664 = load i32, i32* %11, align 4
  %665 = icmp sge i32 %664, 0
  br i1 %665, label %666, label %681

666:                                              ; preds = %663
  %667 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %668 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %667, i32 0, i32 6
  %669 = load i64, i64* %668, align 8
  %670 = icmp ne i64 %669, 0
  br i1 %670, label %671, label %681

671:                                              ; preds = %666
  %672 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %673 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %674 = call i64 @create_master_playlist(%struct.TYPE_18__* %672, %struct.TYPE_15__* %673)
  %675 = icmp slt i64 %674, 0
  br i1 %675, label %676, label %680

676:                                              ; preds = %671
  %677 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %678 = load i32, i32* @AV_LOG_WARNING, align 4
  %679 = call i32 @av_log(%struct.TYPE_18__* %677, i32 %678, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  br label %680

680:                                              ; preds = %676, %671
  br label %681

681:                                              ; preds = %680, %666, %663
  %682 = load i32, i32* %11, align 4
  store i32 %682, i32* %4, align 4
  store i32 1, i32* %25, align 4
  br label %683

683:                                              ; preds = %681, %634
  %684 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %684)
  %685 = load i32, i32* %4, align 4
  ret i32 %685
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @FFMAX(i64, i64) #2

declare dso_local i8* @avio_find_protocol_name(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*) #2

declare dso_local i32 @set_http_options(%struct.TYPE_18__*, i32**, %struct.TYPE_17__*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @hlsenc_io_open(%struct.TYPE_18__*, i32*, i8*, i32**) #2

declare dso_local i32 @lrint(i32) #2

declare dso_local i32 @ff_hls_write_playlist_header(i32, i32, i32, i32, i64, i64, i32) #2

declare dso_local i32 @avio_printf(i32, i8*, ...) #2

declare dso_local i64 @av_strcasecmp(i8*, i8*) #2

declare dso_local i32 @ff_hls_write_init_file(i32, i32, i32, i32, i32) #2

declare dso_local i32 @ff_hls_write_file_entry(i32, i32, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32) #2

declare dso_local i32 @ff_hls_write_end_list(i32) #2

declare dso_local i32 @av_dict_free(i32**) #2

declare dso_local i32 @hlsenc_io_close(%struct.TYPE_18__*, i32*, i8*) #2

declare dso_local i32 @ff_rename(i8*, i8*, %struct.TYPE_18__*) #2

declare dso_local i64 @create_master_playlist(%struct.TYPE_18__*, %struct.TYPE_15__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
