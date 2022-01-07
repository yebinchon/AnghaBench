; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_compare_option.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_compare_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.display*, i32)* @compare_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_option(%struct.display* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.display*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.display* %0, %struct.display** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.display*, %struct.display** %4, align 8
  %8 = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.display*, %struct.display** %4, align 8
  %16 = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.display*, %struct.display** %4, align 8
  %24 = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %22, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %70

32:                                               ; preds = %2
  %33 = load %struct.display*, %struct.display** %4, align 8
  %34 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.display*, %struct.display** %4, align 8
  %42 = getelementptr inbounds %struct.display, %struct.display* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %40, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %32
  %50 = load %struct.display*, %struct.display** %4, align 8
  %51 = getelementptr inbounds %struct.display, %struct.display* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.display*, %struct.display** %4, align 8
  %59 = getelementptr inbounds %struct.display, %struct.display* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp sle i64 %57, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %70

68:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %70

69:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %68, %67, %31
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
