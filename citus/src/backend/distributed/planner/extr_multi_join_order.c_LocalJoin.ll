; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_join_order.c_LocalJoin.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_join_order.c_LocalJoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8, %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32, i32 }

@LOCAL_PARTITION_JOIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*, i32)* @LocalJoin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @LocalJoin(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32* @PartitionColumn(i32 %26, i32 %27)
  store i32* %28, i32** %13, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %14, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call signext i8 @PartitionMethod(i32 %32)
  store i8 %33, i8* %15, align 1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 8
  store i8 %36, i8* %16, align 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %41 = icmp eq %struct.TYPE_9__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %75

43:                                               ; preds = %4
  %44 = load i8, i8* %16, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* %15, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %75

50:                                               ; preds = %43
  %51 = load i32*, i32** %14, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @JoinOnColumns(i32* %51, i32* %52, i32* %53)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %75

58:                                               ; preds = %50
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @CoPartitionedTables(i32 %61, i32 %62)
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %19, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %75

67:                                               ; preds = %58
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = load i32, i32* @LOCAL_PARTITION_JOIN, align 4
  %70 = load i32*, i32** %14, align 8
  %71 = load i8, i8* %16, align 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %73 = call %struct.TYPE_10__* @MakeJoinOrderNode(%struct.TYPE_9__* %68, i32 %69, i32* %70, i8 signext %71, %struct.TYPE_9__* %72)
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %10, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %5, align 8
  br label %75

75:                                               ; preds = %67, %66, %57, %49, %42
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %76
}

declare dso_local i32* @PartitionColumn(i32, i32) #1

declare dso_local signext i8 @PartitionMethod(i32) #1

declare dso_local i32 @JoinOnColumns(i32*, i32*, i32*) #1

declare dso_local i32 @CoPartitionedTables(i32, i32) #1

declare dso_local %struct.TYPE_10__* @MakeJoinOrderNode(%struct.TYPE_9__*, i32, i32*, i8 signext, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
