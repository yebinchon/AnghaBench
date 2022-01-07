; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_placement_access.c_PlacementAccessListForTask.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_placement_access.c_PlacementAccessListForTask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_7__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@PLACEMENT_ACCESS_SELECT = common dso_local global i64 0, align 8
@MODIFY_TASK = common dso_local global i64 0, align 8
@PLACEMENT_ACCESS_DML = common dso_local global i64 0, align 8
@DDL_TASK = common dso_local global i64 0, align 8
@VACUUM_ANALYZE_TASK = common dso_local global i64 0, align 8
@PLACEMENT_ACCESS_DDL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PlacementAccessListForTask(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %12 = load i32*, i32** @NIL, align 8
  store i32* %12, i32** %5, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load i64, i64* @PLACEMENT_ACCESS_SELECT, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MODIFY_TASK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  %23 = load i64, i64* @PLACEMENT_ACCESS_DML, align 8
  store i64 %23, i64* %8, align 8
  br label %46

24:                                               ; preds = %2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DDL_TASK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VACUUM_ANALYZE_TASK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30, %24
  store i32 1, i32* %7, align 4
  %37 = load i64, i64* @PLACEMENT_ACCESS_DDL, align 8
  store i64 %37, i64* %8, align 8
  br label %45

38:                                               ; preds = %30
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** @NIL, align 8
  %41 = icmp eq i32* %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  store i32 1, i32* %7, align 4
  %43 = load i64, i64* @PLACEMENT_ACCESS_SELECT, align 8
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %42, %38
  br label %45

45:                                               ; preds = %44, %36
  br label %46

46:                                               ; preds = %45, %22
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32* @CreatePlacementAccess(%struct.TYPE_7__* %50, i64 %51)
  store i32* %52, i32** %9, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i32* @lappend(i32* %53, i32* %54)
  store i32* %55, i32** %5, align 8
  br label %56

56:                                               ; preds = %49, %46
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @PLACEMENT_ACCESS_DDL, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = call i32* @BuildPlacementDDLList(i32 %63, i32* %64)
  store i32* %65, i32** %10, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = call i32* @list_concat(i32* %66, i32* %67)
  store i32* %68, i32** %5, align 8
  br label %78

69:                                               ; preds = %56
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = call i32* @BuildPlacementSelectList(i32 %72, i32* %73)
  store i32* %74, i32** %11, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32* @list_concat(i32* %75, i32* %76)
  store i32* %77, i32** %5, align 8
  br label %78

78:                                               ; preds = %69, %60
  %79 = load i32*, i32** %5, align 8
  ret i32* %79
}

declare dso_local i32* @CreatePlacementAccess(%struct.TYPE_7__*, i64) #1

declare dso_local i32* @lappend(i32*, i32*) #1

declare dso_local i32* @BuildPlacementDDLList(i32, i32*) #1

declare dso_local i32* @list_concat(i32*, i32*) #1

declare dso_local i32* @BuildPlacementSelectList(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
