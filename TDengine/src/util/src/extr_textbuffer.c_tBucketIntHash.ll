; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_textbuffer.c_tBucketIntHash.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_textbuffer.c_tBucketIntHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@INT32_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tBucketIntHash(%struct.TYPE_5__* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @INT32_MIN, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = ashr i32 %27, 23
  %29 = ashr i32 %28, 6
  %30 = add nsw i32 %29, 8
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = ashr i32 %32, 23
  %34 = and i32 %33, 63
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  br label %51

36:                                               ; preds = %23
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 0, %37
  %39 = ashr i32 %38, 23
  %40 = ashr i32 %39, 6
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 0, %42
  %44 = ashr i32 %43, 23
  %45 = and i32 %44, 63
  %46 = load i32*, i32** %8, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 7, %48
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %36, %26
  br label %128

52:                                               ; preds = %4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %56, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %52
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %68, %72
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %74, %77
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = srem i32 %80, %83
  %85 = load i32*, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  br label %127

86:                                               ; preds = %52
  %87 = load i32, i32* %10, align 4
  %88 = sitofp i32 %87 to double
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sitofp i32 %91 to double
  %93 = fdiv double %88, %92
  store double %93, double* %12, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %94, %98
  %100 = sitofp i32 %99 to double
  %101 = load double, double* %12, align 8
  %102 = fdiv double %100, %101
  store double %102, double* %13, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %103, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %86
  %110 = load double, double* %13, align 8
  %111 = fsub double %110, 1.000000e+00
  store double %111, double* %13, align 8
  br label %112

112:                                              ; preds = %109, %86
  %113 = load double, double* %13, align 8
  %114 = fptosi double %113 to i32
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sdiv i32 %114, %117
  %119 = load i32*, i32** %7, align 8
  store i32 %118, i32* %119, align 4
  %120 = load double, double* %13, align 8
  %121 = fptosi double %120 to i32
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = srem i32 %121, %124
  %126 = load i32*, i32** %8, align 8
  store i32 %125, i32* %126, align 4
  br label %127

127:                                              ; preds = %112, %67
  br label %128

128:                                              ; preds = %127, %51
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
