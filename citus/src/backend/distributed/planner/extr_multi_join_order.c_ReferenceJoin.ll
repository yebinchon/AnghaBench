; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_join_order.c_ReferenceJoin.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_join_order.c_ReferenceJoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@JOIN_INNER = common dso_local global i64 0, align 8
@JOIN_LEFT = common dso_local global i64 0, align 8
@JOIN_ANTI = common dso_local global i64 0, align 8
@DISTRIBUTE_BY_NONE = common dso_local global i8 0, align 1
@JOIN_RIGHT = common dso_local global i64 0, align 8
@JOIN_FULL = common dso_local global i64 0, align 8
@REFERENCE_JOIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_11__*, %struct.TYPE_10__*, i32*, i64)* @ReferenceJoin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @ReferenceJoin(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @list_length(i32* %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call signext i8 @PartitionMethod(i32 %19)
  store i8 %20, i8* %12, align 1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call signext i8 @PartitionMethod(i32 %25)
  store i8 %26, i8* %13, align 1
  store i32 0, i32* %14, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %97

30:                                               ; preds = %4
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @JOIN_INNER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @JOIN_LEFT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @JOIN_ANTI, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38, %34, %30
  %43 = load i8, i8* %12, align 1
  %44 = sext i8 %43 to i32
  %45 = load i8, i8* @DISTRIBUTE_BY_NONE, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 1, i32* %14, align 4
  br label %79

49:                                               ; preds = %42, %38
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @JOIN_RIGHT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i8, i8* %13, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* @DISTRIBUTE_BY_NONE, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 1, i32* %14, align 4
  br label %78

60:                                               ; preds = %53, %49
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* @JOIN_FULL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load i8, i8* %13, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8, i8* @DISTRIBUTE_BY_NONE, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i8, i8* %12, align 1
  %72 = sext i8 %71 to i32
  %73 = load i8, i8* @DISTRIBUTE_BY_NONE, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 1, i32* %14, align 4
  br label %77

77:                                               ; preds = %76, %70, %64, %60
  br label %78

78:                                               ; preds = %77, %59
  br label %79

79:                                               ; preds = %78, %48
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %84 = load i32, i32* @REFERENCE_JOIN, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call %struct.TYPE_11__* @MakeJoinOrderNode(%struct.TYPE_10__* %83, i32 %84, i32 %87, i32 %90, i32 %93)
  store %struct.TYPE_11__* %94, %struct.TYPE_11__** %10, align 8
  br label %95

95:                                               ; preds = %82, %79
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %96, %struct.TYPE_11__** %5, align 8
  br label %97

97:                                               ; preds = %95, %29
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %98
}

declare dso_local i32 @list_length(i32*) #1

declare dso_local signext i8 @PartitionMethod(i32) #1

declare dso_local %struct.TYPE_11__* @MakeJoinOrderNode(%struct.TYPE_10__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
