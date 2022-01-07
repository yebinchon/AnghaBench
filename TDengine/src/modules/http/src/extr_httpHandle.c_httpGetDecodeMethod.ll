; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpHandle.c_httpGetDecodeMethod.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpHandle.c_httpGetDecodeMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_15__ }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [75 x i8] c"context:%p, fd:%d, ip:%s, error:the url is not support, method:%s, path:%s\00", align 1
@HTTP_UNSUPPORT_URL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpGetDecodeMethod(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 3
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %4, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %5, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %47, %1
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %19
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %26, i64 %28
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %8, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @strcmp(i32 %33, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %23
  br label %47

43:                                               ; preds = %23
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %46, align 8
  store i32 1, i32* %2, align 4
  br label %72

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %19

50:                                               ; preds = %19
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @httpError(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %51, i32 %54, i32 %57, i32 %61, i32 %67)
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %70 = load i32, i32* @HTTP_UNSUPPORT_URL, align 4
  %71 = call i32 @httpSendErrorResp(%struct.TYPE_17__* %69, i32 %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %50, %43
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @httpError(i8*, %struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @httpSendErrorResp(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
