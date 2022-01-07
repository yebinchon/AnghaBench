; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_autoIncBegin.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_autoIncBegin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@TF_Autoincrement = common dso_local global i32 0, align 4
@DBFLAG_Vacuum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, %struct.TYPE_10__*)* @autoIncBegin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autoIncBegin(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TF_Autoincrement, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %91

17:                                               ; preds = %3
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DBFLAG_Vacuum, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %91

26:                                               ; preds = %17
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = call %struct.TYPE_11__* @sqlite3ParseToplevel(%struct.TYPE_11__* %27)
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %9, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %10, align 8
  br label %32

32:                                               ; preds = %43, %26
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %34 = icmp ne %struct.TYPE_12__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = icmp ne %struct.TYPE_10__* %38, %39
  br label %41

41:                                               ; preds = %35, %32
  %42 = phi i1 [ false, %32 ], [ %40, %35 ]
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %10, align 8
  br label %32

47:                                               ; preds = %41
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %49 = icmp eq %struct.TYPE_12__* %48, null
  br i1 %49, label %50, label %87

50:                                               ; preds = %47
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = call %struct.TYPE_12__* @sqlite3DbMallocRawNN(%struct.TYPE_13__* %53, i32 24)
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %10, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %56 = icmp eq %struct.TYPE_12__* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %93

58:                                               ; preds = %50
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 3
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %63, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %69, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 2
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %58, %47
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %87, %17, %3
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %57
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.TYPE_11__* @sqlite3ParseToplevel(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @sqlite3DbMallocRawNN(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
