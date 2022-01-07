; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss4.c_mss4_update_dc_cache.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss4.c_mss4_update_dc_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64**, i64** }

@TOP = common dso_local global i64 0, align 8
@LEFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @mss4_update_dc_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mss4_update_dc_cache(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64**, i64*** %7, align 8
  %9 = getelementptr inbounds i64*, i64** %8, i64 0
  %10 = load i64*, i64** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = mul nsw i32 %11, 2
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %10, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64**, i64*** %18, align 8
  %20 = getelementptr inbounds i64*, i64** %19, i64 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @TOP, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  store i64 %16, i64* %23, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64**, i64*** %25, align 8
  %27 = getelementptr inbounds i64*, i64** %26, i64 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @LEFT, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64**, i64*** %32, align 8
  %34 = getelementptr inbounds i64*, i64** %33, i64 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @TOP, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64**, i64*** %39, align 8
  %41 = getelementptr inbounds i64*, i64** %40, i64 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @LEFT, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  store i64 0, i64* %44, align 8
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %60, %2
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64**, i64*** %50, align 8
  %52 = getelementptr inbounds i64*, i64** %51, i64 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = mul nsw i32 %54, 2
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %53, i64 %58
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %48
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %45

63:                                               ; preds = %45
  store i32 1, i32* %5, align 4
  br label %64

64:                                               ; preds = %109, %63
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 3
  br i1 %66, label %67, label %112

67:                                               ; preds = %64
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64**, i64*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64*, i64** %70, i64 %72
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i64**, i64*** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64*, i64** %81, i64 %84
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* @TOP, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  store i64 %78, i64* %88, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i64**, i64*** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64*, i64** %91, i64 %94
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* @LEFT, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64 0, i64* %98, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64**, i64*** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64*, i64** %101, i64 %103
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %67
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %64

112:                                              ; preds = %64
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
