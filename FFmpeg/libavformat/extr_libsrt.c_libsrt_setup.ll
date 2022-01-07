; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_libsrt.c_libsrt_setup.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_libsrt.c_libsrt_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, i64, i64, i64, i32, i8* }
%struct.addrinfo = type { %struct.addrinfo*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"srt\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Port missing in uri\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"listen_timeout\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@SRT_MODE_LISTENER = common dso_local global i64 0, align 8
@AI_PASSIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to resolve hostname %s: %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SRTO_UDP_RCVBUF = common dso_local global i32 0, align 4
@SRTO_UDP_SNDBUF = common dso_local global i32 0, align 4
@SRT_MODE_RENDEZVOUS = common dso_local global i64 0, align 8
@AVERROR_EXIT = common dso_local global i32 0, align 4
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@SRTO_PAYLOADSIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"SRTO_PAYLOADSIZE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32)* @libsrt_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libsrt_setup(%struct.TYPE_11__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.addrinfo, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [256 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca [1024 x i8], align 16
  %18 = alloca [1024 x i8], align 16
  %19 = alloca [1024 x i8], align 16
  %20 = alloca [10 x i8], align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %25 = bitcast %struct.addrinfo* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 32, i1 false)
  store i32 -1, i32* %12, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %13, align 8
  store i32 5000000, i32* %21, align 4
  %29 = call i32 (...) @srt_epoll_create()
  store i32 %29, i32* %22, align 4
  %30 = load i32, i32* %22, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = call i32 @libsrt_neterrno(%struct.TYPE_11__* %33)
  store i32 %34, i32* %4, align 4
  br label %322

35:                                               ; preds = %3
  %36 = load i32, i32* %22, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @av_url_split(i8* %39, i32 1024, i32* null, i32 0, i8* %40, i32 1024, i32* %11, i8* %41, i32 1024, i8* %42)
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @EINVAL, align 4
  %49 = call i32 @AVERROR(i32 %48)
  store i32 %49, i32* %4, align 4
  br label %322

50:                                               ; preds = %35
  %51 = load i32, i32* %11, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %11, align 4
  %55 = icmp sge i32 %54, 65536
  br i1 %55, label %56, label %62

56:                                               ; preds = %53, %50
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = load i32, i32* @AV_LOG_ERROR, align 4
  %59 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %57, i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = call i32 @AVERROR(i32 %60)
  store i32 %61, i32* %4, align 4
  br label %322

62:                                               ; preds = %53
  %63 = load i8*, i8** %6, align 8
  %64 = call i8* @strchr(i8* %63, i8 signext 63)
  store i8* %64, i8** %14, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %89

