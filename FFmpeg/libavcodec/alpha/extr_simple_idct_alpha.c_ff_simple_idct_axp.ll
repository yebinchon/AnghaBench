; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/alpha/extr_simple_idct_alpha.c_ff_simple_idct_axp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/alpha/extr_simple_idct_alpha.c_ff_simple_idct_axp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_simple_idct_axp(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %30, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = mul nsw i32 8, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = call i32 @idct_row(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %21, %12
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %25
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %9

33:                                               ; preds = %9
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @idct_col2(i32* %37)
  br label %108

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %93

42:                                               ; preds = %39
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @idct_col(i32* %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %89, %42
  %46 = load i32, i32* %3, align 4
  %47 = icmp slt i32 %46, 8
  br i1 %47, label %48, label %92

48:                                               ; preds = %45
  %49 = load i32*, i32** %2, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %7, align 4
  %52 = load i32*, i32** %2, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 8
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 %55, 16
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 %59, 16
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = shl i32 %63, 32
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = shl i32 %67, 32
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32*, i32** %2, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = call i32 @stq(i32 %71, i32* %73)
  %75 = load i32, i32* %7, align 4
  %76 = load i32*, i32** %2, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = call i32 @stq(i32 %75, i32* %77)
  %79 = load i32, i32* %8, align 4
  %80 = load i32*, i32** %2, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 8
  %82 = call i32 @stq(i32 %79, i32* %81)
  %83 = load i32, i32* %8, align 4
  %84 = load i32*, i32** %2, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 12
  %86 = call i32 @stq(i32 %83, i32* %85)
  %87 = load i32*, i32** %2, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 16
  store i32* %88, i32** %2, align 8
  br label %89

89:                                               ; preds = %48
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 2
  store i32 %91, i32* %3, align 4
  br label %45

92:                                               ; preds = %45
  br label %107

93:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %103, %93
  %95 = load i32, i32* %3, align 4
  %96 = icmp slt i32 %95, 8
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load i32*, i32** %2, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = call i32 @idct_col(i32* %101)
  br label %103

103:                                              ; preds = %97
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %3, align 4
  br label %94

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106, %92
  br label %108

108:                                              ; preds = %107, %36
  ret void
}

declare dso_local i32 @idct_row(i32*) #1

declare dso_local i32 @idct_col2(i32*) #1

declare dso_local i32 @idct_col(i32*) #1

declare dso_local i32 @stq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
