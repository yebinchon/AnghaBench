; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_relation_restriction_equivalence.c_ContainsUnionSubquery.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_relation_restriction_equivalence.c_ContainsUnionSubquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i64, i32* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i64 }

@NIL = common dso_local global i32* null, align 8
@RTE_SUBQUERY = common dso_local global i64 0, align 8
@SETOP_UNION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ContainsUnionSubquery(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** @NIL, align 8
  store i32* %18, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %10, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = call i32 @ExtractRangeTableIndexWalker(i32* %22, i32** %6)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @list_length(i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

29:                                               ; preds = %1
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %67

33:                                               ; preds = %29
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @linitial_int(i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = call %struct.TYPE_7__* @rt_fetch(i32 %36, i32* %37)
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %9, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RTE_SUBQUERY, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %67

45:                                               ; preds = %33
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %10, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %5, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %45
  %55 = load i32*, i32** %5, align 8
  %56 = bitcast i32* %55 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %11, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SETOP_UNION, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %67

63:                                               ; preds = %54
  store i32 1, i32* %2, align 4
  br label %67

64:                                               ; preds = %45
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %66 = call i32 @ContainsUnionSubquery(%struct.TYPE_8__* %65)
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %64, %63, %62, %44, %32, %28
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @ExtractRangeTableIndexWalker(i32*, i32**) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32 @linitial_int(i32*) #1

declare dso_local %struct.TYPE_7__* @rt_fetch(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
