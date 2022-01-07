; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_ff_inlink_consume_samples.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_ff_inlink_consume_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_inlink_consume_samples(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @av_assert1(i32 %12)
  %14 = load i32**, i32*** %9, align 8
  store i32* null, i32** %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @ff_inlink_check_available_samples(%struct.TYPE_6__* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %46

20:                                               ; preds = %4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @ff_framequeue_queued_samples(i32* %28)
  %30 = call i32 @FFMIN(i32 %26, i32 %29)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @take_samples(%struct.TYPE_6__* %32, i32 %33, i32 %34, i32** %10)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %5, align 4
  br label %46

40:                                               ; preds = %31
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @consume_update(%struct.TYPE_6__* %41, i32* %42)
  %44 = load i32*, i32** %10, align 8
  %45 = load i32**, i32*** %9, align 8
  store i32* %44, i32** %45, align 8
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %40, %38, %19
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i32 @ff_inlink_check_available_samples(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_framequeue_queued_samples(i32*) #1

declare dso_local i32 @take_samples(%struct.TYPE_6__*, i32, i32, i32**) #1

declare dso_local i32 @consume_update(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
