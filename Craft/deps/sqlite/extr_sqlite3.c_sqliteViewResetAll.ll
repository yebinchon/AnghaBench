; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqliteViewResetAll.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqliteViewResetAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i64 }

@DB_UnresetViews = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32)* @sqliteViewResetAll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sqliteViewResetAll(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @sqlite3SchemaMutexHeld(%struct.TYPE_14__* %7, i32 %8, i32 0)
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @DB_UnresetViews, align 4
  %14 = call i32 @DbHasProperty(%struct.TYPE_14__* %11, i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %55

17:                                               ; preds = %2
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = call i32* @sqliteHashFirst(i32* %26)
  store i32* %27, i32** %5, align 8
  br label %28

28:                                               ; preds = %47, %17
  %29 = load i32*, i32** %5, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = load i32*, i32** %5, align 8
  %33 = call %struct.TYPE_15__* @sqliteHashData(i32* %32)
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %6, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = call i32 @sqliteDeleteColumnNames(%struct.TYPE_14__* %39, %struct.TYPE_15__* %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %38, %31
  br label %47

47:                                               ; preds = %46
  %48 = load i32*, i32** %5, align 8
  %49 = call i32* @sqliteHashNext(i32* %48)
  store i32* %49, i32** %5, align 8
  br label %28

50:                                               ; preds = %28
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @DB_UnresetViews, align 4
  %54 = call i32 @DbClearProperty(%struct.TYPE_14__* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %16
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3SchemaMutexHeld(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @DbHasProperty(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32* @sqliteHashFirst(i32*) #1

declare dso_local %struct.TYPE_15__* @sqliteHashData(i32*) #1

declare dso_local i32 @sqliteDeleteColumnNames(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32* @sqliteHashNext(i32*) #1

declare dso_local i32 @DbClearProperty(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
