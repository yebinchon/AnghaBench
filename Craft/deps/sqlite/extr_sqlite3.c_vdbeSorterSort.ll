; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_vdbeSorterSort.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_vdbeSorterSort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_12__* }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @vdbeSorterSort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdbeSorterSort(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__**, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %7, align 8
  %12 = call i64 @sqlite3MallocZero(i32 512)
  %13 = inttoptr i64 %12 to %struct.TYPE_12__**
  store %struct.TYPE_12__** %13, %struct.TYPE_12__*** %5, align 8
  %14 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %15 = icmp ne %struct.TYPE_12__** %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %17, i32* %2, align 4
  br label %84

18:                                               ; preds = %1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %6, align 8
  br label %22

22:                                               ; preds = %54, %18
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = icmp ne %struct.TYPE_12__* %23, null
  br i1 %24, label %25, label %61

25:                                               ; preds = %22
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %8, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %30, align 8
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %51, %25
  %32 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %32, i64 %34
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = icmp ne %struct.TYPE_12__* %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %31
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %41, i64 %43
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = call i32 @vdbeSorterMerge(%struct.TYPE_11__* %39, %struct.TYPE_12__* %40, %struct.TYPE_12__* %45, %struct.TYPE_12__** %6)
  %47 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %47, i64 %49
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %50, align 8
  br label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %31

54:                                               ; preds = %31
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %56, i64 %58
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %59, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %6, align 8
  br label %22

61:                                               ; preds = %22
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %74, %61
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 64
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %68, i64 %70
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = call i32 @vdbeSorterMerge(%struct.TYPE_11__* %66, %struct.TYPE_12__* %67, %struct.TYPE_12__* %72, %struct.TYPE_12__** %6)
  br label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %62

77:                                               ; preds = %62
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %80, align 8
  %81 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %82 = call i32 @sqlite3_free(%struct.TYPE_12__** %81)
  %83 = load i32, i32* @SQLITE_OK, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %77, %16
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @sqlite3MallocZero(i32) #1

declare dso_local i32 @vdbeSorterMerge(%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__**) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_12__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
