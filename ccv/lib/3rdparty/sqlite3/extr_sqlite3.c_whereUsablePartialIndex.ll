; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_whereUsablePartialIndex.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_whereUsablePartialIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_18__*, %struct.TYPE_18__* }

@TK_AND = common dso_local global i64 0, align 8
@SQLITE_EnableQPSG = common dso_local global i32 0, align 4
@EP_FromJoin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_16__*, %struct.TYPE_18__*)* @whereUsablePartialIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whereUsablePartialIndex(i32 %0, %struct.TYPE_16__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %10, align 8
  br label %17

17:                                               ; preds = %32, %3
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TK_AND, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %29 = call i32 @whereUsablePartialIndex(i32 %24, %struct.TYPE_16__* %25, %struct.TYPE_18__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %85

32:                                               ; preds = %23
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %7, align 8
  br label %17

36:                                               ; preds = %17
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SQLITE_EnableQPSG, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %10, align 8
  br label %46

46:                                               ; preds = %45, %36
  store i32 0, i32* %8, align 4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  store %struct.TYPE_15__* %49, %struct.TYPE_15__** %9, align 8
  br label %50

50:                                               ; preds = %79, %46
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %84

56:                                               ; preds = %50
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %58, align 8
  store %struct.TYPE_18__* %59, %struct.TYPE_18__** %11, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %61 = load i32, i32* @EP_FromJoin, align 4
  %62 = call i32 @ExprHasProperty(%struct.TYPE_18__* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %64, %56
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i64 @sqlite3ExprImpliesExpr(%struct.TYPE_17__* %71, %struct.TYPE_18__* %72, %struct.TYPE_18__* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 1, i32* %4, align 4
  br label %85

78:                                               ; preds = %70, %64
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 1
  store %struct.TYPE_15__* %83, %struct.TYPE_15__** %9, align 8
  br label %50

84:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %77, %31
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @ExprHasProperty(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @sqlite3ExprImpliesExpr(%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
