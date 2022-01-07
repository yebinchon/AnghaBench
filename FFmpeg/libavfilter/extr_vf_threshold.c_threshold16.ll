; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_threshold.c_threshold16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_threshold.c_threshold16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32)* @threshold16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @threshold16(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64*, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i64*, align 8
  %29 = alloca i64*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %32 = load i32*, i32** %13, align 8
  %33 = bitcast i32* %32 to i64*
  store i64* %33, i64** %25, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = bitcast i32* %34 to i64*
  store i64* %35, i64** %26, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = bitcast i32* %36 to i64*
  store i64* %37, i64** %27, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = bitcast i32* %38 to i64*
  store i64* %39, i64** %28, align 8
  %40 = load i32*, i32** %17, align 8
  %41 = bitcast i32* %40 to i64*
  store i64* %41, i64** %29, align 8
  store i32 0, i32* %31, align 4
  br label %42

42:                                               ; preds = %110, %12
  %43 = load i32, i32* %31, align 4
  %44 = load i32, i32* %24, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %113

46:                                               ; preds = %42
  store i32 0, i32* %30, align 4
  br label %47

47:                                               ; preds = %81, %46
  %48 = load i32, i32* %30, align 4
  %49 = load i32, i32* %23, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %84

51:                                               ; preds = %47
  %52 = load i64*, i64** %25, align 8
  %53 = load i32, i32* %30, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %26, align 8
  %58 = load i32, i32* %30, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %56, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %51
  %64 = load i64*, i64** %27, align 8
  %65 = load i32, i32* %30, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  br label %75

69:                                               ; preds = %51
  %70 = load i64*, i64** %28, align 8
  %71 = load i32, i32* %30, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  br label %75

75:                                               ; preds = %69, %63
  %76 = phi i64 [ %68, %63 ], [ %74, %69 ]
  %77 = load i64*, i64** %29, align 8
  %78 = load i32, i32* %30, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64 %76, i64* %80, align 8
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %30, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %30, align 4
  br label %47

84:                                               ; preds = %47
  %85 = load i32, i32* %18, align 4
  %86 = sdiv i32 %85, 2
  %87 = load i64*, i64** %25, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  store i64* %89, i64** %25, align 8
  %90 = load i32, i32* %19, align 4
  %91 = sdiv i32 %90, 2
  %92 = load i64*, i64** %26, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  store i64* %94, i64** %26, align 8
  %95 = load i32, i32* %20, align 4
  %96 = sdiv i32 %95, 2
  %97 = load i64*, i64** %27, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  store i64* %99, i64** %27, align 8
  %100 = load i32, i32* %21, align 4
  %101 = sdiv i32 %100, 2
  %102 = load i64*, i64** %28, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  store i64* %104, i64** %28, align 8
  %105 = load i32, i32* %22, align 4
  %106 = sdiv i32 %105, 2
  %107 = load i64*, i64** %29, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  store i64* %109, i64** %29, align 8
  br label %110

110:                                              ; preds = %84
  %111 = load i32, i32* %31, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %31, align 4
  br label %42

113:                                              ; preds = %42
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
