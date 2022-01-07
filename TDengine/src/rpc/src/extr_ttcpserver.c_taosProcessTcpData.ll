; ModuleID = '/home/carl/AnghaBench/TDengine/src/rpc/src/extr_ttcpserver.c_taosProcessTcpData.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/rpc/src/extr_ttcpserver.c_taosProcessTcpData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32* (i8*, i32, i32, i32, i32, i32*, %struct.TYPE_10__*)*, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32*, i64, i32, i32 }
%struct.epoll_event = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64 }

@maxEvents = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s TCP thread:%d, error happened on FD\00", align 1
@EPOLLHUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s TCP thread:%d, FD hang up\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%s read error, headLen:%d\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%s read error, leftLen:%d retLen:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @taosProcessTcpData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @taosProcessTcpData(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %14 = load i32, i32* @maxEvents, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca %struct.epoll_event, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %3, align 8
  br label %20

20:                                               ; preds = %191, %46, %1
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 6
  %24 = call i32 @pthread_mutex_lock(i32* %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 7
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 6
  %34 = call i32 @pthread_cond_wait(i32* %31, i32* %33)
  br label %35

35:                                               ; preds = %29, %21
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 6
  %38 = call i32 @pthread_mutex_unlock(i32* %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @maxEvents, align 4
  %43 = call i32 @epoll_wait(i32 %41, %struct.epoll_event* %17, i32 %42, i32 -1)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %20

47:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %188, %47
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %191

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %17, i64 %54
  %56 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %6, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %17, i64 %60
  %62 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 16
  %64 = load i32, i32* @EPOLLERR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %52
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @tTrace(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = call i32 @taosCleanUpFdObj(%struct.TYPE_10__* %75)
  br label %188

77:                                               ; preds = %52
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %17, i64 %79
  %81 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 16
  %83 = load i32, i32* @EPOLLHUP, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %77
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @tTrace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %92)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = call i32 @taosCleanUpFdObj(%struct.TYPE_10__* %94)
  br label %188

96:                                               ; preds = %77
  %97 = call i8* @malloc(i32 1024)
  store i8* %97, i8** %9, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @taosReadMsg(i32 %100, i8* %101, i32 8)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp ne i64 %104, 8
  br i1 %105, label %106, label %116

106:                                              ; preds = %96
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 (i8*, i32, i32, ...) @tError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %113 = call i32 @taosCleanUpFdObj(%struct.TYPE_10__* %112)
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 @tfree(i8* %114)
  br label %188

116:                                              ; preds = %96
  %117 = load i8*, i8** %9, align 8
  %118 = bitcast i8* %117 to %struct.TYPE_9__*
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @htonl(i32 %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp sgt i32 %123, 1024
  br i1 %124, label %125, label %130

125:                                              ; preds = %116
  %126 = load i8*, i8** %9, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = call i8* @realloc(i8* %126, i64 %128)
  store i8* %129, i8** %9, align 8
  br label %130

130:                                              ; preds = %125, %116
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %10, align 4
  %133 = sub nsw i32 %131, %132
  store i32 %133, i32* %12, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load i8*, i8** %9, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr i8, i8* %137, i64 %139
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @taosReadMsg(i32 %136, i8* %140, i32 %141)
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %130
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %13, align 4
  %152 = call i32 (i8*, i32, i32, ...) @tError(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %149, i32 %150, i32 %151)
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %154 = call i32 @taosCleanUpFdObj(%struct.TYPE_10__* %153)
  %155 = load i8*, i8** %9, align 8
  %156 = call i32 @tfree(i8* %155)
  br label %188

157:                                              ; preds = %130
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  %160 = load i32* (i8*, i32, i32, i32, i32, i32*, %struct.TYPE_10__*)*, i32* (i8*, i32, i32, i32, i32, i32*, %struct.TYPE_10__*)** %159, align 8
  %161 = load i8*, i8** %9, align 8
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = trunc i64 %168 to i32
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %177 = call i32* %160(i8* %161, i32 %162, i32 %165, i32 %169, i32 %172, i32* %175, %struct.TYPE_10__* %176)
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  store i32* %177, i32** %179, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = icmp eq i32* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %157
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %186 = call i32 @taosCleanUpFdObj(%struct.TYPE_10__* %185)
  br label %187

187:                                              ; preds = %184, %157
  br label %188

188:                                              ; preds = %187, %146, %106, %86, %67
  %189 = load i32, i32* %4, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %4, align 4
  br label %48

191:                                              ; preds = %48
  br label %20
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #2

declare dso_local i32 @tTrace(i8*, i32, i32) #2

declare dso_local i32 @taosCleanUpFdObj(%struct.TYPE_10__*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @taosReadMsg(i32, i8*, i32) #2

declare dso_local i32 @tError(i8*, i32, i32, ...) #2

declare dso_local i32 @tfree(i8*) #2

declare dso_local i32 @htonl(i32) #2

declare dso_local i8* @realloc(i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
