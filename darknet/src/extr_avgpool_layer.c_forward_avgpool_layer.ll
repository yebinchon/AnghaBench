; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_avgpool_layer.c_forward_avgpool_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_avgpool_layer.c_forward_avgpool_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forward_avgpool_layer(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i64* %1, i64** %9, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %91, %2
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %94

15:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %87, %15
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %90

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %23, %25
  %27 = add nsw i32 %22, %26
  store i32 %27, i32* %7, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 0, i32* %32, align 4
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %71, %21
  %34 = load i32, i32* %5, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %36, %38
  %40 = icmp slt i32 %34, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %33
  %42 = load i32, i32* %5, align 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %44, %46
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %4, align 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %49, %51
  %53 = add nsw i32 %48, %52
  %54 = mul nsw i32 %47, %53
  %55 = add nsw i32 %42, %54
  store i32 %55, i32* %8, align 4
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %61
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 4
  br label %71

71:                                               ; preds = %41
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %33

74:                                               ; preds = %33
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %76, %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %85, %79
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %74
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %16

90:                                               ; preds = %16
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %10

94:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