67:                                               ; preds = %62
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %69 = load i8*, i8** %14, align 8
  %70 = call i64 @av_find_info_tag(i8* %68, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %74 = call i8* @strtol(i8* %73, i32* null, i32 10)
  %75 = ptrtoint i8* %74 to i64
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %72, %67
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %80 = load i8*, i8** %14, align 8
  %81 = call i64 @av_find_info_tag(i8* %79, i32 256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %85 = call i8* @strtol(i8* %84, i32* null, i32 10)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 6
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %83, %78
  br label %89

89:                                               ; preds = %88, %62
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sge i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  store i32 %98, i32* %21, align 4
  br label %101

101:                                              ; preds = %94, %89
  %102 = load i32, i32* @AF_UNSPEC, align 4
  %103 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 4
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* @SOCK_DGRAM, align 4
  %105 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 3
  store i32 %104, i32* %105, align 8
  %106 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 0
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @snprintf(i8* %106, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @SRT_MODE_LISTENER, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %101
  %115 = load i32, i32* @AI_PASSIVE, align 4
  %116 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %115
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %114, %101
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %121 = load i8, i8* %120, align 16
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  br label %127

126:                                              ; preds = %119
  br label %127

127:                                              ; preds = %126, %124
  %128 = phi i8* [ %125, %124 ], [ null, %126 ]
  %129 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 0
  %130 = call i32 @getaddrinfo(i8* %128, i8* %129, %struct.addrinfo* %8, %struct.addrinfo** %9)
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %127
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = load i32, i32* @AV_LOG_ERROR, align 4
  %136 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %137 = load i32, i32* %16, align 4
  %138 = call i32 @gai_strerror(i32 %137)
  %139 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %134, i32 %135, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %136, i32 %138)
  %140 = load i32, i32* @EIO, align 4
  %141 = call i32 @AVERROR(i32 %140)
  store i32 %141, i32* %4, align 4
  br label %322

142:                                              ; preds = %127
  %143 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %143, %struct.addrinfo** %10, align 8
  br label %144

144:                                              ; preds = %310, %142
  %145 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %146 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %149 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @srt_socket(i32 %147, i32 %150, i32 0)
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %144
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %156 = call i32 @libsrt_neterrno(%struct.TYPE_11__* %155)
  store i32 %156, i32* %16, align 4
  br label %296

157:                                              ; preds = %144
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @libsrt_set_options_pre(%struct.TYPE_11__* %158, i32 %159)
  store i32 %160, i32* %16, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %296

163:                                              ; preds = %157
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp sgt i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %163
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @SOL_SOCKET, align 4
  %171 = load i32, i32* @SRTO_UDP_RCVBUF, align 4
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 3
  %174 = call i32 @srt_setsockopt(i32 %169, i32 %170, i32 %171, i64* %173, i32 8)
  br label %175

175:                                              ; preds = %168, %163
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = icmp sgt i64 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %175
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* @SOL_SOCKET, align 4
  %183 = load i32, i32* @SRTO_UDP_SNDBUF, align 4
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 4
  %186 = call i32 @srt_setsockopt(i32 %181, i32 %182, i32 %183, i64* %185, i32 8)
  br label %187

187:                                              ; preds = %180, %175
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @SRT_MODE_LISTENER, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %212

193:                                              ; preds = %187
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %12, align 4
  %198 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %199 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %202 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %205 = load i32, i32* %21, align 4
  %206 = sdiv i32 %205, 1000
  %207 = call i32 @libsrt_listen(i32 %196, i32 %197, i32 %200, i32 %203, %struct.TYPE_11__* %204, i32 %206)
  store i32 %207, i32* %16, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %193
  br label %312

210:                                              ; preds = %193
  %211 = load i32, i32* %16, align 4
  store i32 %211, i32* %12, align 4
  br label %261

212:                                              ; preds = %187
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @SRT_MODE_RENDEZVOUS, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %231

218:                                              ; preds = %212
  %219 = load i32, i32* %12, align 4
  %220 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %221 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %224 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @srt_bind(i32 %219, i32 %222, i32 %225)
  store i32 %226, i32* %16, align 4
  %227 = load i32, i32* %16, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %218
  br label %312

230:                                              ; preds = %218
  br label %231

231:                                              ; preds = %230, %212
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %12, align 4
  %236 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %237 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %240 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* %21, align 4
  %243 = sdiv i32 %242, 1000
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %245 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %246 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %245, i32 0, i32 0
  %247 = load %struct.addrinfo*, %struct.addrinfo** %246, align 8
  %248 = icmp ne %struct.addrinfo* %247, null
  %249 = xor i1 %248, true
  %250 = xor i1 %249, true
  %251 = zext i1 %250 to i32
  %252 = call i32 @libsrt_listen_connect(i32 %234, i32 %235, i32 %238, i32 %241, i32 %243, %struct.TYPE_11__* %244, i32 %251)
  store i32 %252, i32* %16, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %231
  %255 = load i32, i32* %16, align 4
  %256 = load i32, i32* @AVERROR_EXIT, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %254
  br label %312

259:                                              ; preds = %254
  br label %296

260:                                              ; preds = %231
  br label %261

261:                                              ; preds = %260, %210
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %263 = load i32, i32* %12, align 4
  %264 = call i32 @libsrt_set_options_post(%struct.TYPE_11__* %262, i32 %263)
  store i32 %264, i32* %16, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %261
  br label %296

267:                                              ; preds = %261
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %288

272:                                              ; preds = %267
  store i32 0, i32* %23, align 4
  store i32 4, i32* %24, align 4
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %274 = load i32, i32* %12, align 4
  %275 = load i32, i32* @SRTO_PAYLOADSIZE, align 4
  %276 = call i32 @libsrt_getsockopt(%struct.TYPE_11__* %273, i32 %274, i32 %275, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* %23, i32* %24)
  store i32 %276, i32* %16, align 4
  %277 = load i32, i32* %16, align 4
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %272
  br label %312

280:                                              ; preds = %272
  %281 = load i32, i32* %23, align 4
  %282 = icmp sgt i32 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %280
  %284 = load i32, i32* %23, align 4
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 1
  store i32 %284, i32* %286, align 4
  br label %287

287:                                              ; preds = %283, %280
  br label %288

288:                                              ; preds = %287, %267
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 2
  store i32 1, i32* %290, align 8
  %291 = load i32, i32* %12, align 4
  %292 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 5
  store i32 %291, i32* %293, align 8
  %294 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %295 = call i32 @freeaddrinfo(%struct.addrinfo* %294)
  store i32 0, i32* %4, align 4
  br label %322

296:                                              ; preds = %266, %259, %162, %154
  %297 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %298 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %297, i32 0, i32 0
  %299 = load %struct.addrinfo*, %struct.addrinfo** %298, align 8
  %300 = icmp ne %struct.addrinfo* %299, null
  br i1 %300, label %301, label %311

301:                                              ; preds = %296
  %302 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %303 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %302, i32 0, i32 0
  %304 = load %struct.addrinfo*, %struct.addrinfo** %303, align 8
  store %struct.addrinfo* %304, %struct.addrinfo** %10, align 8
  %305 = load i32, i32* %12, align 4
  %306 = icmp sge i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %301
  %308 = load i32, i32* %12, align 4
  %309 = call i32 @srt_close(i32 %308)
  br label %310

310:                                              ; preds = %307, %301
  store i32 0, i32* %16, align 4
  br label %144

311:                                              ; preds = %296
  br label %312

312:                                              ; preds = %311, %279, %258, %229, %209
  %313 = load i32, i32* %12, align 4
  %314 = icmp sge i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %312
  %316 = load i32, i32* %12, align 4
  %317 = call i32 @srt_close(i32 %316)
  br label %318

318:                                              ; preds = %315, %312
  %319 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %320 = call i32 @freeaddrinfo(%struct.addrinfo* %319)
  %321 = load i32, i32* %16, align 4
  store i32 %321, i32* %4, align 4
  br label %322

322:                                              ; preds = %318, %288, %133, %56, %47, %32
  %323 = load i32, i32* %4, align 4
  ret i32 %323
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @srt_epoll_create(...) #2

declare dso_local i32 @libsrt_neterrno(%struct.TYPE_11__*) #2

declare dso_local i32 @av_url_split(i8*, i32, i32*, i32, i8*, i32, i32*, i8*, i32, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, ...) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @av_find_info_tag(i8*, i32, i8*, i8*) #2

declare dso_local i8* @strtol(i8*, i32*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @srt_socket(i32, i32, i32) #2

declare dso_local i32 @libsrt_set_options_pre(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @srt_setsockopt(i32, i32, i32, i64*, i32) #2

declare dso_local i32 @libsrt_listen(i32, i32, i32, i32, %struct.TYPE_11__*, i32) #2

declare dso_local i32 @srt_bind(i32, i32, i32) #2

declare dso_local i32 @libsrt_listen_connect(i32, i32, i32, i32, i32, %struct.TYPE_11__*, i32) #2

declare dso_local i32 @libsrt_set_options_post(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @libsrt_getsockopt(%struct.TYPE_11__*, i32, i32, i8*, i32*, i32*) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i32 @srt_close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
