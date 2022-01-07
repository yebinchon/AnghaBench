; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tcp.c_tcp_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tcp.c_tcp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i64, i32, i8* }
%struct.addrinfo = type { i64, i32, i64, %struct.addrinfo*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Port missing in uri\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"listen_timeout\00", align 1
@AF_UNSPEC = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@AI_PASSIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Failed to resolve hostname %s: %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32)* @tcp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_open(%struct.TYPE_10__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.addrinfo, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [256 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca [1024 x i8], align 16
  %18 = alloca [1024 x i8], align 16
  %19 = alloca [1024 x i8], align 16
  %20 = alloca [10 x i8], align 1
  %21 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = bitcast %struct.addrinfo* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 48, i1 false)
  store i32 -1, i32* %12, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %13, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32 5000000, i32* %27, align 8
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @av_url_split(i8* %28, i32 1024, i32* null, i32 0, i8* %29, i32 1024, i32* %11, i8* %30, i32 1024, i8* %31)
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %4, align 4
  br label %263

39:                                               ; preds = %3
  %40 = load i32, i32* %11, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = icmp sge i32 %43, 65536
  br i1 %44, label %45, label %51

45:                                               ; preds = %42, %39
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = load i32, i32* @AV_LOG_ERROR, align 4
  %48 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %46, i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = call i32 @AVERROR(i32 %49)
  store i32 %50, i32* %4, align 4
  br label %263

51:                                               ; preds = %42
  %52 = load i8*, i8** %6, align 8
  %53 = call i8* @strchr(i8* %52, i8 signext 63)
  store i8* %53, i8** %14, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %96

56:                                               ; preds = %51
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %58 = load i8*, i8** %14, align 8
  %59 = call i64 @av_find_info_tag(i8* %57, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  store i8* null, i8** %21, align 8
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %63 = call i8* @strtol(i8* %62, i8** %21, i32 10)
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %68 = load i8*, i8** %21, align 8
  %69 = icmp eq i8* %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %61
  br label %74

74:                                               ; preds = %73, %56
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %76 = load i8*, i8** %14, align 8
  %77 = call i64 @av_find_info_tag(i8* %75, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %81 = call i8* @strtol(i8* %80, i8** null, i32 10)
  %82 = ptrtoint i8* %81 to i64
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %79, %74
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %87 = load i8*, i8** %14, align 8
  %88 = call i64 @av_find_info_tag(i8* %86, i32 256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %92 = call i8* @strtol(i8* %91, i8** null, i32 10)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 4
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %90, %85
  br label %96

96:                                               ; preds = %95, %51
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp sge i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  store i32 %105, i32* %109, align 8
  br label %110

110:                                              ; preds = %101, %96
  %111 = load i64, i64* @AF_UNSPEC, align 8
  %112 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 0
  store i64 %111, i64* %112, align 8
  %113 = load i32, i32* @SOCK_STREAM, align 4
  %114 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 5
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 0
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @snprintf(i8* %115, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %110
  %123 = load i32, i32* @AI_PASSIVE, align 4
  %124 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %123
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %122, %110
  %128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %129 = load i8, i8* %128, align 16
  %130 = icmp ne i8 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 0
  %133 = call i32 @getaddrinfo(i8* null, i8* %132, %struct.addrinfo* %8, %struct.addrinfo** %9)
  store i32 %133, i32* %16, align 4
  br label %138

134:                                              ; preds = %127
  %135 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %136 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 0
  %137 = call i32 @getaddrinfo(i8* %135, i8* %136, %struct.addrinfo* %8, %struct.addrinfo** %9)
  store i32 %137, i32* %16, align 4
  br label %138

138:                                              ; preds = %134, %131
  %139 = load i32, i32* %16, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = load i32, i32* @AV_LOG_ERROR, align 4
  %144 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %145 = load i32, i32* %16, align 4
  %146 = call i32 @gai_strerror(i32 %145)
  %147 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %142, i32 %143, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %144, i32 %146)
  %148 = load i32, i32* @EIO, align 4
  %149 = call i32 @AVERROR(i32 %148)
  store i32 %149, i32* %4, align 4
  br label %263

150:                                              ; preds = %138
  %151 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %151, %struct.addrinfo** %10, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %192

156:                                              ; preds = %150
  br label %157

157:                                              ; preds = %183, %156
  %158 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %159 = icmp ne %struct.addrinfo* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* %12, align 4
  %162 = icmp slt i32 %161, 0
  br label %163

163:                                              ; preds = %160, %157
  %164 = phi i1 [ false, %157 ], [ %162, %160 ]
  br i1 %164, label %165, label %184

165:                                              ; preds = %163
  %166 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %167 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %170 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %173 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @ff_socket(i64 %168, i32 %171, i32 %174)
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %12, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %165
  %179 = call i32 (...) @ff_neterrno()
  store i32 %179, i32* %16, align 4
  %180 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %181 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %180, i32 0, i32 3
  %182 = load %struct.addrinfo*, %struct.addrinfo** %181, align 8
  store %struct.addrinfo* %182, %struct.addrinfo** %10, align 8
  br label %183

183:                                              ; preds = %178, %165
  br label %157

184:                                              ; preds = %163
  %185 = load i32, i32* %12, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %253

188:                                              ; preds = %184
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @customize_fd(%struct.TYPE_11__* %189, i32 %190)
  br label %192

192:                                              ; preds = %188, %150
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 2
  br i1 %196, label %197, label %209

197:                                              ; preds = %192
  %198 = load i32, i32* %12, align 4
  %199 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %200 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %203 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @ff_listen(i32 %198, i64 %201, i32 %204)
  store i32 %205, i32* %16, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %197
  br label %253

208:                                              ; preds = %197
  br label %245

209:                                              ; preds = %192
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %231

214:                                              ; preds = %209
  %215 = load i32, i32* %12, align 4
  %216 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %217 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %220 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 4
  %224 = load i8*, i8** %223, align 8
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %226 = call i32 @ff_listen_bind(i32 %215, i64 %218, i32 %221, i8* %224, %struct.TYPE_10__* %225)
  store i32 %226, i32* %16, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %214
  br label %253

229:                                              ; preds = %214
  %230 = load i32, i32* %16, align 4
  store i32 %230, i32* %12, align 4
  br label %244

231:                                              ; preds = %209
  %232 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = sdiv i32 %235, 1000
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %239 = call i32 @ff_connect_parallel(%struct.addrinfo* %232, i32 %236, i32 3, %struct.TYPE_10__* %237, i32* %12, i32 (%struct.TYPE_11__*, i32)* @customize_fd, %struct.TYPE_11__* %238)
  store i32 %239, i32* %16, align 4
  %240 = load i32, i32* %16, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %231
  br label %253

243:                                              ; preds = %231
  br label %244

244:                                              ; preds = %243, %229
  br label %245

245:                                              ; preds = %244, %208
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 1
  store i32 1, i32* %247, align 4
  %248 = load i32, i32* %12, align 4
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 3
  store i32 %248, i32* %250, align 8
  %251 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %252 = call i32 @freeaddrinfo(%struct.addrinfo* %251)
  store i32 0, i32* %4, align 4
  br label %263

253:                                              ; preds = %242, %228, %207, %187
  %254 = load i32, i32* %12, align 4
  %255 = icmp sge i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %253
  %257 = load i32, i32* %12, align 4
  %258 = call i32 @closesocket(i32 %257)
  br label %259

259:                                              ; preds = %256, %253
  %260 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %261 = call i32 @freeaddrinfo(%struct.addrinfo* %260)
  %262 = load i32, i32* %16, align 4
  store i32 %262, i32* %4, align 4
  br label %263

263:                                              ; preds = %259, %245, %141, %45, %36
  %264 = load i32, i32* %4, align 4
  ret i32 %264
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_url_split(i8*, i32, i32*, i32, i8*, i32, i32*, i8*, i32, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, ...) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @av_find_info_tag(i8*, i32, i8*, i8*) #2

declare dso_local i8* @strtol(i8*, i8**, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @ff_socket(i64, i32, i32) #2

declare dso_local i32 @ff_neterrno(...) #2

declare dso_local i32 @customize_fd(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @ff_listen(i32, i64, i32) #2

declare dso_local i32 @ff_listen_bind(i32, i64, i32, i8*, %struct.TYPE_10__*) #2

declare dso_local i32 @ff_connect_parallel(%struct.addrinfo*, i32, i32, %struct.TYPE_10__*, i32*, i32 (%struct.TYPE_11__*, i32)*, %struct.TYPE_11__*) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i32 @closesocket(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
