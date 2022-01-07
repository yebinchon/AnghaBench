; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_removelogo.c_load_mask.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_removelogo.c_load_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_PIX_FMT_GRAY8 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*, i8*, i8*)* @load_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_mask(i32** %0, i32* %1, i32* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32*], align 16
  %15 = alloca [4 x i32*], align 16
  %16 = alloca [4 x i32], align 16
  %17 = alloca [4 x i32], align 16
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = getelementptr inbounds [4 x i32*], [4 x i32*]* %14, i64 0, i64 0
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 @ff_load_image(i32** %18, i32* %19, i32* %20, i32* %21, i32* %13, i8* %22, i8* %23)
  store i32 %24, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %6, align 4
  br label %81

28:                                               ; preds = %5
  %29 = getelementptr inbounds [4 x i32*], [4 x i32*]* %15, i64 0, i64 0
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AV_PIX_FMT_GRAY8, align 4
  %36 = getelementptr inbounds [4 x i32*], [4 x i32*]* %14, i64 0, i64 0
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @ff_scale_image(i32** %29, i32* %30, i32 %32, i32 %34, i32 %35, i32** %36, i32* %37, i32 %39, i32 %41, i32 %42, i8* %43)
  store i32 %44, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %28
  br label %75

47:                                               ; preds = %28
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %49, %51
  %53 = call i32* @av_malloc(i32 %52)
  %54 = load i32**, i32*** %7, align 8
  store i32* %53, i32** %54, align 8
  %55 = load i32**, i32*** %7, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %47
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = call i32 @AVERROR(i32 %59)
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %58, %47
  %62 = load i32**, i32*** %7, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [4 x i32*], [4 x i32*]* %15, i64 0, i64 0
  %67 = load i32*, i32** %66, align 16
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %69 = load i32, i32* %68, align 16
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @av_image_copy_plane(i32* %63, i32 %65, i32* %67, i32 %69, i32 %71, i32 %73)
  br label %75

75:                                               ; preds = %61, %46
  %76 = getelementptr inbounds [4 x i32*], [4 x i32*]* %14, i64 0, i64 0
  %77 = call i32 @av_freep(i32** %76)
  %78 = getelementptr inbounds [4 x i32*], [4 x i32*]* %15, i64 0, i64 0
  %79 = call i32 @av_freep(i32** %78)
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %75, %26
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @ff_load_image(i32**, i32*, i32*, i32*, i32*, i8*, i8*) #1

declare dso_local i32 @ff_scale_image(i32**, i32*, i32, i32, i32, i32**, i32*, i32, i32, i32, i8*) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_image_copy_plane(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
