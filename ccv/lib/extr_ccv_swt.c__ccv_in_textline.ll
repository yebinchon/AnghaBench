; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_swt.c__ccv_in_textline.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_swt.c__ccv_in_textline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @_ccv_in_textline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ccv_in_textline(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %9, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %25, %3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %43, %46
  %48 = sub nsw i32 %40, %47
  store i32 %48, i32* %10, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %58, %61
  %63 = add nsw i32 %55, %62
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = mul nsw i32 %64, 7
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 0, %66
  %68 = mul nsw i32 %67, 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %33
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 %71, 7
  %73 = load i32, i32* %11, align 4
  %74 = mul nsw i32 %73, 4
  %75 = icmp sgt i32 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 1, i32* %4, align 4
  br label %141

77:                                               ; preds = %70, %33
  br label %140

78:                                               ; preds = %25
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %94, label %86

86:                                               ; preds = %78
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %89, %92
  br i1 %93, label %94, label %139

94:                                               ; preds = %86, %78
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %97, %100
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %104, %107
  %109 = sub nsw i32 %101, %108
  store i32 %109, i32* %12, align 4
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %112, %115
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = mul nsw i32 %119, %122
  %124 = add nsw i32 %116, %123
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %12, align 4
  %126 = mul nsw i32 %125, 7
  %127 = load i32, i32* %13, align 4
  %128 = mul nsw i32 %127, 4
  %129 = icmp slt i32 %126, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %94
  %131 = load i32, i32* %12, align 4
  %132 = mul nsw i32 %131, 7
  %133 = load i32, i32* %13, align 4
  %134 = sub nsw i32 0, %133
  %135 = mul nsw i32 %134, 4
  %136 = icmp sgt i32 %132, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  store i32 1, i32* %4, align 4
  br label %141

138:                                              ; preds = %130, %94
  br label %139

139:                                              ; preds = %138, %86
  br label %140

140:                                              ; preds = %139, %77
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %140, %137, %76
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
