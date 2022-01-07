; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_blocky_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_blocky_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blocky_image(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %72, %2
  %8 = load i32, i32* %6, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %75

12:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %68, %12
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %71

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %64, %18
  %20 = load i32, i32* %4, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %67

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = sdiv i32 %27, %28
  %30 = load i32, i32* %3, align 4
  %31 = mul nsw i32 %29, %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %3, align 4
  %36 = sdiv i32 %34, %35
  %37 = load i32, i32* %3, align 4
  %38 = mul nsw i32 %36, %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %40, %41
  %43 = add nsw i32 %38, %42
  %44 = mul nsw i32 %33, %43
  %45 = add nsw i32 %31, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %26, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = mul nsw i32 %56, %57
  %59 = add nsw i32 %54, %58
  %60 = mul nsw i32 %53, %59
  %61 = add nsw i32 %51, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %50, i64 %62
  store i32 %48, i32* %63, align 4
  br label %64

64:                                               ; preds = %24
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %19

67:                                               ; preds = %19
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %13

71:                                               ; preds = %13
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %7

75:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
