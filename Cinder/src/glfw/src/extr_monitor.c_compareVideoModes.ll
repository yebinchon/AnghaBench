; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_monitor.c_compareVideoModes.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_monitor.c_compareVideoModes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compareVideoModes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compareVideoModes(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %7, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %9, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  store i32 %44, i32* %10, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %2
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %3, align 4
  br label %75

59:                                               ; preds = %2
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %3, align 4
  br label %75

67:                                               ; preds = %59
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %70, %73
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %67, %63, %55
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
