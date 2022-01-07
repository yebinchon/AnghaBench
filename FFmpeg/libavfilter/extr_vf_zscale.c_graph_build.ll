; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_zscale.c_graph_build.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_zscale.c_graph_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*, i32*, i8**, i64*)* @graph_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graph_build(i32** %0, i32* %1, i32* %2, i32* %3, i8** %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load i32**, i32*** %8, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @zimg_filter_graph_free(i32* %17)
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32* @zimg_filter_graph_build(i32* %19, i32* %20, i32* %21)
  %23 = load i32**, i32*** %8, align 8
  store i32* %22, i32** %23, align 8
  %24 = load i32**, i32*** %8, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %6
  %28 = call i32 @print_zimg_error(i32* null)
  store i32 %28, i32* %7, align 4
  br label %58

29:                                               ; preds = %6
  %30 = load i32**, i32*** %8, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @zimg_filter_graph_get_tmp_size(i32* %31, i64* %15)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 @print_zimg_error(i32* null)
  store i32 %36, i32* %7, align 4
  br label %58

37:                                               ; preds = %29
  %38 = load i64, i64* %15, align 8
  %39 = load i64*, i64** %13, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ugt i64 %38, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load i8**, i8*** %12, align 8
  %44 = call i32 @av_freep(i8** %43)
  %45 = load i64, i64* %15, align 8
  %46 = call i8* @av_malloc(i64 %45)
  %47 = load i8**, i8*** %12, align 8
  store i8* %46, i8** %47, align 8
  %48 = load i8**, i8*** %12, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = call i32 @AVERROR(i32 %52)
  store i32 %53, i32* %7, align 4
  br label %58

54:                                               ; preds = %42
  %55 = load i64, i64* %15, align 8
  %56 = load i64*, i64** %13, align 8
  store i64 %55, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %37
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %51, %35, %27
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @zimg_filter_graph_free(i32*) #1

declare dso_local i32* @zimg_filter_graph_build(i32*, i32*, i32*) #1

declare dso_local i32 @print_zimg_error(i32*) #1

declare dso_local i32 @zimg_filter_graph_get_tmp_size(i32*, i64*) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i8* @av_malloc(i64) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
