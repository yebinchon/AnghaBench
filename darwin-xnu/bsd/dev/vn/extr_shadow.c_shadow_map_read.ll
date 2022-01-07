; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/vn/extr_shadow.c_shadow_map_read.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/vn/extr_shadow.c_shadow_map_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64*, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"shadow_map_read: request (%d, %d) exceeds file size %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @shadow_map_read(%struct.TYPE_5__* %0, i64 %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %5
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = add nsw i64 %22, %23
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %21, %5
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %31, i64 %34)
  %36 = load i64*, i64** %10, align 8
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %29, %21
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @bitmap_get(i32 %40, i64 %41, i64 %42, i64* %11)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @FALSE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load i64, i64* %12, align 8
  %49 = load i64*, i64** %10, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64*, i64** %9, align 8
  store i64 %50, i64* %51, align 8
  br label %90

52:                                               ; preds = %37
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @shadow_map_block_to_band(%struct.TYPE_5__* %56, i64 %57)
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* %13, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = mul nsw i64 %61, %64
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = srem i64 %66, %69
  %71 = add nsw i64 %65, %70
  %72 = load i64*, i64** %9, align 8
  store i64 %71, i64* %72, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @FALSE, align 8
  %77 = call i64 @shadow_map_contiguous(%struct.TYPE_5__* %73, i64 %74, i64 %75, i64 %76)
  store i64 %77, i64* %14, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* %7, align 8
  %80 = sub nsw i64 %78, %79
  %81 = load i64*, i64** %10, align 8
  store i64 %80, i64* %81, align 8
  %82 = load i64*, i64** %10, align 8
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %12, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %52
  %87 = load i64, i64* %12, align 8
  %88 = load i64*, i64** %10, align 8
  store i64 %87, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %52
  br label %90

90:                                               ; preds = %89, %47
  %91 = load i64, i64* %11, align 8
  ret i64 %91
}

declare dso_local i32 @printf(i8*, i64, i64, i64) #1

declare dso_local i64 @bitmap_get(i32, i64, i64, i64*) #1

declare dso_local i64 @shadow_map_block_to_band(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @shadow_map_contiguous(%struct.TYPE_5__*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
