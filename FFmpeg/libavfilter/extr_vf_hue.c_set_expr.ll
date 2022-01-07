; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hue.c_set_expr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hue.c_set_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@var_names = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Error when evaluating the expression '%s' for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8**, i8*, i8*, i8*)* @set_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_expr(i32** %0, i8** %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store i32** %0, i32*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i8* @av_strdup(i8* %15)
  store i8* %16, i8** %14, align 8
  %17 = load i8*, i8** %14, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = call i32 @AVERROR(i32 %20)
  store i32 %21, i32* %6, align 4
  br label %53

22:                                               ; preds = %5
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* @var_names, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @av_expr_parse(i32** %13, i8* %23, i32 %24, i32* null, i32* null, i32* null, i32* null, i32 0, i8* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* @AV_LOG_ERROR, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @av_log(i8* %30, i32 %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %33)
  %35 = load i8*, i8** %14, align 8
  %36 = call i32 @av_free(i8* %35)
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %6, align 4
  br label %53

38:                                               ; preds = %22
  %39 = load i32**, i32*** %7, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32**, i32*** %7, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @av_expr_free(i32* %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32*, i32** %13, align 8
  %48 = load i32**, i32*** %7, align 8
  store i32* %47, i32** %48, align 8
  %49 = load i8**, i8*** %8, align 8
  %50 = call i32 @av_freep(i8** %49)
  %51 = load i8*, i8** %14, align 8
  %52 = load i8**, i8*** %8, align 8
  store i8* %51, i8** %52, align 8
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %46, %29, %19
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_expr_parse(i32**, i8*, i32, i32*, i32*, i32*, i32*, i32, i8*) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i32 @av_expr_free(i32*) #1

declare dso_local i32 @av_freep(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
