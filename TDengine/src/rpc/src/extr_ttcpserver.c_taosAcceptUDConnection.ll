; ModuleID = '/home/carl/AnghaBench/TDengine/src/rpc/src/extr_ttcpserver.c_taosAcceptUDConnection.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/rpc/src/extr_ttcpserver.c_taosAcceptUDConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, i32, i32 }
%struct.epoll_event = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }

@.str = private unnamed_addr constant [44 x i8] c"%s failed to open UD socket, ip:%s, port:%u\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%s UD server is ready, ip:%s, port:%u\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"%s UD accept failure, errno:%d, reason:%s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"%s no enough resource to allocate TCP FD IDs\00", align 1
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@EPOLLWAKEUP = common dso_local global i32 0, align 4
@EPOLL_CTL_ADD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"%s failed to add UD FD for epoll, error:%s\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"%s UD thread:%d, a new connection, numOfFds:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taosAcceptUDConnection(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.epoll_event, align 8
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @taosOpenUDServerSocket(i32 %14, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, i32, ...) @tError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %30)
  ret void

32:                                               ; preds = %1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @tTrace(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %49, %68, %100, %130
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @accept(i32 %45, i32* null, i32* null)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @errno, align 4
  %54 = load i32, i32* @errno, align 4
  %55 = call i32 @strerror(i32 %54)
  %56 = call i32 (i8*, i32, ...) @tError(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53, i32 %55)
  br label %44

57:                                               ; preds = %44
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %62
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %6, align 8
  %64 = call i64 @malloc(i32 32)
  %65 = inttoptr i64 %64 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %8, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = icmp eq %struct.TYPE_10__* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, i32, ...) @tError(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @close(i32 %73)
  br label %44

75:                                               ; preds = %57
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = call i32 @memset(%struct.TYPE_10__* %76, i32 0, i32 32)
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %83, align 8
  %84 = load i32, i32* @EPOLLIN, align 4
  %85 = load i32, i32* @EPOLLPRI, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @EPOLLWAKEUP, align 4
  %88 = or i32 %86, %87
  %89 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %9, i32 0, i32 0
  store i32 %88, i32* %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %9, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %92, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @EPOLL_CTL_ADD, align 4
  %97 = load i32, i32* %3, align 4
  %98 = call i64 @epoll_ctl(i32 %95, i32 %96, i32 %97, %struct.epoll_event* %9)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %75
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @errno, align 4
  %105 = call i32 @strerror(i32 %104)
  %106 = call i32 (i8*, i32, ...) @tError(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %103, i32 %105)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %108 = call i32 @tfree(%struct.TYPE_10__* %107)
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @close(i32 %109)
  br label %44

111:                                              ; preds = %75
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = call i32 @pthread_mutex_lock(i32* %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  store %struct.TYPE_10__* %117, %struct.TYPE_10__** %119, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = icmp ne %struct.TYPE_10__* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %111
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  store %struct.TYPE_10__* %125, %struct.TYPE_10__** %129, align 8
  br label %130

130:                                              ; preds = %124, %111
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 4
  store %struct.TYPE_10__* %131, %struct.TYPE_10__** %133, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 3
  %140 = call i32 @pthread_cond_signal(i32* %139)
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  %143 = call i32 @pthread_mutex_unlock(i32* %142)
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @tTrace(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %146, i32 %149, i32 %152)
  %154 = load i32, i32* %5, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = srem i32 %156, %159
  store i32 %160, i32* %5, align 4
  br label %44
}

declare dso_local i32 @taosOpenUDServerSocket(i32, i32) #1

declare dso_local i32 @tError(i8*, i32, ...) #1

declare dso_local i32 @tTrace(i8*, i32, i32, i32) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #1

declare dso_local i32 @tfree(%struct.TYPE_10__*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
