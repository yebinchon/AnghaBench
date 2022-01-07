; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_deparse_shard_query.c_UpdateTaskQueryString.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_deparse_shard_query.c_UpdateTaskQueryString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64, i32* }
%struct.TYPE_13__ = type { i32, i32*, i32, i32* }
%struct.TYPE_14__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@RTE_VALUES = common dso_local global i64 0, align 8
@CMD_INSERT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32, %struct.TYPE_15__*, %struct.TYPE_13__*)* @UpdateTaskQueryString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateTaskQueryString(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_15__* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %8, align 8
  %12 = call %struct.TYPE_14__* (...) @makeStringInfo()
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %9, align 8
  %13 = load i32*, i32** @NIL, align 8
  store i32* %13, i32** %10, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %15 = icmp ne %struct.TYPE_15__* %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RTE_VALUES, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %10, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  br label %38

38:                                               ; preds = %16, %4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CMD_INSERT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %51 = call i32 @deparse_shard_query(%struct.TYPE_16__* %45, i32 %46, i32 %49, %struct.TYPE_14__* %50)
  br label %63

52:                                               ; preds = %38
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %11, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = bitcast %struct.TYPE_16__* %56 to i32*
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @UpdateRelationToShardNames(i32* %57, i32* %58)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %62 = call i32 @pg_get_query_def(%struct.TYPE_16__* %60, %struct.TYPE_14__* %61)
  br label %63

63:                                               ; preds = %52, %44
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %65 = icmp ne %struct.TYPE_15__* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32*, i32** %10, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  store i32* %67, i32** %69, align 8
  br label %70

70:                                               ; preds = %66, %63
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  ret void
}

declare dso_local %struct.TYPE_14__* @makeStringInfo(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @deparse_shard_query(%struct.TYPE_16__*, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @UpdateRelationToShardNames(i32*, i32*) #1

declare dso_local i32 @pg_get_query_def(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
