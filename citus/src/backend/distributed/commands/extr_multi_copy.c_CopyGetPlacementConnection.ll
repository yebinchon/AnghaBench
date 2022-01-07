; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_CopyGetPlacementConnection.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_CopyGetPlacementConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }

@FOR_DML = common dso_local global i32 0, align 4
@PLACEMENT_ACCESS_DML = common dso_local global i32 0, align 4
@DISTRIBUTE_BY_HASH = common dso_local global i64 0, align 8
@MultiShardConnectionType = common dso_local global i64 0, align 8
@SEQUENTIAL_CONNECTION = common dso_local global i64 0, align 8
@CONNECTION_PER_PLACEMENT = common dso_local global i32 0, align 4
@CONNECTION_OK = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_13__*, i32)* @CopyGetPlacementConnection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @CopyGetPlacementConnection(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  %11 = load i32, i32* @FOR_DML, align 4
  store i32 %11, i32* %7, align 4
  %12 = call i8* (...) @CurrentUserName()
  store i8* %12, i8** %8, align 8
  store i32* null, i32** %9, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = load i32, i32* @PLACEMENT_ACCESS_DML, align 4
  %15 = call i32* @CreatePlacementAccess(%struct.TYPE_13__* %13, i32 %14)
  store i32* %15, i32** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @list_make1(i32* %17)
  %19 = call %struct.TYPE_14__* @GetConnectionIfPlacementAccessedInXact(i32 %16, i32 %18, i32* null)
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %6, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = icmp ne %struct.TYPE_14__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %3, align 8
  br label %71

24:                                               ; preds = %2
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DISTRIBUTE_BY_HASH, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load i64, i64* @MultiShardConnectionType, align 8
  %32 = load i64, i64* @SEQUENTIAL_CONNECTION, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @CONNECTION_PER_PLACEMENT, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %30, %24
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call %struct.TYPE_14__* @GetPlacementConnection(i32 %39, %struct.TYPE_13__* %40, i8* %41)
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %6, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @PQstatus(i32 %45)
  %47 = load i64, i64* @CONNECTION_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %38
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = load i32, i32* @ERROR, align 4
  %55 = call i32 @ReportConnectionError(%struct.TYPE_14__* %53, i32 %54)
  br label %59

56:                                               ; preds = %49
  store i32 1, i32* %10, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = call i32 @HandleRemoteTransactionConnectionError(%struct.TYPE_14__* %57, i32 1)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %71

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %38
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = call i32 @MarkRemoteTransactionCritical(%struct.TYPE_14__* %61)
  %63 = load i64, i64* @MultiShardConnectionType, align 8
  %64 = load i64, i64* @SEQUENTIAL_CONNECTION, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = call i32 @ClaimConnectionExclusively(%struct.TYPE_14__* %67)
  br label %69

69:                                               ; preds = %66, %60
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %70, %struct.TYPE_14__** %3, align 8
  br label %71

71:                                               ; preds = %69, %56, %22
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %72
}

declare dso_local i8* @CurrentUserName(...) #1

declare dso_local i32* @CreatePlacementAccess(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_14__* @GetConnectionIfPlacementAccessedInXact(i32, i32, i32*) #1

declare dso_local i32 @list_make1(i32*) #1

declare dso_local %struct.TYPE_14__* @GetPlacementConnection(i32, %struct.TYPE_13__*, i8*) #1

declare dso_local i64 @PQstatus(i32) #1

declare dso_local i32 @ReportConnectionError(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @HandleRemoteTransactionConnectionError(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @MarkRemoteTransactionCritical(%struct.TYPE_14__*) #1

declare dso_local i32 @ClaimConnectionExclusively(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
