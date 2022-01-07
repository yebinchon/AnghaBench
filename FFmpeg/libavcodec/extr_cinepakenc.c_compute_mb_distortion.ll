; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepakenc.c_compute_mb_distortion.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepakenc.c_compute_mb_distortion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@MB_SIZE = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB24 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32**, i32*, i32**, i32*)* @compute_mb_distortion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_mb_distortion(%struct.TYPE_3__* %0, i32** %1, i32* %2, i32** %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %62, %5
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @MB_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %65

20:                                               ; preds = %16
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %58, %20
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @MB_SIZE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %21
  %26 = load i32**, i32*** %7, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %30, %33
  %35 = add nsw i32 %29, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %28, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32**, i32*** %9, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  %48 = add nsw i32 %42, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %41, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %38, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %15, align 4
  br label %58

58:                                               ; preds = %25
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %21

61:                                               ; preds = %21
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %16

65:                                               ; preds = %16
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @AV_PIX_FMT_RGB24, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %140

71:                                               ; preds = %65
  store i32 1, i32* %13, align 4
  br label %72

72:                                               ; preds = %136, %71
  %73 = load i32, i32* %13, align 4
  %74 = icmp sle i32 %73, 2
  br i1 %74, label %75, label %139

75:                                               ; preds = %72
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %132, %75
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @MB_SIZE, align 4
  %79 = sdiv i32 %78, 2
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %135

81:                                               ; preds = %76
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %128, %81
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @MB_SIZE, align 4
  %85 = sdiv i32 %84, 2
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %131

87:                                               ; preds = %82
  %88 = load i32**, i32*** %7, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %94, %99
  %101 = add nsw i32 %93, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %92, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32**, i32*** %9, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %111, %116
  %118 = add nsw i32 %110, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %109, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %104, %121
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %15, align 4
  br label %128

128:                                              ; preds = %87
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %82

131:                                              ; preds = %82
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %76

135:                                              ; preds = %76
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %13, align 4
  br label %72

139:                                              ; preds = %72
  br label %140

140:                                              ; preds = %139, %65
  %141 = load i32, i32* %15, align 4
  ret i32 %141
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
