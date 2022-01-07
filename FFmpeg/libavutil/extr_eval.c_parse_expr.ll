; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_eval.c_parse_expr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_eval.c_parse_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8* }

@EINVAL = common dso_local global i32 0, align 4
@e_last = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.TYPE_4__*)* @parse_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_expr(i32** %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = call i32 @AVERROR(i32 %15)
  store i32 %16, i32* %3, align 4
  br label %70

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = call i32 @parse_subexpr(i32** %7, %struct.TYPE_4__* %22)
  store i32 %23, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %70

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %62, %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 59
  br i1 %34, label %35, label %63

35:                                               ; preds = %28
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %37, align 8
  %40 = load i32*, i32** %7, align 8
  store i32* %40, i32** %8, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = call i32 @parse_subexpr(i32** %9, %struct.TYPE_4__* %41)
  store i32 %42, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @av_expr_free(i32* %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %70

48:                                               ; preds = %35
  %49 = load i32, i32* @e_last, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32* @make_eval_expr(i32 %49, i32 1, i32* %50, i32* %51)
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @av_expr_free(i32* %56)
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @av_expr_free(i32* %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = call i32 @AVERROR(i32 %60)
  store i32 %61, i32* %3, align 4
  br label %70

62:                                               ; preds = %48
  br label %28

63:                                               ; preds = %28
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i32**, i32*** %4, align 8
  store i32* %68, i32** %69, align 8
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %63, %55, %44, %25, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @parse_subexpr(i32**, %struct.TYPE_4__*) #1

declare dso_local i32 @av_expr_free(i32*) #1

declare dso_local i32* @make_eval_expr(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
