; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_citus_dist_stat_activity.c_LocalNodeCitusDistStat.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_citus_dist_stat_activity.c_LocalNodeCitusDistStat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@NIL = common dso_local global i32* null, align 8
@CurrentMemoryContext = common dso_local global i32* null, align 8
@SPI_OK_CONNECT = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"could not connect to SPI manager to get the local stat activity\00", align 1
@SPI_OK_SELECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"execution was not successful while trying to get the local stat activity\00", align 1
@SPI_processed = common dso_local global i64 0, align 8
@SPI_tuptable = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32)* @LocalNodeCitusDistStat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @LocalNodeCitusDistStat(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32*, i32** @NIL, align 8
  store i32* %18, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %19 = load i32*, i32** @CurrentMemoryContext, align 8
  store i32* %19, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %20 = call i32 (...) @SPI_connect()
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @SPI_OK_CONNECT, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i32, i32* @WARNING, align 4
  %26 = call i32 @errmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @ereport(i32 %25, i32 %26)
  %28 = call i32 (...) @SPI_finish()
  %29 = load i32*, i32** @NIL, align 8
  store i32* %29, i32** %4, align 8
  br label %82

30:                                               ; preds = %3
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @SPI_execute(i8* %31, i32 %32, i32 0)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @SPI_OK_SELECT, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i32, i32* @WARNING, align 4
  %39 = call i32 @errmsg(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @ereport(i32 %38, i32 %39)
  %41 = call i32 (...) @SPI_finish()
  %42 = load i32*, i32** @NIL, align 8
  store i32* %42, i32** %4, align 8
  br label %82

43:                                               ; preds = %30
  %44 = load i32*, i32** %13, align 8
  %45 = call i32* @MemoryContextSwitchTo(i32* %44)
  store i32* %45, i32** %14, align 8
  store i64 0, i64* %12, align 8
  br label %46

46:                                               ; preds = %74, %43
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* @SPI_processed, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %46
  store i32* null, i32** %15, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SPI_tuptable, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %16, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %17, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SPI_tuptable, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32* @SPI_copytuple(i32 %59)
  store i32* %60, i32** %15, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = load i32, i32* %16, align 4
  %63 = call %struct.TYPE_5__* @HeapTupleToCitusDistStat(i32* %61, i32 %62)
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %17, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @cstring_to_text(i8* %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %73 = call i32* @lappend(i32* %71, %struct.TYPE_5__* %72)
  store i32* %73, i32** %8, align 8
  br label %74

74:                                               ; preds = %50
  %75 = load i64, i64* %12, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %12, align 8
  br label %46

77:                                               ; preds = %46
  %78 = load i32*, i32** %14, align 8
  %79 = call i32* @MemoryContextSwitchTo(i32* %78)
  %80 = call i32 (...) @SPI_finish()
  %81 = load i32*, i32** %8, align 8
  store i32* %81, i32** %4, align 8
  br label %82

82:                                               ; preds = %77, %37, %24
  %83 = load i32*, i32** %4, align 8
  ret i32* %83
}

declare dso_local i32 @SPI_connect(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @SPI_finish(...) #1

declare dso_local i32 @SPI_execute(i8*, i32, i32) #1

declare dso_local i32* @MemoryContextSwitchTo(i32*) #1

declare dso_local i32* @SPI_copytuple(i32) #1

declare dso_local %struct.TYPE_5__* @HeapTupleToCitusDistStat(i32*, i32) #1

declare dso_local i32 @cstring_to_text(i8*) #1

declare dso_local i32* @lappend(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
