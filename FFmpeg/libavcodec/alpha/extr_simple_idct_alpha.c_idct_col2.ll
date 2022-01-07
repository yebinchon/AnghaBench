; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/alpha/extr_simple_idct_alpha.c_idct_col2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/alpha/extr_simple_idct_alpha.c_idct_col2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COL_SHIFT = common dso_local global i32 0, align 4
@W4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @idct_col2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idct_col2(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %32, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %35

10:                                               ; preds = %7
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @COL_SHIFT, align 4
  %17 = sub nsw i32 %16, 1
  %18 = shl i32 1, %17
  %19 = load i32, i32* @W4, align 4
  %20 = sdiv i32 %18, %19
  %21 = add nsw i32 %15, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @W4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @COL_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %27, i32* %31, align 4
  br label %32

32:                                               ; preds = %10
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %7

35:                                               ; preds = %7
  %36 = load i32*, i32** %2, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = call i32 @ldq(i32* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32*, i32** %2, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = call i32 @ldq(i32* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32*, i32** %2, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 8
  %45 = call i32 @stq(i32 %42, i32* %44)
  %46 = load i32, i32* %5, align 4
  %47 = load i32*, i32** %2, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 12
  %49 = call i32 @stq(i32 %46, i32* %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32*, i32** %2, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 16
  %53 = call i32 @stq(i32 %50, i32* %52)
  %54 = load i32, i32* %5, align 4
  %55 = load i32*, i32** %2, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 20
  %57 = call i32 @stq(i32 %54, i32* %56)
  %58 = load i32, i32* %4, align 4
  %59 = load i32*, i32** %2, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 24
  %61 = call i32 @stq(i32 %58, i32* %60)
  %62 = load i32, i32* %5, align 4
  %63 = load i32*, i32** %2, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 28
  %65 = call i32 @stq(i32 %62, i32* %64)
  %66 = load i32, i32* %4, align 4
  %67 = load i32*, i32** %2, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 32
  %69 = call i32 @stq(i32 %66, i32* %68)
  %70 = load i32, i32* %5, align 4
  %71 = load i32*, i32** %2, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 36
  %73 = call i32 @stq(i32 %70, i32* %72)
  %74 = load i32, i32* %4, align 4
  %75 = load i32*, i32** %2, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 40
  %77 = call i32 @stq(i32 %74, i32* %76)
  %78 = load i32, i32* %5, align 4
  %79 = load i32*, i32** %2, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 44
  %81 = call i32 @stq(i32 %78, i32* %80)
  %82 = load i32, i32* %4, align 4
  %83 = load i32*, i32** %2, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 48
  %85 = call i32 @stq(i32 %82, i32* %84)
  %86 = load i32, i32* %5, align 4
  %87 = load i32*, i32** %2, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 52
  %89 = call i32 @stq(i32 %86, i32* %88)
  %90 = load i32, i32* %4, align 4
  %91 = load i32*, i32** %2, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 56
  %93 = call i32 @stq(i32 %90, i32* %92)
  %94 = load i32, i32* %5, align 4
  %95 = load i32*, i32** %2, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 60
  %97 = call i32 @stq(i32 %94, i32* %96)
  ret void
}

declare dso_local i32 @ldq(i32*) #1

declare dso_local i32 @stq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
