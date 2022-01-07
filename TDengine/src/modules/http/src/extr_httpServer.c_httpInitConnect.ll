; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpServer.c_httpInitConnect.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpServer.c_httpInitConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32, i64, i32, i32, i32, i32, %struct.TYPE_6__* }

@.str = private unnamed_addr constant [28 x i8] c"init error no enough memory\00", align 1
@PTHREAD_CREATE_JOINABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"http thread:%s, failed to init HTTP process data mutex, reason:%s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"http thread:%s, init HTTP condition variable failed, reason:%s\00", align 1
@HTTP_MAX_EVENTS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"http thread:%s, failed to create HTTP epoll\00", align 1
@httpProcessHttpData = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [69 x i8] c"http thread:%s, failed to create HTTP process data thread, reason:%s\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"http thread:%p:%s, initialized\00", align 1
@httpAcceptHttpConnection = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [63 x i8] c"http server:%s, failed to create Http accept thread, reason:%s\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"http server:%s, initialized, ip:%s:%u, numOfThreads:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpInitConnect(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = mul i64 48, %10
  %12 = trunc i64 %11 to i32
  %13 = call i64 @malloc(i32 %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_5__*
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 6
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %16, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp eq %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 (i8*, ...) @httpError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %161

23:                                               ; preds = %1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 6
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = mul i64 48, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memset(%struct.TYPE_5__* %26, i32 0, i32 %32)
  %34 = call i32 @pthread_attr_init(i32* %5)
  %35 = load i32, i32* @PTHREAD_CREATE_JOINABLE, align 4
  %36 = call i32 @pthread_attr_setdetachstate(i32* %5, i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 6
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %6, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %127, %23
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %130

46:                                               ; preds = %40
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @sprintf(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %52, i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 7
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %57, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 5
  %68 = call i64 @pthread_mutex_init(i32* %67, i32* null)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %46
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* @errno, align 4
  %75 = call i32 @strerror(i32 %74)
  %76 = call i32 (i8*, ...) @httpError(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i8* %73, i32 %75)
  store i32 0, i32* %2, align 4
  br label %161

77:                                               ; preds = %46
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 4
  %80 = call i64 @pthread_cond_init(i32* %79, i32* null)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* @errno, align 4
  %87 = call i32 @strerror(i32 %86)
  %88 = call i32 (i8*, ...) @httpError(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* %85, i32 %87)
  store i32 0, i32* %2, align 4
  br label %161

89:                                               ; preds = %77
  %90 = load i32, i32* @HTTP_MAX_EVENTS, align 4
  %91 = call i64 @epoll_create(i32 %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %89
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i8*, ...) @httpError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %101)
  store i32 0, i32* %2, align 4
  br label %161

103:                                              ; preds = %89
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  %106 = load i64, i64* @httpProcessHttpData, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %109 = bitcast %struct.TYPE_5__* %108 to i8*
  %110 = call i64 @pthread_create(i32* %105, i32* %5, i8* %107, i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %103
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* @errno, align 4
  %117 = call i32 @strerror(i32 %116)
  %118 = call i32 (i8*, ...) @httpError(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i8* %115, i32 %117)
  store i32 0, i32* %2, align 4
  br label %161

119:                                              ; preds = %103
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (i8*, ...) @httpTrace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_5__* %120, i8* %123)
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 1
  store %struct.TYPE_5__* %126, %struct.TYPE_5__** %6, align 8
  br label %127

127:                                              ; preds = %119
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %4, align 4
  br label %40

130:                                              ; preds = %40
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 4
  %133 = load i64, i64* @httpAcceptHttpConnection, align 8
  %134 = inttoptr i64 %133 to i8*
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %136 = bitcast %struct.TYPE_6__* %135 to i8*
  %137 = call i64 @pthread_create(i32* %132, i32* %5, i8* %134, i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %130
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* @errno, align 4
  %144 = call i32 @strerror(i32 %143)
  %145 = call i32 (i8*, ...) @httpError(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i8* %142, i32 %144)
  store i32 0, i32* %2, align 4
  br label %161

146:                                              ; preds = %130
  %147 = call i32 @pthread_attr_destroy(i32* %5)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (i8*, ...) @httpTrace(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i8* %150, i32 %153, i32 %156, i32 %159)
  store i32 1, i32* %2, align 4
  br label %161

161:                                              ; preds = %146, %139, %112, %98, %82, %70, %21
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @httpError(i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @pthread_cond_init(i32*, i32*) #1

declare dso_local i64 @epoll_create(i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i8*, i8*) #1

declare dso_local i32 @httpTrace(i8*, ...) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
