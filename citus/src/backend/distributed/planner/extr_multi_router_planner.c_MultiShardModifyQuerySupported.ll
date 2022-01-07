; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_router_planner.c_MultiShardModifyQuerySupported.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_router_planner.c_MultiShardModifyQuerySupported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"a join with USING causes an internal naming conflict, use ON instead\00", align 1
@CitusIsVolatileFunction = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"functions used in UPDATE queries on distributed tables must not be VOLATILE\00", align 1
@DISTRIBUTE_BY_NONE = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [131 x i8] c"only reference tables may be queried when targeting a reference table with multi shard UPDATE/DELETE queries with multiple tables \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32*)* @MultiShardModifyQuerySupported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @MultiShardModifyQuerySupported(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.TYPE_6__* @rt_fetch(i32 %11, i32 %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %6, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call signext i8 @PartitionMethod(i32 %19)
  store i8 %20, i8* %8, align 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = call i64 @HasDangerousJoinUsing(i32 %23, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %32 = call i32* @DeferredError(i32 %31, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i32* %32, i32** %5, align 8
  br label %57

33:                                               ; preds = %2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = bitcast %struct.TYPE_7__* %34 to i32*
  %36 = load i32, i32* @CitusIsVolatileFunction, align 4
  %37 = call i64 @FindNodeCheck(i32* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %41 = call i32* @DeferredError(i32 %40, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null)
  store i32* %41, i32** %5, align 8
  br label %56

42:                                               ; preds = %33
  %43 = load i8, i8* %8, align 1
  %44 = sext i8 %43 to i32
  %45 = load i8, i8* @DISTRIBUTE_BY_NONE, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %50 = call i32* @DeferredError(i32 %49, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null)
  store i32* %50, i32** %5, align 8
  br label %55

51:                                               ; preds = %42
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i32* @DeferErrorIfUnsupportedSubqueryPushdown(%struct.TYPE_7__* %52, i32* %53)
  store i32* %54, i32** %5, align 8
  br label %55

55:                                               ; preds = %51, %48
  br label %56

56:                                               ; preds = %55, %39
  br label %57

57:                                               ; preds = %56, %30
  %58 = load i32*, i32** %5, align 8
  ret i32* %58
}

declare dso_local %struct.TYPE_6__* @rt_fetch(i32, i32) #1

declare dso_local signext i8 @PartitionMethod(i32) #1

declare dso_local i64 @HasDangerousJoinUsing(i32, i32*) #1

declare dso_local i32* @DeferredError(i32, i8*, i32*, i32*) #1

declare dso_local i64 @FindNodeCheck(i32*, i32) #1

declare dso_local i32* @DeferErrorIfUnsupportedSubqueryPushdown(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
