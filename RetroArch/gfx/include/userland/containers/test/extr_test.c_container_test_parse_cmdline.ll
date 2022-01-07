; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test.c_container_test_parse_cmdline.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test.c_container_test_parse_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@psz_in = common dso_local global i8* null, align 8
@b_info = common dso_local global i32 0, align 4
@b_seek = common dso_local global i32 0, align 4
@b_dump = common dso_local global i32 0, align 4
@b_client_io = common dso_local global i32 0, align 4
@verbosity_input = common dso_local global i32 0, align 4
@verbosity_output = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@VC_CONTAINER_LOG_ERROR = common dso_local global i32 0, align 4
@VC_CONTAINER_LOG_INFO = common dso_local global i32 0, align 4
@seeks = common dso_local global i64 0, align 8
@MAX_SEEKS = common dso_local global i64 0, align 8
@VC_CONTAINER_SEEK_FLAG_FORWARD = common dso_local global i32 0, align 4
@seek_flags = common dso_local global i32* null, align 8
@seek_offsets = common dso_local global i32* null, align 8
@LONG_MAX = common dso_local global i32 0, align 4
@b_audio = common dso_local global i32 0, align 4
@b_video = common dso_local global i32 0, align 4
@b_subs = common dso_local global i32 0, align 4
@b_errorcode = common dso_local global i32 0, align 4
@b_packetize = common dso_local global i32 0, align 4
@psz_out = common dso_local global i8* null, align 8
@packets_num = common dso_local global i32 0, align 4
@track_num = common dso_local global i32 0, align 4
@LONG_MIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"missing uri argument\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"invalid command line option (%s)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"usage: %s [options] uri\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"options list:\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c" -i    : only print information on the container\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c" -p X  : read only X packets from the container\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c" -t X  : read only packets from track X\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c" -s X  : seek to X milliseconds before starting reading\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c" -sf X : seek forward to X milliseconds before starting reading\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c" -S    : do seek testing\00", align 1
@.str.11 = private unnamed_addr constant [74 x i8] c" -d    : dump the data read from the container to files (-o to name file)\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c" -o uri: output to another uri (i.e. re-muxing)\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c" -na   : disable audio\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c" -nv   : disable video\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c" -ns   : disable subtitles\00", align 1
@.str.16 = private unnamed_addr constant [68 x i8] c" -nr   : always return an error code of 0 (even in case of failure)\00", align 1
@.str.17 = private unnamed_addr constant [64 x i8] c" -ep   : enable packetization if data is not already packetized\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c" -c    : use the client i/o functions\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c" -vxx  : general verbosity level (replace xx with a number of 'v')\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c" -vixx : verbosity specific to the input container\00", align 1
@.str.21 = private unnamed_addr constant [52 x i8] c" -voxx : verbosity specific to the output container\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c" -h    : help\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @container_test_parse_cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @container_test_parse_cmdline(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %6, align 4
  br label %10

10:                                               ; preds = %330, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %333

14:                                               ; preds = %10
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %330

22:                                               ; preds = %14
  %23 = load i8**, i8*** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 45
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** @psz_in, align 8
  br label %330

38:                                               ; preds = %22
  %39 = load i8**, i8*** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  switch i32 %46, label %328 [
    i32 105, label %47
    i32 83, label %48
    i32 100, label %49
    i32 99, label %50
    i32 118, label %51
    i32 115, label %109
    i32 110, label %172
    i32 101, label %221
    i32 111, label %234
    i32 112, label %266
    i32 116, label %296
    i32 104, label %327
  ]

47:                                               ; preds = %38
  store i32 1, i32* @b_info, align 4
  br label %329

48:                                               ; preds = %38
  store i32 1, i32* @b_seek, align 4
  br label %329

49:                                               ; preds = %38
  store i32 1, i32* @b_dump, align 4
  br label %329

50:                                               ; preds = %38
  store i32 1, i32* @b_client_io, align 4
  br label %329

51:                                               ; preds = %38
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 105
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store i32 3, i32* %7, align 4
  store i32* @verbosity_input, i32** %9, align 8
  br label %75

62:                                               ; preds = %51
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 111
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  store i32 3, i32* %7, align 4
  store i32* @verbosity_output, i32** %9, align 8
  br label %74

73:                                               ; preds = %62
  store i32 2, i32* %7, align 4
  store i32* @verbosity, i32** %9, align 8
  br label %74

74:                                               ; preds = %73, %72
  br label %75

75:                                               ; preds = %74, %61
  %76 = load i32, i32* @VC_CONTAINER_LOG_ERROR, align 4
  %77 = load i32, i32* @VC_CONTAINER_LOG_INFO, align 4
  %78 = or i32 %76, %77
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %105, %75
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 2
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  %84 = load i8**, i8*** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 118
  br label %97

97:                                               ; preds = %83, %80
  %98 = phi i1 [ false, %80 ], [ %96, %83 ]
  br i1 %98, label %99, label %108

99:                                               ; preds = %97
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 1
  %103 = or i32 %102, 1
  %104 = load i32*, i32** %9, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %80

108:                                              ; preds = %97
  br label %329

109:                                              ; preds = %38
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  %112 = load i32, i32* %4, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %122, label %114

114:                                              ; preds = %109
  %115 = load i8**, i8*** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %115, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %114, %109
  br label %339

123:                                              ; preds = %114
  %124 = load i64, i64* @seeks, align 8
  %125 = load i64, i64* @MAX_SEEKS, align 8
  %126 = icmp uge i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %339

128:                                              ; preds = %123
  %129 = load i8**, i8*** %5, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 2
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 102
  br i1 %137, label %138, label %140

138:                                              ; preds = %128
  %139 = load i32, i32* @VC_CONTAINER_SEEK_FLAG_FORWARD, align 4
  br label %141

140:                                              ; preds = %128
  br label %141

141:                                              ; preds = %140, %138
  %142 = phi i32 [ %139, %138 ], [ 0, %140 ]
  %143 = load i32*, i32** @seek_flags, align 8
  %144 = load i64, i64* @seeks, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32 %142, i32* %145, align 4
  %146 = load i8**, i8*** %5, align 8
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %146, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @strtol(i8* %151, i32 0, i32 0)
  %153 = load i32*, i32** @seek_offsets, align 8
  %154 = load i64, i64* @seeks, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32 %152, i32* %155, align 4
  %156 = load i32*, i32** @seek_offsets, align 8
  %157 = load i64, i64* @seeks, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %141
  %162 = load i32*, i32** @seek_offsets, align 8
  %163 = load i64, i64* @seeks, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @LONG_MAX, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %161, %141
  br label %339

169:                                              ; preds = %161
  %170 = load i64, i64* @seeks, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* @seeks, align 8
  br label %329

172:                                              ; preds = %38
  %173 = load i8**, i8*** %5, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 2
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 97
  br i1 %181, label %182, label %183

182:                                              ; preds = %172
  store i32 0, i32* @b_audio, align 4
  br label %220

183:                                              ; preds = %172
  %184 = load i8**, i8*** %5, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8*, i8** %184, i64 %186
  %188 = load i8*, i8** %187, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 2
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 118
  br i1 %192, label %193, label %194

193:                                              ; preds = %183
  store i32 0, i32* @b_video, align 4
  br label %219

194:                                              ; preds = %183
  %195 = load i8**, i8*** %5, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %195, i64 %197
  %199 = load i8*, i8** %198, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 2
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 115
  br i1 %203, label %204, label %205

204:                                              ; preds = %194
  store i32 0, i32* @b_subs, align 4
  br label %218

205:                                              ; preds = %194
  %206 = load i8**, i8*** %5, align 8
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %206, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 2
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 114
  br i1 %214, label %215, label %216

215:                                              ; preds = %205
  store i32 0, i32* @b_errorcode, align 4
  br label %217

216:                                              ; preds = %205
  br label %339

217:                                              ; preds = %215
  br label %218

218:                                              ; preds = %217, %204
  br label %219

219:                                              ; preds = %218, %193
  br label %220

220:                                              ; preds = %219, %182
  br label %329

221:                                              ; preds = %38
  %222 = load i8**, i8*** %5, align 8
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8*, i8** %222, i64 %224
  %226 = load i8*, i8** %225, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 2
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp eq i32 %229, 112
  br i1 %230, label %231, label %232

231:                                              ; preds = %221
  store i32 1, i32* @b_packetize, align 4
  br label %233

232:                                              ; preds = %221
  br label %339

233:                                              ; preds = %231
  br label %329

234:                                              ; preds = %38
  %235 = load i32, i32* %6, align 4
  %236 = add nsw i32 %235, 1
  %237 = load i32, i32* %4, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %258, label %239

239:                                              ; preds = %234
  %240 = load i8**, i8*** %5, align 8
  %241 = load i32, i32* %6, align 4
  %242 = add nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8*, i8** %240, i64 %243
  %245 = load i8*, i8** %244, align 8
  %246 = icmp ne i8* %245, null
  br i1 %246, label %247, label %258

247:                                              ; preds = %239
  %248 = load i8**, i8*** %5, align 8
  %249 = load i32, i32* %6, align 4
  %250 = add nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8*, i8** %248, i64 %251
  %253 = load i8*, i8** %252, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 0
  %255 = load i8, i8* %254, align 1
  %256 = sext i8 %255 to i32
  %257 = icmp eq i32 %256, 45
  br i1 %257, label %258, label %259

258:                                              ; preds = %247, %239, %234
  br label %339

259:                                              ; preds = %247
  %260 = load i8**, i8*** %5, align 8
  %261 = load i32, i32* %6, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %6, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %260, i64 %263
  %265 = load i8*, i8** %264, align 8
  store i8* %265, i8** @psz_out, align 8
  br label %329

266:                                              ; preds = %38
  %267 = load i32, i32* %6, align 4
  %268 = add nsw i32 %267, 1
  %269 = load i32, i32* %4, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %279, label %271

271:                                              ; preds = %266
  %272 = load i8**, i8*** %5, align 8
  %273 = load i32, i32* %6, align 4
  %274 = add nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8*, i8** %272, i64 %275
  %277 = load i8*, i8** %276, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %280, label %279

279:                                              ; preds = %271, %266
  br label %339

280:                                              ; preds = %271
  %281 = load i8**, i8*** %5, align 8
  %282 = load i32, i32* %6, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %6, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8*, i8** %281, i64 %284
  %286 = load i8*, i8** %285, align 8
  %287 = call i32 @strtol(i8* %286, i32 0, i32 0)
  store i32 %287, i32* @packets_num, align 4
  %288 = load i32, i32* @packets_num, align 4
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %294, label %290

290:                                              ; preds = %280
  %291 = load i32, i32* @packets_num, align 4
  %292 = load i32, i32* @LONG_MAX, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %295

294:                                              ; preds = %290, %280
  br label %339

295:                                              ; preds = %290
  br label %329

296:                                              ; preds = %38
  %297 = load i32, i32* %6, align 4
  %298 = add nsw i32 %297, 1
  %299 = load i32, i32* %4, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %309, label %301

301:                                              ; preds = %296
  %302 = load i8**, i8*** %5, align 8
  %303 = load i32, i32* %6, align 4
  %304 = add nsw i32 %303, 1
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8*, i8** %302, i64 %305
  %307 = load i8*, i8** %306, align 8
  %308 = icmp ne i8* %307, null
  br i1 %308, label %310, label %309

309:                                              ; preds = %301, %296
  br label %339

310:                                              ; preds = %301
  %311 = load i8**, i8*** %5, align 8
  %312 = load i32, i32* %6, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %6, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8*, i8** %311, i64 %314
  %316 = load i8*, i8** %315, align 8
  %317 = call i32 @strtol(i8* %316, i32 0, i32 0)
  store i32 %317, i32* @track_num, align 4
  %318 = load i32, i32* @track_num, align 4
  %319 = load i32, i32* @LONG_MIN, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %325, label %321

321:                                              ; preds = %310
  %322 = load i32, i32* @track_num, align 4
  %323 = load i32, i32* @LONG_MAX, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %326

325:                                              ; preds = %321, %310
  br label %339

326:                                              ; preds = %321
  br label %329

327:                                              ; preds = %38
  br label %346

328:                                              ; preds = %38
  br label %339

329:                                              ; preds = %326, %295, %259, %233, %220, %169, %108, %50, %49, %48, %47
  br label %330

330:                                              ; preds = %329, %32, %21
  %331 = load i32, i32* %6, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %6, align 4
  br label %10

333:                                              ; preds = %10
  %334 = load i8*, i8** @psz_in, align 8
  %335 = icmp ne i8* %334, null
  br i1 %335, label %338, label %336

336:                                              ; preds = %333
  %337 = call i32 (i32, i8*, ...) @LOG_ERROR(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %346

338:                                              ; preds = %333
  store i32 0, i32* %3, align 4
  br label %400

339:                                              ; preds = %328, %325, %309, %294, %279, %258, %232, %216, %168, %127, %122
  %340 = load i8**, i8*** %5, align 8
  %341 = load i32, i32* %6, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8*, i8** %340, i64 %342
  %344 = load i8*, i8** %343, align 8
  %345 = call i32 (i32, i8*, ...) @LOG_ERROR(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %344)
  br label %346

346:                                              ; preds = %339, %336, %327
  %347 = load i8**, i8*** %5, align 8
  %348 = getelementptr inbounds i8*, i8** %347, i64 0
  %349 = load i8*, i8** %348, align 8
  %350 = call i8* @strrchr(i8* %349, i8 signext 92)
  store i8* %350, i8** @psz_in, align 8
  %351 = load i8*, i8** @psz_in, align 8
  %352 = icmp ne i8* %351, null
  br i1 %352, label %353, label %356

353:                                              ; preds = %346
  %354 = load i8*, i8** @psz_in, align 8
  %355 = getelementptr inbounds i8, i8* %354, i32 1
  store i8* %355, i8** @psz_in, align 8
  br label %356

356:                                              ; preds = %353, %346
  %357 = load i8*, i8** @psz_in, align 8
  %358 = icmp ne i8* %357, null
  br i1 %358, label %370, label %359

359:                                              ; preds = %356
  %360 = load i8**, i8*** %5, align 8
  %361 = getelementptr inbounds i8*, i8** %360, i64 0
  %362 = load i8*, i8** %361, align 8
  %363 = call i8* @strrchr(i8* %362, i8 signext 47)
  store i8* %363, i8** @psz_in, align 8
  %364 = load i8*, i8** @psz_in, align 8
  %365 = icmp ne i8* %364, null
  br i1 %365, label %366, label %369

366:                                              ; preds = %359
  %367 = load i8*, i8** @psz_in, align 8
  %368 = getelementptr inbounds i8, i8* %367, i32 1
  store i8* %368, i8** @psz_in, align 8
  br label %369

369:                                              ; preds = %366, %359
  br label %370

370:                                              ; preds = %369, %356
  %371 = load i8*, i8** @psz_in, align 8
  %372 = icmp ne i8* %371, null
  br i1 %372, label %377, label %373

373:                                              ; preds = %370
  %374 = load i8**, i8*** %5, align 8
  %375 = getelementptr inbounds i8*, i8** %374, i64 0
  %376 = load i8*, i8** %375, align 8
  store i8* %376, i8** @psz_in, align 8
  br label %377

377:                                              ; preds = %373, %370
  %378 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %379 = load i8*, i8** @psz_in, align 8
  %380 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %379)
  %381 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %382 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %383 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  %384 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %385 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0))
  %386 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0))
  %387 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %388 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.11, i64 0, i64 0))
  %389 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0))
  %390 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  %391 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %392 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %393 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.16, i64 0, i64 0))
  %394 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.17, i64 0, i64 0))
  %395 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0))
  %396 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.19, i64 0, i64 0))
  %397 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.20, i64 0, i64 0))
  %398 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.21, i64 0, i64 0))
  %399 = call i32 (i32, i8*, ...) @LOG_INFO(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %400

400:                                              ; preds = %377, %338
  %401 = load i32, i32* %3, align 4
  ret i32 %401
}

declare dso_local i32 @strtol(i8*, i32, i32) #1

declare dso_local i32 @LOG_ERROR(i32, i8*, ...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @LOG_INFO(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
