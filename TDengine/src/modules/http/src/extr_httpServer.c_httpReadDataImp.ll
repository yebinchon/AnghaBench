; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpServer.c_httpReadDataImp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpServer.c_httpReadDataImp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64* }

@HTTP_BUFFER_SIZE = common dso_local global i32 0, align 4
@HTTP_STEP_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [72 x i8] c"context:%p, fd:%d, ip:%s, read from socket error:%d, wait another event\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"context:%p, fd:%d, ip:%s, read from socket error:%d, close connect\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"context:%p, fd:%d, ip:%s, thread:%s, request big than:%d\00", align 1
@HTTP_REQUSET_TOO_BIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"context:%p, fd:%d, ip:%s, thread:%s, read size:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpReadDataImp(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %4, align 8
  br label %8

8:                                                ; preds = %119, %1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @HTTP_BUFFER_SIZE, align 4
  %13 = load i32, i32* @HTTP_STEP_SIZE, align 4
  %14 = sub nsw i32 %12, %13
  %15 = icmp sle i32 %11, %14
  br i1 %15, label %16, label %120

16:                                               ; preds = %8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %22, i64 %26
  %28 = load i32, i32* @HTTP_STEP_SIZE, align 4
  %29 = call i64 @taosReadSocket(i32 %19, i64* %27, i32 %28)
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %16
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @HTTP_STEP_SIZE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %120

43:                                               ; preds = %33, %16
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %78

46:                                               ; preds = %43
  %47 = load i64, i64* @errno, align 8
  %48 = load i64, i64* @EINTR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @EAGAIN, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @EWOULDBLOCK, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %54, %50, %46
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* @errno, align 8
  %67 = call i32 (i8*, %struct.TYPE_11__*, i32, i32, i64, ...) @httpTrace(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %59, i32 %62, i32 %65, i64 %66)
  br label %120

68:                                               ; preds = %54
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* @errno, align 8
  %77 = call i32 (i8*, %struct.TYPE_11__*, i32, i32, i64, ...) @httpError(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %69, i32 %72, i32 %75, i64 %76)
  store i32 0, i32* %2, align 4
  br label %146

78:                                               ; preds = %43
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @HTTP_BUFFER_SIZE, align 4
  %90 = load i32, i32* @HTTP_STEP_SIZE, align 4
  %91 = sub nsw i32 %89, %90
  %92 = icmp sge i32 %88, %91
  br i1 %92, label %93, label %119

93:                                               ; preds = %85
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %95 = call i32 @httpReadDirtyData(%struct.TYPE_11__* %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = load i32, i32* @HTTP_BUFFER_SIZE, align 4
  %110 = call i32 (i8*, %struct.TYPE_11__*, i32, i32, i64, ...) @httpError(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_11__* %96, i32 %99, i32 %102, i64 %108, i32 %109)
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %115 = call i32 @httpRemoveContextFromEpoll(%struct.TYPE_12__* %113, %struct.TYPE_11__* %114)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %117 = load i32, i32* @HTTP_REQUSET_TOO_BIG, align 4
  %118 = call i32 @httpSendErrorResp(%struct.TYPE_11__* %116, i32 %117)
  store i32 0, i32* %2, align 4
  br label %146

119:                                              ; preds = %85
  br label %8

120:                                              ; preds = %58, %37, %8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %123, i64 %127
  store i64 0, i64* %128, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i8*, %struct.TYPE_11__*, i32, i32, i64, ...) @httpTrace(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_11__* %129, i32 %132, i32 %135, i64 %141, i32 %144)
  store i32 1, i32* %2, align 4
  br label %146

146:                                              ; preds = %120, %93, %68
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i64 @taosReadSocket(i32, i64*, i32) #1

declare dso_local i32 @httpTrace(i8*, %struct.TYPE_11__*, i32, i32, i64, ...) #1

declare dso_local i32 @httpError(i8*, %struct.TYPE_11__*, i32, i32, i64, ...) #1

declare dso_local i32 @httpReadDirtyData(%struct.TYPE_11__*) #1

declare dso_local i32 @httpRemoveContextFromEpoll(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @httpSendErrorResp(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
