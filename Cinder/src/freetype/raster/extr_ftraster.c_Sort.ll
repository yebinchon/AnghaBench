; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/raster/extr_ftraster.c_Sort.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/raster/extr_ftraster.c_Sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64*, i32, %struct.TYPE_4__*, i32 }

@Flow_Up = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__**)* @Sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Sort(%struct.TYPE_4__** %0) #0 {
  %2 = alloca %struct.TYPE_4__**, align 8
  %3 = alloca %struct.TYPE_4__**, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %2, align 8
  %6 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %4, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %38

11:                                               ; preds = %8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @Flow_Up, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 -1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = sext i32 %25 to i64
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64* %30, i64** %27, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %4, align 8
  br label %8

38:                                               ; preds = %8
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  store %struct.TYPE_4__** %39, %struct.TYPE_4__*** %3, align 8
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %4, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %87

45:                                               ; preds = %38
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %5, align 8
  br label %49

49:                                               ; preds = %83, %45
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = icmp ne %struct.TYPE_4__* %50, null
  br i1 %51, label %52, label %87

52:                                               ; preds = %49
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sle i64 %55, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %52
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  store %struct.TYPE_4__** %62, %struct.TYPE_4__*** %3, align 8
  %63 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %4, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = icmp ne %struct.TYPE_4__* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %87

68:                                               ; preds = %60
  br label %83

69:                                               ; preds = %52
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** %71, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** %76, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  store %struct.TYPE_4__* %77, %struct.TYPE_4__** %79, align 8
  %80 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  store %struct.TYPE_4__** %80, %struct.TYPE_4__*** %3, align 8
  %81 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  store %struct.TYPE_4__* %82, %struct.TYPE_4__** %4, align 8
  br label %83

83:                                               ; preds = %69, %68
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  store %struct.TYPE_4__* %86, %struct.TYPE_4__** %5, align 8
  br label %49

87:                                               ; preds = %44, %67, %49
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
