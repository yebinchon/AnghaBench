; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_whereInfoFree.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_whereInfoFree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__*, i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }

@WHERE_TEMP_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*)* @whereInfoFree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @whereInfoFree(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = call i64 @ALWAYS(%struct.TYPE_13__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %91

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %80, %11
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %83

18:                                               ; preds = %12
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %6, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = icmp ne %struct.TYPE_13__* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %18
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @sqlite3_free(i32 %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = call i32 @sqlite3DbFree(i32* %40, %struct.TYPE_13__* %41)
  br label %43

43:                                               ; preds = %39, %18
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @WHERE_TEMP_INDEX, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %43
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  store %struct.TYPE_13__* %66, %struct.TYPE_13__** %7, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = icmp ne %struct.TYPE_13__* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %56
  %70 = load i32*, i32** %3, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = call i32 @sqlite3DbFree(i32* %70, %struct.TYPE_13__* %73)
  %75 = load i32*, i32** %3, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %77 = call i32 @sqlite3DbFree(i32* %75, %struct.TYPE_13__* %76)
  br label %78

78:                                               ; preds = %69, %56
  br label %79

79:                                               ; preds = %78, %43
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %12

83:                                               ; preds = %12
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @whereClauseClear(i32 %86)
  %88 = load i32*, i32** %3, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = call i32 @sqlite3DbFree(i32* %88, %struct.TYPE_13__* %89)
  br label %91

91:                                               ; preds = %83, %2
  ret void
}

declare dso_local i64 @ALWAYS(%struct.TYPE_13__*) #1

declare dso_local i32 @sqlite3_free(i32) #1

declare dso_local i32 @sqlite3DbFree(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @whereClauseClear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
