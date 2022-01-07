; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_eval.c_parse_factor.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_eval.c_parse_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i8* }

@e_pow = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__**, %struct.TYPE_13__*)* @parse_factor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_factor(%struct.TYPE_14__** %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__**, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = call i32 @parse_dB(%struct.TYPE_14__** %9, %struct.TYPE_13__* %12, i32* %6)
  store i32 %13, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %85

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %71, %17
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 94
  br i1 %25, label %26, label %72

26:                                               ; preds = %18
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %10, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %29, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = call i32 @parse_dB(%struct.TYPE_14__** %11, %struct.TYPE_13__* %32, i32* %7)
  store i32 %33, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %37 = call i32 @av_expr_free(%struct.TYPE_14__* %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %85

39:                                               ; preds = %26
  %40 = load i32, i32* @e_pow, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %43 = call %struct.TYPE_14__* @make_eval_expr(i32 %40, i32 1, %struct.TYPE_14__* %41, %struct.TYPE_14__* %42)
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %9, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %45 = icmp ne %struct.TYPE_14__* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %48 = call i32 @av_expr_free(%struct.TYPE_14__* %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %50 = call i32 @av_expr_free(%struct.TYPE_14__* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = call i32 @AVERROR(i32 %51)
  store i32 %52, i32* %3, align 4
  br label %85

53:                                               ; preds = %39
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %56, i64 1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = icmp ne %struct.TYPE_12__* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %53
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, 1
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %65, i64 1
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, %62
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %60, %53
  br label %18

72:                                               ; preds = %18
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %74 = icmp ne %struct.TYPE_14__* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, 1
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %75, %72
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %84 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  store %struct.TYPE_14__* %83, %struct.TYPE_14__** %84, align 8
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %82, %46, %35, %15
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @parse_dB(%struct.TYPE_14__**, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @av_expr_free(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @make_eval_expr(i32, i32, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
