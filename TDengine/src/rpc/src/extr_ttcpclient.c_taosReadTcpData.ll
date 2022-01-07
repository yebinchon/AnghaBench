; ModuleID = '/home/carl/AnghaBench/TDengine/src/rpc/src/extr_ttcpclient.c_taosReadTcpData.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/rpc/src/extr_ttcpclient.c_taosReadTcpData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32* (i8*, i32, i32, i32, i32, i32*, %struct.TYPE_8__*)*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, i32, i32, i32 }
%struct.epoll_event = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i64 }

@maxTcpEvents = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s TCP error happened on FD\0A\00", align 1
@EPOLLHUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s TCP FD hang up\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s TCP malloc(size:1024) fail\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s read error, headLen:%d\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s TCP malloc(size:%d) fail\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"%s read error, leftLen:%d retLen:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @taosReadTcpData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @taosReadTcpData(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %3, align 8
  %17 = load i32, i32* @maxTcpEvents, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca %struct.epoll_event, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  br label %21

21:                                               ; preds = %209, %47, %1
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 5
  %25 = call i32 @pthread_mutex_lock(i32* %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 5
  %35 = call i32 @pthread_cond_wait(i32* %32, i32* %34)
  br label %36

36:                                               ; preds = %30, %22
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 5
  %39 = call i32 @pthread_mutex_unlock(i32* %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @maxTcpEvents, align 4
  %44 = call i32 @epoll_wait(i32 %42, %struct.epoll_event* %20, i32 %43, i32 -1)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %21

48:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %206, %48
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %209

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %20, i64 %55
  %57 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %6, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %20, i64 %61
  %63 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 16
  %65 = load i32, i32* @EPOLLERR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %53
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, i32, ...) @tTrace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = call i32 @taosCleanUpTcpFdObj(%struct.TYPE_8__* %73)
  br label %206

75:                                               ; preds = %53
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %20, i64 %77
  %79 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 16
  %81 = load i32, i32* @EPOLLHUP, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %75
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i8*, i32, ...) @tTrace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %90 = call i32 @taosCleanUpTcpFdObj(%struct.TYPE_8__* %89)
  br label %206

91:                                               ; preds = %75
  %92 = call i8* @malloc(i32 1024)
  store i8* %92, i8** %9, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = icmp eq i8* null, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i8*, i32, ...) @tTrace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %101 = call i32 @taosCleanUpTcpFdObj(%struct.TYPE_8__* %100)
  br label %206

102:                                              ; preds = %91
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = call i32 @taosReadMsg(i32 %105, i8* %106, i32 8)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = icmp ne i64 %109, 8
  br i1 %110, label %111, label %121

111:                                              ; preds = %102
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = call i32 (i8*, i32, i32, ...) @tError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %114, i32 %115)
  %117 = load i8*, i8** %9, align 8
  %118 = call i32 @tfree(i8* %117)
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %120 = call i32 @taosCleanUpTcpFdObj(%struct.TYPE_8__* %119)
  br label %206

121:                                              ; preds = %102
  %122 = load i8*, i8** %9, align 8
  %123 = bitcast i8* %122 to %struct.TYPE_10__*
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 @htonl(i32 %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp sgt i32 %128, 1024
  br i1 %129, label %130, label %149

130:                                              ; preds = %121
  %131 = load i8*, i8** %9, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = call i8* @realloc(i8* %131, i64 %133)
  store i8* %134, i8** %12, align 8
  %135 = load i8*, i8** %12, align 8
  %136 = icmp eq i8* null, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %130
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call i32 (i8*, i32, ...) @tTrace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %140, i32 %141)
  %143 = load i8*, i8** %9, align 8
  %144 = call i32 @tfree(i8* %143)
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %146 = call i32 @taosCleanUpTcpFdObj(%struct.TYPE_8__* %145)
  br label %206

147:                                              ; preds = %130
  %148 = load i8*, i8** %12, align 8
  store i8* %148, i8** %9, align 8
  br label %149

149:                                              ; preds = %147, %121
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %10, align 4
  %152 = sub nsw i32 %150, %151
  store i32 %152, i32* %13, align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr i8, i8* %156, i64 %158
  %160 = load i32, i32* %13, align 4
  %161 = call i32 @taosReadMsg(i32 %155, i8* %159, i32 %160)
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %14, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %149
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %14, align 4
  %171 = call i32 (i8*, i32, i32, ...) @tError(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %168, i32 %169, i32 %170)
  %172 = load i8*, i8** %9, align 8
  %173 = call i32 @tfree(i8* %172)
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %175 = call i32 @taosCleanUpTcpFdObj(%struct.TYPE_8__* %174)
  br label %206

176:                                              ; preds = %149
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 2
  %179 = load i32* (i8*, i32, i32, i32, i32, i32*, %struct.TYPE_8__*)*, i32* (i8*, i32, i32, i32, i32, i32*, %struct.TYPE_8__*)** %178, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = load i32, i32* %11, align 4
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %195 = call i32* %179(i8* %180, i32 %181, i32 %184, i32 %187, i32 %190, i32* %193, %struct.TYPE_8__* %194)
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  store i32* %195, i32** %197, align 8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = icmp eq i32* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %176
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %204 = call i32 @taosCleanUpTcpFdObj(%struct.TYPE_8__* %203)
  br label %205

205:                                              ; preds = %202, %176
  br label %206

206:                                              ; preds = %205, %165, %137, %111, %95, %84, %68
  %207 = load i32, i32* %4, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %4, align 4
  br label %49

209:                                              ; preds = %49
  br label %21
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #2

declare dso_local i32 @tTrace(i8*, i32, ...) #2

declare dso_local i32 @taosCleanUpTcpFdObj(%struct.TYPE_8__*) #2

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
