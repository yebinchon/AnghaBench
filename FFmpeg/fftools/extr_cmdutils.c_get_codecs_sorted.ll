; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_get_codecs_sorted.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_get_codecs_sorted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@compare_codec_desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32***)* @get_codecs_sorted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_codecs_sorted(i32*** %0) #0 {
  %2 = alloca i32***, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32*** %0, i32**** %2, align 8
  store i32* null, i32** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %11, %1
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @avcodec_descriptor_next(i32* %8)
  store i32* %9, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32, i32* %5, align 4
  %13 = add i32 %12, 1
  store i32 %13, i32* %5, align 4
  br label %7

14:                                               ; preds = %7
  %15 = load i32, i32* %5, align 4
  %16 = call i32** @av_calloc(i32 %15, i32 8)
  store i32** %16, i32*** %4, align 8
  %17 = icmp ne i32** %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @AV_LOG_ERROR, align 4
  %20 = call i32 @av_log(i32* null, i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @exit_program(i32 1)
  br label %22

22:                                               ; preds = %18, %14
  store i32* null, i32** %3, align 8
  br label %23

23:                                               ; preds = %27, %22
  %24 = load i32*, i32** %3, align 8
  %25 = call i32* @avcodec_descriptor_next(i32* %24)
  store i32* %25, i32** %3, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32*, i32** %3, align 8
  %29 = load i32**, i32*** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = zext i32 %30 to i64
  %33 = getelementptr inbounds i32*, i32** %29, i64 %32
  store i32* %28, i32** %33, align 8
  br label %23

34:                                               ; preds = %23
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @av_assert0(i32 %38)
  %40 = load i32**, i32*** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @compare_codec_desc, align 4
  %43 = call i32 @qsort(i32** %40, i32 %41, i32 8, i32 %42)
  %44 = load i32**, i32*** %4, align 8
  %45 = load i32***, i32**** %2, align 8
  store i32** %44, i32*** %45, align 8
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32* @avcodec_descriptor_next(i32*) #1

declare dso_local i32** @av_calloc(i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @qsort(i32**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
