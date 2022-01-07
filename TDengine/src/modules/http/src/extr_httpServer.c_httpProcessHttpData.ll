; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpServer.c_httpProcessHttpData.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpServer.c_httpProcessHttpData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_17__*, i32 (%struct.TYPE_19__*)*, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_19__* }
%struct.epoll_event = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }

@SIGPIPE = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@HTTP_MAX_EVENTS = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"context:%p, fd:%d, ip:%s, state:%s, EPOLLPRI events occured, accessed:%d, close connect\00", align 1
@EPOLLRDHUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"context:%p, fd:%d, ip:%s, state:%s, EPOLLRDHUP events occured, accessed:%d, close connect\00", align 1
@EPOLLERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [88 x i8] c"context:%p, fd:%d, ip:%s, state:%s, EPOLLERR events occured, accessed:%d, close connect\00", align 1
@EPOLLHUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [88 x i8] c"context:%p, fd:%d, ip:%s, state:%s, EPOLLHUP events occured, accessed:%d, close connect\00", align 1
@HTTP_CONTEXT_STATE_READY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [75 x i8] c"context:%p, fd:%d, ip:%s, state:%s, not in ready state, ignore read events\00", align 1
@.str.5 = private unnamed_addr constant [85 x i8] c"context:%p, fd:%d, ip:%s, state:%s, server is not online, accessed:%d, close connect\00", align 1
@HTTP_SERVER_OFFLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @httpProcessHttpData(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %3, align 8
  %13 = call i32 @sigemptyset(i32* %6)
  %14 = load i32, i32* @SIGPIPE, align 4
  %15 = call i32 @sigaddset(i32* %6, i32 %14)
  %16 = load i32, i32* @SIG_SETMASK, align 4
  %17 = call i32 @pthread_sigmask(i32 %16, i32* %6, i32* null)
  br label %18

18:                                               ; preds = %1, %278, %281
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 4
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 4
  %31 = call i32 @pthread_cond_wait(i32* %28, i32* %30)
  br label %32

32:                                               ; preds = %26, %18
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 4
  %35 = call i32 @pthread_mutex_unlock(i32* %34)
  %36 = load i32, i32* @HTTP_MAX_EVENTS, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %7, align 8
  %39 = alloca %struct.epoll_event, i64 %37, align 16
  store i64 %37, i64* %8, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @HTTP_MAX_EVENTS, align 4
  %44 = call i32 @epoll_wait(i32 %42, %struct.epoll_event* %39, i32 %43, i32 1)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  store i32 2, i32* %9, align 4
  br label %278

48:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %274, %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %277

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %39, i64 %55
  %57 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  store %struct.TYPE_19__* %59, %struct.TYPE_19__** %4, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 5
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %64 = icmp ne %struct.TYPE_19__* %62, %63
  br i1 %64, label %76, label %65

65:                                               ; preds = %53
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %70 = icmp ne %struct.TYPE_18__* %68, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %65
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sle i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %65, %53
  br label %274

77:                                               ; preds = %71
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %39, i64 %79
  %81 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 16
  %83 = load i32, i32* @EPOLLPRI, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %77
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @httpContextStateStr(i32 %96)
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i8*, %struct.TYPE_19__*, i64, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), %struct.TYPE_19__* %87, i64 %90, i32 %93, i32 %97, i32 %100)
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %104 = call i32 @httpRemoveContextFromEpoll(%struct.TYPE_18__* %102, %struct.TYPE_19__* %103)
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %107 = call i32 @httpCloseContextByServer(%struct.TYPE_18__* %105, %struct.TYPE_19__* %106)
  br label %274

108:                                              ; preds = %77
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %39, i64 %110
  %112 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 16
  %114 = load i32, i32* @EPOLLRDHUP, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %139

117:                                              ; preds = %108
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @httpContextStateStr(i32 %127)
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i8*, %struct.TYPE_19__*, i64, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_19__* %118, i64 %121, i32 %124, i32 %128, i32 %131)
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %135 = call i32 @httpRemoveContextFromEpoll(%struct.TYPE_18__* %133, %struct.TYPE_19__* %134)
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %138 = call i32 @httpCloseContextByServer(%struct.TYPE_18__* %136, %struct.TYPE_19__* %137)
  br label %274

