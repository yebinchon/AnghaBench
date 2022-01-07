; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_client_executor.c_MultiClientResultStatus.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_client_executor.c_MultiClientResultStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CONNECTION_OK = common dso_local global i64 0, align 8
@CLIENT_INVALID_RESULT_STATUS = common dso_local global i32 0, align 4
@INVALID_CONNECTION_ID = common dso_local global i64 0, align 8
@ClientConnectionArray = common dso_local global %struct.TYPE_3__** null, align 8
@CONNECTION_BAD = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"could not maintain connection to worker node\00", align 1
@CLIENT_RESULT_UNAVAILABLE = common dso_local global i32 0, align 4
@CLIENT_RESULT_READY = common dso_local global i32 0, align 4
@CLIENT_RESULT_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"could not consume data from worker node\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MultiClientResultStatus(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i64, i64* @CONNECTION_OK, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* @CLIENT_INVALID_RESULT_STATUS, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @INVALID_CONNECTION_ID, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @Assert(i32 %14)
  %16 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @ClientConnectionArray, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %16, i64 %17
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %4, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @PQstatus(i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @CONNECTION_BAD, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load i32, i32* @WARNING, align 4
  %33 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @ereport(i32 %32, i32 %33)
  %35 = load i32, i32* @CLIENT_RESULT_UNAVAILABLE, align 4
  store i32 %35, i32* %2, align 4
  br label %62

36:                                               ; preds = %1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PQconsumeInput(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PQisBusy(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @CLIENT_RESULT_READY, align 4
  store i32 %51, i32* %7, align 4
  br label %54

52:                                               ; preds = %43
  %53 = load i32, i32* @CLIENT_RESULT_BUSY, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %52, %50
  br label %60

55:                                               ; preds = %36
  %56 = load i32, i32* @WARNING, align 4
  %57 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %58 = call i32 @ereport(i32 %56, i32 %57)
  %59 = load i32, i32* @CLIENT_RESULT_UNAVAILABLE, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %55, %54
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %31
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @PQstatus(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @PQconsumeInput(i32) #1

declare dso_local i32 @PQisBusy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
