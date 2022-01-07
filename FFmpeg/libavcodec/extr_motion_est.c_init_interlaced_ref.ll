; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motion_est.c_init_interlaced_ref.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motion_est.c_init_interlaced_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64**, i64** }

@FLAG_CHROMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @init_interlaced_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_interlaced_ref(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %10 = load i64**, i64*** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 0, %11
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64*, i64** %10, i64 %13
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i64**, i64*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 1, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64*, i64** %24, i64 %27
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  store i64 %21, i64* %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64**, i64*** %32, align 8
  %34 = getelementptr inbounds i64*, i64** %33, i64 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64**, i64*** %43, align 8
  %45 = getelementptr inbounds i64*, i64** %44, i64 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  store i64 %41, i64* %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @FLAG_CHROMA, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %135

54:                                               ; preds = %2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i64**, i64*** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 0, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64*, i64** %57, i64 %60
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i64**, i64*** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 1, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64*, i64** %71, i64 %74
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  store i64 %68, i64* %77, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i64**, i64*** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 0, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64*, i64** %80, i64 %83
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %87, %90
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i64**, i64*** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 1, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64*, i64** %94, i64 %97
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 2
  store i64 %91, i64* %100, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i64**, i64*** %102, align 8
  %104 = getelementptr inbounds i64*, i64** %103, i64 0
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %107, %110
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i64**, i64*** %113, align 8
  %115 = getelementptr inbounds i64*, i64** %114, i64 1
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 1
  store i64 %111, i64* %117, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i64**, i64*** %119, align 8
  %121 = getelementptr inbounds i64*, i64** %120, i64 0
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %124, %127
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i64**, i64*** %130, align 8
  %132 = getelementptr inbounds i64*, i64** %131, i64 1
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 2
  store i64 %128, i64* %134, align 8
  br label %135

135:                                              ; preds = %54, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
