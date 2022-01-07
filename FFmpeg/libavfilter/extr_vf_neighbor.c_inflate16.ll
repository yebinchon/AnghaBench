; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_neighbor.c_inflate16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_neighbor.c_inflate16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32**, i32, i32)* @inflate16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inflate16(i32* %0, i32* %1, i32 %2, i32 %3, i32** %4, i32 %5, i32 %6) #0 {
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

22:                                               ; preds = %75, %7
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %78

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
  %35 = add nsw i64 %32, %34
  %36 = load i32, i32* %14, align 4
  %37 = call i8* @FFMIN(i64 %35, i32 %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %39

39:                                               ; preds = %43, %26
  %40 = load i32, i32* %17, align 4
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %42
  %44 = load i32**, i32*** %12, align 8
  %45 = load i32, i32* %17, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %17, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32*, i32** %44, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %16, align 4
  %51 = mul nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = call i64 @AV_RN16A(i32* %53)
  %55 = load i32, i32* %18, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %18, align 4
  br label %39

59:                                               ; preds = %39
  %60 = load i32, i32* %18, align 4
  %61 = sdiv i32 %60, 8
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %16, align 4
  %64 = mul nsw i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = call i64 @AV_RN16A(i32* %66)
  %68 = call i64 @FFMAX(i32 %61, i64 %67)
  %69 = load i32, i32* %19, align 4
  %70 = call i8* @FFMIN(i64 %68, i32 %69)
  %71 = load i8**, i8*** %15, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  store i8* %70, i8** %74, align 8
  br label %75

75:                                               ; preds = %59
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %16, align 4
  br label %22

78:                                               ; preds = %22
  ret void
}

declare dso_local i8* @FFMIN(i64, i32) #1

declare dso_local i64 @AV_RN16A(i32*) #1

declare dso_local i64 @FFMAX(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
