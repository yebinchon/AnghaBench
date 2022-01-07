; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_censor_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_censor_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @censor_image(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 %4, i32* %9, align 4
  store i32 32, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %16, %5
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %17
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %105, %21
  %23 = load i32, i32* %12, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %108

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %101, %27
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %31, %32
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %36, %38
  br label %40

40:                                               ; preds = %35, %29
  %41 = phi i1 [ false, %29 ], [ %39, %35 ]
  br i1 %41, label %42, label %104

42:                                               ; preds = %40
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %97, %42
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %46, %47
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load i32, i32* %10, align 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %51, %53
  br label %55

55:                                               ; preds = %50, %44
  %56 = phi i1 [ false, %44 ], [ %54, %50 ]
  br i1 %56, label %57, label %100

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %13, align 4
  %62 = sdiv i32 %60, %61
  %63 = load i32, i32* %13, align 4
  %64 = mul nsw i32 %62, %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %13, align 4
  %69 = sdiv i32 %67, %68
  %70 = load i32, i32* %13, align 4
  %71 = mul nsw i32 %69, %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %12, align 4
  %75 = mul nsw i32 %73, %74
  %76 = add nsw i32 %71, %75
  %77 = mul nsw i32 %66, %76
  %78 = add nsw i32 %64, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %59, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %12, align 4
  %91 = mul nsw i32 %89, %90
  %92 = add nsw i32 %87, %91
  %93 = mul nsw i32 %86, %92
  %94 = add nsw i32 %84, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %83, i64 %95
  store i32 %81, i32* %96, align 4
  br label %97

97:                                               ; preds = %57
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %44

100:                                              ; preds = %55
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %29

104:                                              ; preds = %40
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %22

108:                                              ; preds = %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
