; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_neighbor.c_deflate16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_neighbor.c_deflate16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32**, i32, i32)* @deflate16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deflate16(i32* %0, i32* %1, i32 %2, i32 %3, i32** %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32** %4, i32*** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = bitcast i32* %20 to i8**
  store i8** %21, i8*** %15, align 8
  store i32 0, i32* %16, align 4
  br label %22

22:                                               ; preds = %74, %7
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %22
  store i32 0, i32* %18, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %16, align 4
  %29 = mul nsw i32 2, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = call i64 @AV_RN16A(i32* %31)
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %32, %34
  %36 = call i8* @FFMAX(i64 %35, i32 0)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %38

38:                                               ; preds = %42, %26
  %39 = load i32, i32* %17, align 4
  %40 = icmp slt i32 %39, 8
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41
  %43 = load i32**, i32*** %12, align 8
  %44 = load i32, i32* %17, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %17, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32*, i32** %43, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %16, align 4
  %50 = mul nsw i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = call i64 @AV_RN16A(i32* %52)
  %54 = load i32, i32* %18, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %18, align 4
  br label %38

58:                                               ; preds = %38
  %59 = load i32, i32* %18, align 4
  %60 = sdiv i32 %59, 8
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %16, align 4
  %63 = mul nsw i32 2, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = call i64 @AV_RN16A(i32* %65)
  %67 = call i64 @FFMIN(i32 %60, i64 %66)
  %68 = load i32, i32* %19, align 4
  %69 = call i8* @FFMAX(i64 %67, i32 %68)
  %70 = load i8**, i8*** %15, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  store i8* %69, i8** %73, align 8
  br label %74

74:                                               ; preds = %58
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %16, align 4
  br label %22

77:                                               ; preds = %22
  ret void
}

declare dso_local i8* @FFMAX(i64, i32) #1

declare dso_local i64 @AV_RN16A(i32*) #1

declare dso_local i64 @FFMIN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
