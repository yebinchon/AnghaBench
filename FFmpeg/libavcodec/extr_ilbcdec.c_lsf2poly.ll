; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_lsf2poly.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_lsf2poly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LPC_FILTERORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @lsf2poly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lsf2poly(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [2 x [6 x i32]], align 16
  %6 = alloca [10 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %11 = load i32, i32* @LPC_FILTERORDER, align 4
  %12 = call i32 @lsf2lsp(i32* %9, i32* %10, i32 %11)
  %13 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %14 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %5, i64 0, i64 0
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %16 = call i32 @get_lsp_poly(i32* %13, i32* %15)
  %17 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 1
  %18 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %5, i64 0, i64 1
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %18, i64 0, i64 0
  %20 = call i32 @get_lsp_poly(i32* %17, i32* %19)
  store i32 5, i32* %8, align 4
  br label %21

21:                                               ; preds = %49, %2
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %21
  %25 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %5, i64 0, i64 0
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %5, i64 0, i64 0
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %31, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add i32 %35, %30
  store i32 %36, i32* %34, align 4
  %37 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %5, i64 0, i64 1
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %37, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %5, i64 0, i64 1
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %43, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sub i32 %47, %42
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %24
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %8, align 4
  br label %21

52:                                               ; preds = %21
  %53 = load i32*, i32** %3, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 4096, i32* %54, align 4
  store i32 5, i32* %8, align 4
  br label %55

55:                                               ; preds = %101, %52
  %56 = load i32, i32* %8, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %104

58:                                               ; preds = %55
  %59 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %5, i64 0, i64 0
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 6, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [6 x i32], [6 x i32]* %59, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %5, i64 0, i64 1
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 6, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [6 x i32], [6 x i32]* %65, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %64, %70
  %72 = add i32 %71, 4096
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = lshr i32 %73, 13
  %75 = load i32*, i32** %3, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 6, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  store i32 %74, i32* %79, align 4
  %80 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %5, i64 0, i64 0
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 6, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [6 x i32], [6 x i32]* %80, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %5, i64 0, i64 1
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 6, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [6 x i32], [6 x i32]* %86, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sub i32 %85, %91
  %93 = add i32 %92, 4096
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = lshr i32 %94, 13
  %96 = load i32*, i32** %3, align 8
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 5, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  store i32 %95, i32* %100, align 4
  br label %101

101:                                              ; preds = %58
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %8, align 4
  br label %55

104:                                              ; preds = %55
  ret void
}

declare dso_local i32 @lsf2lsp(i32*, i32*, i32) #1

declare dso_local i32 @get_lsp_poly(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
