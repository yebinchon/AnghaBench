; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_explain.c_CitusExplainScan.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_explain.c_CitusExplainScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ExplainState = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@ExplainDistributedQueries = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"explain statements for distributed queries \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"are not enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Distributed Query\00", align 1
@NIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CitusExplainScan(i32* %0, i32* %1, %struct.ExplainState* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ExplainState*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ExplainState* %2, %struct.ExplainState** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %8, align 8
  %14 = load i32, i32* @ExplainDistributedQueries, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %3
  %17 = load %struct.ExplainState*, %struct.ExplainState** %6, align 8
  %18 = getelementptr inbounds %struct.ExplainState, %struct.ExplainState* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ExplainState*, %struct.ExplainState** %6, align 8
  %21 = getelementptr inbounds %struct.ExplainState, %struct.ExplainState* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 2
  %24 = call i32 @appendStringInfoSpaces(i32 %19, i32 %23)
  %25 = load %struct.ExplainState*, %struct.ExplainState** %6, align 8
  %26 = getelementptr inbounds %struct.ExplainState, %struct.ExplainState* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @appendStringInfo(i32 %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.ExplainState*, %struct.ExplainState** %6, align 8
  %30 = getelementptr inbounds %struct.ExplainState, %struct.ExplainState* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @appendStringInfo(i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %53

33:                                               ; preds = %3
  %34 = load %struct.ExplainState*, %struct.ExplainState** %6, align 8
  %35 = call i32 @ExplainOpenGroup(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 1, %struct.ExplainState* %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NIL, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = load %struct.ExplainState*, %struct.ExplainState** %6, align 8
  %44 = call i32 @ExplainSubPlans(%struct.TYPE_4__* %42, %struct.ExplainState* %43)
  br label %45

45:                                               ; preds = %41, %33
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ExplainState*, %struct.ExplainState** %6, align 8
  %50 = call i32 @ExplainJob(i32 %48, %struct.ExplainState* %49)
  %51 = load %struct.ExplainState*, %struct.ExplainState** %6, align 8
  %52 = call i32 @ExplainCloseGroup(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 1, %struct.ExplainState* %51)
  br label %53

53:                                               ; preds = %45, %16
  ret void
}

declare dso_local i32 @appendStringInfoSpaces(i32, i32) #1

declare dso_local i32 @appendStringInfo(i32, i8*) #1

declare dso_local i32 @ExplainOpenGroup(i8*, i8*, i32, %struct.ExplainState*) #1

declare dso_local i32 @ExplainSubPlans(%struct.TYPE_4__*, %struct.ExplainState*) #1

declare dso_local i32 @ExplainJob(i32, %struct.ExplainState*) #1

declare dso_local i32 @ExplainCloseGroup(i8*, i8*, i32, %struct.ExplainState*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
