; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_evalConstExpr.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_evalConstExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@WRC_Prune = common dso_local global i32 0, align 4
@WRC_Continue = common dso_local global i32 0, align 4
@EP_xIsSelect = common dso_local global i32 0, align 4
@EP_FixedDest = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_18__*)* @evalConstExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evalConstExpr(%struct.TYPE_15__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ExprList_item*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %6, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %68 [
    i32 129, label %18
    i32 128, label %18
    i32 132, label %20
    i32 130, label %22
    i32 133, label %22
    i32 131, label %22
  ]

18:                                               ; preds = %2, %2
  %19 = load i32, i32* @WRC_Prune, align 4
  store i32 %19, i32* %3, align 4
  br label %99

20:                                               ; preds = %2
  %21 = load i32, i32* @WRC_Continue, align 4
  store i32 %21, i32* %3, align 4
  br label %99

22:                                               ; preds = %2, %2, %2
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %7, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %28 = load i32, i32* @EP_xIsSelect, align 4
  %29 = call i32 @ExprHasProperty(%struct.TYPE_18__* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %35 = icmp ne %struct.TYPE_17__* %34, null
  br i1 %35, label %36, label %67

36:                                               ; preds = %22
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %8, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load %struct.ExprList_item*, %struct.ExprList_item** %41, align 8
  store %struct.ExprList_item* %42, %struct.ExprList_item** %9, align 8
  br label %43

43:                                               ; preds = %61, %36
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = load %struct.ExprList_item*, %struct.ExprList_item** %9, align 8
  %48 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %47, i32 0, i32 0
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = call i32 @ALWAYS(%struct.TYPE_13__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load i32, i32* @EP_FixedDest, align 4
  %54 = load %struct.ExprList_item*, %struct.ExprList_item** %9, align 8
  %55 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %54, i32 0, i32 0
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %53
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %52, %46
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %8, align 4
  %64 = load %struct.ExprList_item*, %struct.ExprList_item** %9, align 8
  %65 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %64, i32 1
  store %struct.ExprList_item* %65, %struct.ExprList_item** %9, align 8
  br label %43

66:                                               ; preds = %43
  br label %67

67:                                               ; preds = %66, %22
  br label %68

68:                                               ; preds = %2, %67
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %70 = call i64 @isAppropriateForFactoring(%struct.TYPE_18__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %68
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  store i32 %76, i32* %10, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @sqlite3ExprCodeTarget(%struct.TYPE_16__* %77, %struct.TYPE_18__* %78, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  store i32 128, i32* %92, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @WRC_Prune, align 4
  store i32 %96, i32* %3, align 4
  br label %99

97:                                               ; preds = %68
  %98 = load i32, i32* @WRC_Continue, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %72, %20, %18
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ALWAYS(%struct.TYPE_13__*) #1

declare dso_local i64 @isAppropriateForFactoring(%struct.TYPE_18__*) #1

declare dso_local i32 @sqlite3ExprCodeTarget(%struct.TYPE_16__*, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
