; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_ff_inlink_evaluate_timeline_at_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_ff_inlink_evaluate_timeline_at_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@VAR_N = common dso_local global i64 0, align 8
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@NAN = common dso_local global i32 0, align 4
@VAR_T = common dso_local global i64 0, align 8
@VAR_W = common dso_local global i64 0, align 8
@VAR_H = common dso_local global i64 0, align 8
@VAR_POS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_inlink_evaluate_timeline_at_frame(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %6, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %90

23:                                               ; preds = %2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @VAR_N, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 %26, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* @NAN, align 4
  br label %44

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @av_q2d(i32 %41)
  %43 = mul nsw i32 %38, %42
  br label %44

44:                                               ; preds = %37, %35
  %45 = phi i32 [ %36, %35 ], [ %43, %37 ]
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @VAR_T, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %45, i32* %50, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @VAR_W, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 %53, i32* %58, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @VAR_H, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 %61, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %71

69:                                               ; preds = %44
  %70 = load i32, i32* @NAN, align 4
  br label %73

71:                                               ; preds = %44
  %72 = load i32, i32* %8, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @VAR_POS, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 %74, i32* %79, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @av_expr_eval(i32 %82, i32* %85, i32* null)
  %87 = call double @fabs(i32 %86)
  %88 = fcmp oge double %87, 5.000000e-01
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %73, %22
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @av_q2d(i32) #1

declare dso_local double @fabs(i32) #1

declare dso_local i32 @av_expr_eval(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
