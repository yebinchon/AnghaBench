; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_eq.c_set_expr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_eq.c_set_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@var_names = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Error when parsing the expression '%s' for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i8*, i8*)* @set_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_expr(i32** %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* null, i32** %11, align 8
  %12 = load i32**, i32*** %6, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32**, i32*** %6, align 8
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %11, align 8
  br label %18

18:                                               ; preds = %15, %4
  %19 = load i32**, i32*** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* @var_names, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @av_expr_parse(i32** %19, i8* %20, i32 %21, i32* null, i32* null, i32* null, i32* null, i32 0, i8* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* @AV_LOG_ERROR, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @av_log(i8* %27, i32 %28, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %30)
  %32 = load i32*, i32** %11, align 8
  %33 = load i32**, i32*** %6, align 8
  store i32* %32, i32** %33, align 8
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %38

35:                                               ; preds = %18
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @av_expr_free(i32* %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %26
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @av_expr_parse(i32**, i8*, i32, i32*, i32*, i32*, i32*, i32, i8*) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @av_expr_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
