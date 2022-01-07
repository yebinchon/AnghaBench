; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_restHandle.c_restProcessSqlRequest.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_restHandle.c_restProcessSqlRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32, %struct.TYPE_10__, %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }

@.str = private unnamed_addr constant [59 x i8] c"context:%p, fd:%d, ip:%s, user:%s, process restful sql msg\00", align 1
@HTTP_NO_SQL_INPUT = common dso_local global i32 0, align 4
@HTTP_NO_EXEC_USEDB = common dso_local global i32 0, align 4
@HTTP_REQTYPE_SINGLE_SQL = common dso_local global i32 0, align 4
@REST_TIMESTAMP_FMT_LOCAL_STRING = common dso_local global i32 0, align 4
@restEncodeSqlLocalTimeStringMethod = common dso_local global i32 0, align 4
@REST_TIMESTAMP_FMT_TIMESTAMP = common dso_local global i32 0, align 4
@restEncodeSqlTimestampMethod = common dso_local global i32 0, align 4
@REST_TIMESTAMP_FMT_UTC_STRING = common dso_local global i32 0, align 4
@restEncodeSqlUtcTimeStringMethod = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @restProcessSqlRequest(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @httpTrace(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %8, i32 %11, i32 %14, i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = load i32, i32* @HTTP_NO_SQL_INPUT, align 4
  %29 = call i32 @httpSendErrorResp(%struct.TYPE_11__* %27, i32 %28)
  store i32 0, i32* %3, align 4
  br label %70

30:                                               ; preds = %2
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @httpCheckUsedbSql(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = load i32, i32* @HTTP_NO_EXEC_USEDB, align 4
  %37 = call i32 @httpSendErrorResp(%struct.TYPE_11__* %35, i32 %36)
  store i32 0, i32* %3, align 4
  br label %70

38:                                               ; preds = %30
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %7, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @HTTP_REQTYPE_SINGLE_SQL, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @REST_TIMESTAMP_FMT_LOCAL_STRING, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  store i32* @restEncodeSqlLocalTimeStringMethod, i32** %52, align 8
  br label %69

53:                                               ; preds = %38
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @REST_TIMESTAMP_FMT_TIMESTAMP, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  store i32* @restEncodeSqlTimestampMethod, i32** %59, align 8
  br label %68

60:                                               ; preds = %53
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @REST_TIMESTAMP_FMT_UTC_STRING, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store i32* @restEncodeSqlUtcTimeStringMethod, i32** %66, align 8
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67, %57
  br label %69

69:                                               ; preds = %68, %50
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %34, %26
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @httpTrace(i8*, %struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @httpSendErrorResp(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @httpCheckUsedbSql(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
