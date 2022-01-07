; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ulti.c_ulti_convert_yuv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ulti.c_ulti_convert_yuv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64**, i32* }

@ulti_chromas = common dso_local global i64* null, align 8
@ulti_lumas = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i64*, i32)* @ulti_convert_yuv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ulti_convert_yuv(%struct.TYPE_3__* %0, i32 %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64**, i64*** %16, align 8
  %18 = getelementptr inbounds i64*, i64** %17, i64 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %23, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %22, i64 %30
  store i64* %31, i64** %11, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64**, i64*** %33, align 8
  %35 = getelementptr inbounds i64*, i64** %34, i64 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sdiv i32 %37, 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  %41 = load i32, i32* %8, align 4
  %42 = sdiv i32 %41, 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %42, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %40, i64 %49
  store i64* %50, i64** %12, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64**, i64*** %52, align 8
  %54 = getelementptr inbounds i64*, i64** %53, i64 2
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sdiv i32 %56, 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i32, i32* %8, align 4
  %61 = sdiv i32 %60, 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %61, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %59, i64 %68
  store i64* %69, i64** %13, align 8
  %70 = load i64*, i64** @ulti_chromas, align 8
  %71 = load i32, i32* %10, align 4
  %72 = ashr i32 %71, 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %12, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  store i64 %75, i64* %77, align 8
  %78 = load i64*, i64** @ulti_chromas, align 8
  %79 = load i32, i32* %10, align 4
  %80 = and i32 %79, 15
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %78, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %13, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  store i64 %83, i64* %85, align 8
  store i32 0, i32* %14, align 4
  br label %86

86:                                               ; preds = %116, %5
  %87 = load i32, i32* %14, align 4
  %88 = icmp slt i32 %87, 16
  br i1 %88, label %89, label %119

89:                                               ; preds = %86
  %90 = load i64*, i64** @ulti_lumas, align 8
  %91 = load i64*, i64** %9, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i64, i64* %90, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %11, align 8
  %99 = load i32, i32* %14, align 4
  %100 = and i32 %99, 3
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %98, i64 %101
  store i64 %97, i64* %102, align 8
  %103 = load i32, i32* %14, align 4
  %104 = and i32 %103, 3
  %105 = icmp eq i32 %104, 3
  br i1 %105, label %106, label %115

106:                                              ; preds = %89
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load i64*, i64** %11, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  store i64* %114, i64** %11, align 8
  br label %115

115:                                              ; preds = %106, %89
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  br label %86

119:                                              ; preds = %86
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