139:                                              ; preds = %108
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %39, i64 %141
  %143 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 16
  %145 = load i32, i32* @EPOLLERR, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %170

148:                                              ; preds = %139
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @httpContextStateStr(i32 %158)
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i32 (i8*, %struct.TYPE_19__*, i64, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_19__* %149, i64 %152, i32 %155, i32 %159, i32 %162)
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %166 = call i32 @httpRemoveContextFromEpoll(%struct.TYPE_18__* %164, %struct.TYPE_19__* %165)
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %169 = call i32 @httpCloseContextByServer(%struct.TYPE_18__* %167, %struct.TYPE_19__* %168)
  br label %274

170:                                              ; preds = %139
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %39, i64 %172
  %174 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 16
  %176 = load i32, i32* @EPOLLHUP, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %201

179:                                              ; preds = %170
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @httpContextStateStr(i32 %189)
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = call i32 (i8*, %struct.TYPE_19__*, i64, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_19__* %180, i64 %183, i32 %186, i32 %190, i32 %193)
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %197 = call i32 @httpRemoveContextFromEpoll(%struct.TYPE_18__* %195, %struct.TYPE_19__* %196)
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %200 = call i32 @httpCloseContextByServer(%struct.TYPE_18__* %198, %struct.TYPE_19__* %199)
  br label %274

201:                                              ; preds = %170
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %203 = load i32, i32* @HTTP_CONTEXT_STATE_READY, align 4
  %204 = load i32, i32* @HTTP_CONTEXT_STATE_READY, align 4
  %205 = call i32 @httpAlterContextState(%struct.TYPE_19__* %202, i32 %203, i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %220, label %207

207:                                              ; preds = %201
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @httpContextStateStr(i32 %217)
  %219 = call i32 (i8*, %struct.TYPE_19__*, i64, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_19__* %208, i64 %211, i32 %214, i32 %218)
  br label %274

220:                                              ; preds = %201
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 4
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %256, label %229

229:                                              ; preds = %220
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @httpContextStateStr(i32 %239)
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = call i32 (i8*, %struct.TYPE_19__*, i64, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_19__* %230, i64 %233, i32 %236, i32 %240, i32 %243)
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %247 = call i32 @httpRemoveContextFromEpoll(%struct.TYPE_18__* %245, %struct.TYPE_19__* %246)
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %249 = call i32 @httpReadDirtyData(%struct.TYPE_19__* %248)
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %251 = load i32, i32* @HTTP_SERVER_OFFLINE, align 4
  %252 = call i32 @httpSendErrorResp(%struct.TYPE_19__* %250, i32 %251)
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %255 = call i32 @httpCloseContextByServer(%struct.TYPE_18__* %253, %struct.TYPE_19__* %254)
  br label %274

256:                                              ; preds = %220
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %259 = call i64 @httpReadData(%struct.TYPE_18__* %257, %struct.TYPE_19__* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %272

261:                                              ; preds = %256
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 2
  %264 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %263, align 8
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %266 = call i32 %264(%struct.TYPE_19__* %265)
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 0
  %271 = call i32 @atomic_fetch_add_32(i32* %270, i32 1)
  br label %272

272:                                              ; preds = %261, %256
  br label %273

273:                                              ; preds = %272
  br label %274

274:                                              ; preds = %273, %229, %207, %179, %148, %117, %86, %76
  %275 = load i32, i32* %10, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %10, align 4
  br label %49

277:                                              ; preds = %49
  store i32 0, i32* %9, align 4
  br label %278

278:                                              ; preds = %277, %47
  %279 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %279)
  %280 = load i32, i32* %9, align 4
  switch i32 %280, label %282 [
    i32 0, label %281
    i32 2, label %18
  ]

281:                                              ; preds = %278
  br label %18

282:                                              ; preds = %278
  unreachable
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @pthread_sigmask(i32, i32*, i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #1

declare dso_local i32 @httpTrace(i8*, %struct.TYPE_19__*, i64, i32, i32, ...) #1

declare dso_local i32 @httpContextStateStr(i32) #1

declare dso_local i32 @httpRemoveContextFromEpoll(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @httpCloseContextByServer(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @httpAlterContextState(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @httpReadDirtyData(%struct.TYPE_19__*) #1

declare dso_local i32 @httpSendErrorResp(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @httpReadData(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @atomic_fetch_add_32(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
