; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1dsp.c_vc1_h_s_overlap_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1dsp.c_vc1_h_s_overlap_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32)* @vc1_h_s_overlap_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc1_h_s_overlap_c(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = and i32 %20, 2
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 3, i32 4
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = sub nsw i32 7, %25
  store i32 %26, i32* %19, align 4
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %106, %5
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %30, label %109

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 6
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 7
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %15, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %15, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* %14, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %12, align 4
  %54 = mul nsw i32 %53, 8
  %55 = load i32, i32* %16, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load i32, i32* %18, align 4
  %58 = add nsw i32 %56, %57
  %59 = ashr i32 %58, 3
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 6
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %13, align 4
  %63 = mul nsw i32 %62, 8
  %64 = load i32, i32* %17, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load i32, i32* %19, align 4
  %67 = add nsw i32 %65, %66
  %68 = ashr i32 %67, 3
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 7
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %14, align 4
  %72 = mul nsw i32 %71, 8
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* %18, align 4
  %76 = add nsw i32 %74, %75
  %77 = ashr i32 %76, 3
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %15, align 4
  %81 = mul nsw i32 %80, 8
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* %19, align 4
  %85 = add nsw i32 %83, %84
  %86 = ashr i32 %85, 3
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %6, align 8
  %97 = load i32, i32* %10, align 4
  %98 = and i32 %97, 1
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %30
  %101 = load i32, i32* %19, align 4
  %102 = sub nsw i32 7, %101
  store i32 %102, i32* %19, align 4
  %103 = load i32, i32* %18, align 4
  %104 = sub nsw i32 7, %103
  store i32 %104, i32* %18, align 4
  br label %105

105:                                              ; preds = %100, %30
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %27

109:                                              ; preds = %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
