; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_metadata_utility.c_DistributedTableSizeOnWorker.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_metadata_utility.c_DistributedTableSizeOnWorker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i8* }

@NIL = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CONNECTION_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"cannot get the size because of a connection error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i8*)* @DistributedTableSizeOnWorker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DistributedTableSizeOnWorker(%struct.TYPE_6__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %9, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %26 = load i32*, i32** @NIL, align 8
  store i32* %26, i32** %17, align 8
  store i32 1, i32* %18, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32* @ShardIntervalsOnWorkerGroup(%struct.TYPE_6__* %27, i32 %28)
  store i32* %29, i32** %19, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32*, i32** %19, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call %struct.TYPE_7__* @GenerateSizeQueryOnMultiplePlacements(i32 %30, i32* %31, i8* %32)
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %7, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32* @GetNodeConnection(i32 %34, i8* %35, i32 %36)
  store i32* %37, i32** %13, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @ExecuteOptionalRemoteCommand(i32* %38, i8* %41, i32** %15)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %3
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i32, i32* @ERRCODE_CONNECTION_FAILURE, align 4
  %48 = call i32 @errcode(i32 %47)
  %49 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 @ereport(i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %3
  %52 = load i32*, i32** %15, align 8
  %53 = call i32* @ReadFirstColumnAsText(i32* %52)
  store i32* %53, i32** %17, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = call i64 @linitial(i32* %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %8, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %11, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @atol(i8* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32*, i32** %15, align 8
  %63 = call i32 @PQclear(i32* %62)
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %18, align 4
  %66 = call i32 @ClearResults(i32* %64, i32 %65)
  %67 = load i32, i32* %12, align 4
  ret i32 %67
}

declare dso_local i32* @ShardIntervalsOnWorkerGroup(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.TYPE_7__* @GenerateSizeQueryOnMultiplePlacements(i32, i32*, i8*) #1

declare dso_local i32* @GetNodeConnection(i32, i8*, i32) #1

declare dso_local i32 @ExecuteOptionalRemoteCommand(i32*, i8*, i32**) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32* @ReadFirstColumnAsText(i32*) #1

declare dso_local i64 @linitial(i32*) #1

declare dso_local i32 @atol(i8*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @ClearResults(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
