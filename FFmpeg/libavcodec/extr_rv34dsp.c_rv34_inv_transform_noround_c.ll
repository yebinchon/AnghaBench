; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34dsp.c_rv34_inv_transform_noround_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34dsp.c_rv34_inv_transform_noround_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @rv34_inv_transform_noround_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv34_inv_transform_noround_c(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [16 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @rv34_row_transform(i32* %9, i32* %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %106, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %109

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 0, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 8, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %20, %25
  %27 = mul nsw i32 39, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 0, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 8, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %32, %37
  %39 = mul nsw i32 39, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 4, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 21, %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 12, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 51, %50
  %52 = sub nsw i32 %45, %51
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 4, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 51, %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 12, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 21, %63
  %65 = add nsw i32 %58, %64
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %66, %67
  %69 = ashr i32 %68, 11
  %70 = load i32*, i32** %2, align 8
  %71 = load i32, i32* %4, align 4
  %72 = mul nsw i32 %71, 4
  %73 = add nsw i32 %72, 0
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %76, %77
  %79 = ashr i32 %78, 11
  %80 = load i32*, i32** %2, align 8
  %81 = load i32, i32* %4, align 4
  %82 = mul nsw i32 %81, 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  store i32 %79, i32* %85, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = sub nsw i32 %86, %87
  %89 = ashr i32 %88, 11
  %90 = load i32*, i32** %2, align 8
  %91 = load i32, i32* %4, align 4
  %92 = mul nsw i32 %91, 4
  %93 = add nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  store i32 %89, i32* %95, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %96, %97
  %99 = ashr i32 %98, 11
  %100 = load i32*, i32** %2, align 8
  %101 = load i32, i32* %4, align 4
  %102 = mul nsw i32 %101, 4
  %103 = add nsw i32 %102, 3
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  store i32 %99, i32* %105, align 4
  br label %106

106:                                              ; preds = %15
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %12

109:                                              ; preds = %12
  ret void
}

declare dso_local i32 @rv34_row_transform(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
