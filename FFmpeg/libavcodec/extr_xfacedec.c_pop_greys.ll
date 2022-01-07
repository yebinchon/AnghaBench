; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xfacedec.c_pop_greys.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xfacedec.c_pop_greys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XFACE_WIDTH = common dso_local global i32 0, align 4
@ff_xface_probranges_2x2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i32)* @pop_greys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pop_greys(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp sgt i32 %9, 3
  br i1 %10, label %11, label %48

11:                                               ; preds = %4
  %12 = load i32, i32* %7, align 4
  %13 = sdiv i32 %12, 2
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = sdiv i32 %14, 2
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  call void @pop_greys(i32* %16, i8* %17, i32 %18, i32 %19)
  %20 = load i32*, i32** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  call void @pop_greys(i32* %20, i8* %24, i32 %25, i32 %26)
  %27 = load i32*, i32** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* @XFACE_WIDTH, align 4
  %30 = load i32, i32* %8, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  call void @pop_greys(i32* %27, i8* %33, i32 %34, i32 %35)
  %36 = load i32*, i32** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @XFACE_WIDTH, align 4
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  call void @pop_greys(i32* %36, i8* %45, i32 %46, i32 %47)
  br label %85

48:                                               ; preds = %4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @ff_xface_probranges_2x2, align 4
  %51 = call i32 @pop_integer(i32* %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  store i8 1, i8* %57, align 1
  br label %58

58:                                               ; preds = %55, %48
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, 2
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  store i8 1, i8* %64, align 1
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* @XFACE_WIDTH, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 1, i8* %73, align 1
  br label %74

74:                                               ; preds = %69, %65
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* @XFACE_WIDTH, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  store i8 1, i8* %83, align 1
  br label %84

84:                                               ; preds = %78, %74
  br label %85

85:                                               ; preds = %84, %11
  ret void
}

declare dso_local i32 @pop_integer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
