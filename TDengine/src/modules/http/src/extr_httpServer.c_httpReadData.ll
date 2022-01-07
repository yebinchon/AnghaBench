; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpServer.c_httpReadData.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpServer.c_httpReadData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }

@HTTP_CHECK_BODY_CONTINUE = common dso_local global i32 0, align 4
@httpCloseContextByServerForExpired = common dso_local global i32 0, align 4
@HTTP_EXPIRED_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"context:%p, fd:%d, ip:%s, not finished yet, try another times, timer:%p\00", align 1
@HTTP_CHECK_BODY_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"context:%p, fd:%d, ip:%s, failed to read http body, close connect\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpReadData(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %13 = call i32 @httpInitContext(%struct.TYPE_19__* %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %16 = call i32 @httpReadDataImp(%struct.TYPE_19__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %21 = call i32 @httpCloseContextByServer(%struct.TYPE_18__* %19, %struct.TYPE_19__* %20)
  store i32 0, i32* %3, align 4
  br label %88

22:                                               ; preds = %14
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %24 = call i32 @httpParseRequest(%struct.TYPE_19__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %29 = call i32 @httpCloseContextByServer(%struct.TYPE_18__* %27, %struct.TYPE_19__* %28)
  store i32 0, i32* %3, align 4
  br label %88

30:                                               ; preds = %22
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = call i32 @httpCheckReadCompleted(%struct.TYPE_19__* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @HTTP_CHECK_BODY_CONTINUE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %30
  %37 = load i32, i32* @httpCloseContextByServerForExpired, align 4
  %38 = load i32, i32* @HTTP_EXPIRED_TIME, align 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 2
  %47 = call i32 @taosTmrReset(i32 %37, i32 %38, %struct.TYPE_19__* %39, i32 %44, i32* %46)
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @httpTrace(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), %struct.TYPE_19__* %48, i32 %51, i32 %54, i32 %57)
  store i32 0, i32* %3, align 4
  br label %88

59:                                               ; preds = %30
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @HTTP_CHECK_BODY_SUCCESS, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %65 = call i32 @httpCleanUpContextTimer(%struct.TYPE_19__* %64)
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %67 = call i64 @httpDecompressData(%struct.TYPE_19__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %88

70:                                               ; preds = %63
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %73 = call i32 @httpCloseContextByServer(%struct.TYPE_18__* %71, %struct.TYPE_19__* %72)
  store i32 0, i32* %3, align 4
  br label %88

74:                                               ; preds = %59
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %76 = call i32 @httpCleanUpContextTimer(%struct.TYPE_19__* %75)
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @httpError(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_19__* %77, i32 %80, i32 %83)
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %87 = call i32 @httpCloseContextByServer(%struct.TYPE_18__* %85, %struct.TYPE_19__* %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %74, %70, %69, %36, %26, %18
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @httpInitContext(%struct.TYPE_19__*) #1

declare dso_local i32 @httpReadDataImp(%struct.TYPE_19__*) #1

declare dso_local i32 @httpCloseContextByServer(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @httpParseRequest(%struct.TYPE_19__*) #1

declare dso_local i32 @httpCheckReadCompleted(%struct.TYPE_19__*) #1

declare dso_local i32 @taosTmrReset(i32, i32, %struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32 @httpTrace(i8*, %struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @httpCleanUpContextTimer(%struct.TYPE_19__*) #1

declare dso_local i64 @httpDecompressData(%struct.TYPE_19__*) #1

declare dso_local i32 @httpError(i8*, %struct.TYPE_19__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
