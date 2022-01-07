; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpServer.c_httpAcceptHttpConnection.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpServer.c_httpAcceptHttpConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i64, %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__*, i32, i32, i32 }
%struct.epoll_event = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.sockaddr = type { i32 }

@SIGPIPE = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"http server:%s, failed to open http socket, ip:%s:%u\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"http service init success at ip:%s:%u\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"http server:%s, accept connect failure, errno:%d, reason:%s\00", align 1
@errno = common dso_local global i32 0, align 4
@tsHttpCacheSessions = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [84 x i8] c"fd:%d, ip:%s:%u, totalFds:%d larger than httpCacheSessions:%d*20, refuse connection\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"fd:%d, ip:%s:%u, no enough resource to allocate http context\00", align 1
@.str.5 = private unnamed_addr constant [90 x i8] c"context:%p, fd:%d, ip:%s:%u, thread:%s, numOfFds:%d, totalFds:%d, accept a new connection\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@EPOLLWAKEUP = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLRDHUP = common dso_local global i32 0, align 4
@EPOLL_CTL_ADD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [82 x i8] c"context:%p, fd:%d, ip:%s:%u, thread:%s, failed to add http fd for epoll, error:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @httpAcceptHttpConnection(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.epoll_event, align 8
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %8, align 8
  %17 = call i32 @sigemptyset(i32* %11)
  %18 = load i32, i32* @SIGPIPE, align 4
  %19 = call i32 @sigaddset(i32* %11, i32 %18)
  %20 = load i32, i32* @SIG_SETMASK, align 4
  %21 = call i32 @pthread_sigmask(i32 %20, i32* %11, i32* null)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @taosOpenTcpServerSocket(i32 %24, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @httpError(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %40)
  ret void

42:                                               ; preds = %1
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @httpPrint(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %60, %96, %124, %190, %231
  store i32 8, i32* %12, align 4
  %54 = load i32, i32* %5, align 4
  %55 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %56 = call i64 @accept(i32 %54, %struct.sockaddr* %55, i32* %12)
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp slt i32 %58, 3
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @errno, align 4
  %65 = load i32, i32* @errno, align 4
  %66 = call i32 @strerror(i32 %65)
  %67 = call i32 (i8*, ...) @httpError(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %64, i32 %66)
  br label %53

68:                                               ; preds = %53
  store i32 1, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %88, %68
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %69
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %75
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %69

91:                                               ; preds = %69
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @tsHttpCacheSessions, align 4
  %94 = mul nsw i32 %93, 20
  %95 = icmp sgt i32 %92, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %91
  %97 = load i32, i32* %3, align 4
  %98 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @inet_ntoa(i32 %99)
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @htons(i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @tsHttpCacheSessions, align 4
  %106 = call i32 (i8*, ...) @httpError(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 %97, i8* %100, i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @taosCloseSocket(i32 %107)
  br label %53

109:                                              ; preds = %91
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @taosKeepTcpAlive(i32 %110)
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @taosSetNonblocking(i32 %112, i32 1)
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i64 %118
  store %struct.TYPE_10__* %119, %struct.TYPE_10__** %7, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %121 = call %struct.TYPE_12__* @httpCreateContext(%struct.TYPE_11__* %120)
  store %struct.TYPE_12__* %121, %struct.TYPE_12__** %9, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %123 = icmp eq %struct.TYPE_12__* %122, null
  br i1 %123, label %124, label %135

124:                                              ; preds = %109
  %125 = load i32, i32* %3, align 4
  %126 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @inet_ntoa(i32 %127)
  %129 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @htons(i32 %130)
  %132 = call i32 (i8*, ...) @httpError(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %125, i8* %128, i32 %131)
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @taosCloseSocket(i32 %133)
  br label %53

135:                                              ; preds = %109
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %137 = load i32, i32* %3, align 4
  %138 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @inet_ntoa(i32 %139)
  %141 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @htons(i32 %142)
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @httpTrace(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_12__* %136, i32 %137, i8* %140, i32 %143, i32 %146, i64 %149, i32 %150)
  %152 = load i32, i32* %3, align 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @inet_ntoa(i32 %159)
  %161 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @htons(i32 %162)
  %164 = call i32 @sprintf(i32 %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %160, i32 %163)
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 3
  store %struct.TYPE_10__* %165, %struct.TYPE_10__** %167, align 8
  %168 = load i32, i32* @EPOLLIN, align 4
  %169 = load i32, i32* @EPOLLPRI, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @EPOLLWAKEUP, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @EPOLLERR, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @EPOLLHUP, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @EPOLLRDHUP, align 4
  %178 = or i32 %176, %177
  %179 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %14, i32 0, i32 0
  store i32 %178, i32* %179, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %181 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %14, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  store %struct.TYPE_12__* %180, %struct.TYPE_12__** %182, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @EPOLL_CTL_ADD, align 4
  %187 = load i32, i32* %3, align 4
  %188 = call i64 @epoll_ctl(i32 %185, i32 %186, i32 %187, %struct.epoll_event* %14)
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %190, label %212

190:                                              ; preds = %135
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %192 = load i32, i32* %3, align 4
  %193 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i8* @inet_ntoa(i32 %194)
  %196 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @htons(i32 %197)
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @errno, align 4
  %203 = call i32 @strerror(i32 %202)
  %204 = call i32 (i8*, ...) @httpError(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_12__* %191, i32 %192, i8* %195, i32 %198, i32 %201, i32 %203)
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %209 = call i32 @httpFreeContext(i32 %207, %struct.TYPE_12__* %208)
  %210 = load i32, i32* %3, align 4
  %211 = call i32 @tclose(i32 %210)
  br label %53

212:                                              ; preds = %135
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  %215 = call i32 @pthread_mutex_lock(i32* %214)
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %217, align 8
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 2
  store %struct.TYPE_12__* %218, %struct.TYPE_12__** %220, align 8
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 3
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %222, align 8
  %224 = icmp ne %struct.TYPE_12__* %223, null
  br i1 %224, label %225, label %231

225:                                              ; preds = %212
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 3
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 1
  store %struct.TYPE_12__* %226, %struct.TYPE_12__** %230, align 8
  br label %231

231:                                              ; preds = %225, %212
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 3
  store %struct.TYPE_12__* %232, %struct.TYPE_12__** %234, align 8
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = add nsw i64 %237, 1
  store i64 %238, i64* %236, align 8
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 1
  %241 = call i32 @pthread_cond_signal(i32* %240)
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = call i32 @pthread_mutex_unlock(i32* %243)
  %245 = load i32, i32* %6, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %6, align 4
  %247 = load i32, i32* %6, align 4
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = srem i32 %247, %250
  store i32 %251, i32* %6, align 4
  br label %53
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @pthread_sigmask(i32, i32*, i32*) #1

declare dso_local i32 @taosOpenTcpServerSocket(i32, i32) #1

declare dso_local i32 @httpError(i8*, ...) #1

declare dso_local i32 @httpPrint(i8*, i32, i32) #1

declare dso_local i64 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @taosCloseSocket(i32) #1

declare dso_local i32 @taosKeepTcpAlive(i32) #1

declare dso_local i32 @taosSetNonblocking(i32, i32) #1

declare dso_local %struct.TYPE_12__* @httpCreateContext(%struct.TYPE_11__*) #1

declare dso_local i32 @httpTrace(i8*, %struct.TYPE_12__*, i32, i8*, i32, i32, i64, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i32) #1

declare dso_local i64 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #1

declare dso_local i32 @httpFreeContext(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @tclose(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
