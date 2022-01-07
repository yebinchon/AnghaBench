; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtSupertableQuery.c_doSortIntersect.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtSupertableQuery.c_doSortIntersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i64 }

@tabObjPointerComparator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_6__*, %struct.TYPE_6__*)* @doSortIntersect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @doSortIntersect(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i64 8, i64* %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* @tabObjPointerComparator, align 4
  %17 = call i32 @qsort(i64* %11, i64 %14, i64 %15, i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @tabObjPointerComparator, align 4
  %26 = call i32 @qsort(i64* %20, i64 %23, i64 %24, i32 %25)
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %92, %2
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br label %39

39:                                               ; preds = %33, %27
  %40 = phi i1 [ false, %27 ], [ %38, %33 ]
  br i1 %40, label %41, label %93

41:                                               ; preds = %39
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %47, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %41
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %7, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %6, align 8
  %63 = getelementptr inbounds i64, i64* %60, i64 %61
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %8, align 8
  %70 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64 %64, i64* %70, align 8
  br label %92

71:                                               ; preds = %41
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %77, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %71
  %86 = load i64, i64* %6, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %6, align 8
  br label %91

88:                                               ; preds = %71
  %89 = load i64, i64* %7, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %7, align 8
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %55
  br label %27

93:                                               ; preds = %39
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = call i32 @tQueryResultClean(%struct.TYPE_6__* %94)
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %8, align 8
  %105 = sub i64 %103, %104
  %106 = mul i64 8, %105
  %107 = trunc i64 %106 to i32
  %108 = call i32 @memset(i64* %100, i32 0, i32 %107)
  %109 = load i64, i64* %8, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %112
}

declare dso_local i32 @qsort(i64*, i64, i64, i32) #1

declare dso_local i32 @tQueryResultClean(%struct.TYPE_6__*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
