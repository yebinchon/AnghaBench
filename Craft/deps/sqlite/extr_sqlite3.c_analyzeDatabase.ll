; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_analyzeDatabase.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_analyzeDatabase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32)* @analyzeDatabase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyzeDatabase(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %5, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %6, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @sqlite3BeginWriteOperation(%struct.TYPE_14__* %22, i32 0, i32 %23)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 3
  store i32 %31, i32* %29, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @openStatTable(%struct.TYPE_14__* %32, i32 %33, i32 %34, i32 0, i32 0)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @sqlite3SchemaMutexHeld(%struct.TYPE_12__* %40, i32 %41, i32 0)
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = call i32* @sqliteHashFirst(i32* %45)
  store i32* %46, i32** %7, align 8
  br label %47

47:                                               ; preds = %59, %2
  %48 = load i32*, i32** %7, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @sqliteHashData(i32* %51)
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %10, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @analyzeOneTable(%struct.TYPE_14__* %54, i32* %55, i32 0, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %50
  %60 = load i32*, i32** %7, align 8
  %61 = call i32* @sqliteHashNext(i32* %60)
  store i32* %61, i32** %7, align 8
  br label %47

62:                                               ; preds = %47
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @loadAnalysis(%struct.TYPE_14__* %63, i32 %64)
  ret void
}

declare dso_local i32 @sqlite3BeginWriteOperation(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @openStatTable(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3SchemaMutexHeld(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32* @sqliteHashFirst(i32*) #1

declare dso_local i64 @sqliteHashData(i32*) #1

declare dso_local i32 @analyzeOneTable(%struct.TYPE_14__*, i32*, i32, i32, i32) #1

declare dso_local i32* @sqliteHashNext(i32*) #1

declare dso_local i32 @loadAnalysis(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
