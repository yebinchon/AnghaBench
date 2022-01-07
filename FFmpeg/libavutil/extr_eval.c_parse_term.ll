; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_eval.c_parse_term.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_eval.c_parse_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@e_mul = common dso_local global i32 0, align 4
@e_div = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.TYPE_4__*)* @parse_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_term(i32** %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = call i32 @parse_factor(i32** %7, %struct.TYPE_4__* %11)
  store i32 %12, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %75

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %71, %16
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 42
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 47
  br label %33

33:                                               ; preds = %25, %17
  %34 = phi i1 [ true, %17 ], [ %32, %25 ]
  br i1 %34, label %35, label %72

35:                                               ; preds = %33
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %37, align 8
  %40 = load i8, i8* %38, align 1
  %41 = sext i8 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load i32*, i32** %7, align 8
  store i32* %42, i32** %8, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = call i32 @parse_factor(i32** %9, %struct.TYPE_4__* %43)
  store i32 %44, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @av_expr_free(i32* %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %75

50:                                               ; preds = %35
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 42
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @e_mul, align 4
  br label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @e_div, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = load i32*, i32** %8, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = call i32* @make_eval_expr(i32 %58, i32 1, i32* %59, i32* %60)
  store i32* %61, i32** %7, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @av_expr_free(i32* %65)
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @av_expr_free(i32* %67)
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = call i32 @AVERROR(i32 %69)
  store i32 %70, i32* %3, align 4
  br label %75

71:                                               ; preds = %57
  br label %17

72:                                               ; preds = %33
  %73 = load i32*, i32** %7, align 8
  %74 = load i32**, i32*** %4, align 8
  store i32* %73, i32** %74, align 8
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %64, %46, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @parse_factor(i32**, %struct.TYPE_4__*) #1

declare dso_local i32 @av_expr_free(i32*) #1

declare dso_local i32* @make_eval_expr(i32, i32, i32*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
