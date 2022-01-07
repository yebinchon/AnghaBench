; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_substExpr.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_substExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i64, %struct.TYPE_14__, %struct.TYPE_16__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@TK_COLUMN = common dso_local global i64 0, align 8
@TK_NULL = common dso_local global i64 0, align 8
@EP_xIsSelect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (i32*, %struct.TYPE_16__*, i32, %struct.TYPE_15__*)* @substExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @substExpr(i32* %0, %struct.TYPE_16__* %1, i32 %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %12 = icmp eq %struct.TYPE_16__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %5, align 8
  br label %123

14:                                               ; preds = %4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TK_COLUMN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %79

20:                                               ; preds = %14
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %79

26:                                               ; preds = %20
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i64, i64* @TK_NULL, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %78

35:                                               ; preds = %26
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %37 = icmp ne %struct.TYPE_15__* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br label %46

46:                                               ; preds = %38, %35
  %47 = phi i1 [ false, %35 ], [ %45, %38 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = icmp eq %struct.TYPE_16__* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = icmp eq %struct.TYPE_16__* %57, null
  br label %59

59:                                               ; preds = %54, %46
  %60 = phi i1 [ false, %46 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.TYPE_16__* @sqlite3ExprDup(i32* %63, i32 %72, i32 0)
  store %struct.TYPE_16__* %73, %struct.TYPE_16__** %10, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %76 = call i32 @sqlite3ExprDelete(i32* %74, %struct.TYPE_16__* %75)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %77, %struct.TYPE_16__** %7, align 8
  br label %78

78:                                               ; preds = %59, %31
  br label %121

79:                                               ; preds = %20, %14
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %86 = call %struct.TYPE_16__* @substExpr(i32* %80, %struct.TYPE_16__* %83, i32 %84, %struct.TYPE_15__* %85)
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 5
  store %struct.TYPE_16__* %86, %struct.TYPE_16__** %88, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %95 = call %struct.TYPE_16__* @substExpr(i32* %89, %struct.TYPE_16__* %92, i32 %93, %struct.TYPE_15__* %94)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 4
  store %struct.TYPE_16__* %95, %struct.TYPE_16__** %97, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %99 = load i32, i32* @EP_xIsSelect, align 4
  %100 = call i64 @ExprHasProperty(%struct.TYPE_16__* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %79
  %103 = load i32*, i32** %6, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %110 = call i32 @substSelect(i32* %103, i32 %107, i32 %108, %struct.TYPE_15__* %109)
  br label %120

111:                                              ; preds = %79
  %112 = load i32*, i32** %6, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %119 = call i32 @substExprList(i32* %112, i32 %116, i32 %117, %struct.TYPE_15__* %118)
  br label %120

120:                                              ; preds = %111, %102
  br label %121

121:                                              ; preds = %120, %78
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %122, %struct.TYPE_16__** %5, align 8
  br label %123

123:                                              ; preds = %121, %13
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  ret %struct.TYPE_16__* %124
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_16__* @sqlite3ExprDup(i32*, i32, i32) #1

declare dso_local i32 @sqlite3ExprDelete(i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @ExprHasProperty(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @substSelect(i32*, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @substExprList(i32*, i32, i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
