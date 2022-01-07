; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_pixconv.c_conv_argb8888_bgr24.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_pixconv.c_conv_argb8888_bgr24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @conv_argb8888_bgr24(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %14, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to i8**
  store i8** %27, i8*** %15, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sub nsw i32 %28, 15
  store i32 %29, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %109, %6
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %121

34:                                               ; preds = %30
  %35 = load i8**, i8*** %15, align 8
  store i8** %35, i8*** %17, align 8
  store i32 0, i32* %18, align 4
  br label %36

36:                                               ; preds = %71, %34
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %36
  %41 = load i32*, i32** %14, align 8
  %42 = load i32, i32* %18, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = call i32 @_mm_loadu_si128(i32* %45)
  store i32 %46, i32* %19, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %18, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = call i32 @_mm_loadu_si128(i32* %51)
  store i32 %52, i32* %20, align 4
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %18, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = getelementptr inbounds i32, i32* %56, i64 8
  %58 = call i32 @_mm_loadu_si128(i32* %57)
  store i32 %58, i32* %21, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = load i32, i32* %18, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = getelementptr inbounds i32, i32* %62, i64 12
  %64 = call i32 @_mm_loadu_si128(i32* %63)
  store i32 %64, i32* %22, align 4
  %65 = load i8**, i8*** %17, align 8
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* %20, align 4
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %22, align 4
  %70 = call i32 @store_bgr24_sse2(i8** %65, i32 %66, i32 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %40
  %72 = load i32, i32* %18, align 4
  %73 = add nsw i32 %72, 16
  store i32 %73, i32* %18, align 4
  %74 = load i8**, i8*** %17, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 48
  store i8** %75, i8*** %17, align 8
  br label %36

76:                                               ; preds = %36
  br label %77

77:                                               ; preds = %105, %76
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %108

81:                                               ; preds = %77
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* %18, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %23, align 4
  %87 = load i32, i32* %23, align 4
  %88 = ashr i32 %87, 0
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = load i8**, i8*** %17, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i32 1
  store i8** %92, i8*** %17, align 8
  store i8* %90, i8** %91, align 8
  %93 = load i32, i32* %23, align 4
  %94 = ashr i32 %93, 8
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = load i8**, i8*** %17, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %98, i8*** %17, align 8
  store i8* %96, i8** %97, align 8
  %99 = load i32, i32* %23, align 4
  %100 = ashr i32 %99, 16
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = load i8**, i8*** %17, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i32 1
  store i8** %104, i8*** %17, align 8
  store i8* %102, i8** %103, align 8
  br label %105

105:                                              ; preds = %81
  %106 = load i32, i32* %18, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %18, align 4
  br label %77

108:                                              ; preds = %77
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i8**, i8*** %15, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8*, i8** %113, i64 %114
  store i8** %115, i8*** %15, align 8
  %116 = load i32, i32* %12, align 4
  %117 = ashr i32 %116, 2
  %118 = load i32*, i32** %14, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32* %120, i32** %14, align 8
  br label %30

121:                                              ; preds = %30
  ret void
}

declare dso_local i32 @_mm_loadu_si128(i32*) #1

declare dso_local i32 @store_bgr24_sse2(i8**, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
