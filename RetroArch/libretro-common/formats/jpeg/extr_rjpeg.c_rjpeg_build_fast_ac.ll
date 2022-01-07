; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/jpeg/extr_rjpeg.c_rjpeg_build_fast_ac.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/jpeg/extr_rjpeg.c_rjpeg_build_fast_ac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }

@FAST_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, %struct.TYPE_3__*)* @rjpeg_build_fast_ac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rjpeg_build_fast_ac(i64* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %108, %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @FAST_BITS, align 4
  %16 = shl i32 1, %15
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %111

18:                                               ; preds = %13
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i64*, i64** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 255
  br i1 %31, label %32, label %107

32:                                               ; preds = %18
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = ashr i32 %40, 4
  %42 = and i32 %41, 15
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 15
  store i32 %44, i32* %9, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %106

54:                                               ; preds = %32
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* @FAST_BITS, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %106

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %10, align 4
  %63 = shl i32 %61, %62
  %64 = load i32, i32* @FAST_BITS, align 4
  %65 = shl i32 1, %64
  %66 = sub nsw i32 %65, 1
  %67 = and i32 %63, %66
  %68 = load i32, i32* @FAST_BITS, align 4
  %69 = load i32, i32* %9, align 4
  %70 = sub nsw i32 %68, %69
  %71 = ashr i32 %67, %70
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %72, 1
  %74 = shl i32 1, %73
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %60
  %79 = load i32, i32* %9, align 4
  %80 = shl i32 -1, %79
  %81 = add nsw i32 %80, 1
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %78, %60
  %85 = load i32, i32* %11, align 4
  %86 = icmp sge i32 %85, -128
  br i1 %86, label %87, label %105

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = icmp sle i32 %88, 127
  br i1 %89, label %90, label %105

90:                                               ; preds = %87
  %91 = load i32, i32* %11, align 4
  %92 = shl i32 %91, 8
  %93 = load i32, i32* %8, align 4
  %94 = shl i32 %93, 4
  %95 = add nsw i32 %92, %94
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %96, %97
  %99 = add nsw i32 %95, %98
  %100 = sext i32 %99 to i64
  %101 = load i64*, i64** %3, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  store i64 %100, i64* %104, align 8
  br label %105

105:                                              ; preds = %90, %87, %84
  br label %106

106:                                              ; preds = %105, %54, %32
  br label %107

107:                                              ; preds = %106, %18
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %13

111:                                              ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
