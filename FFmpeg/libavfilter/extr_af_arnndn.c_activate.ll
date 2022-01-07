; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32**, i32** }

@FRAME_SIZE = common dso_local global i32 0, align 4
@FFERROR_NOT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32**, i32*** %9, align 8
  %11 = getelementptr inbounds i32*, i32** %10, i64 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32**, i32*** %14, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @FF_FILTER_FORWARD_STATUS_BACK(i32* %18, i32* %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @FRAME_SIZE, align 4
  %23 = load i32, i32* @FRAME_SIZE, align 4
  %24 = call i32 @ff_inlink_consume_samples(i32* %21, i32 %22, i32 %23, i32** %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %44

29:                                               ; preds = %1
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @filter_frame(i32* %33, i32* %34)
  store i32 %35, i32* %2, align 4
  br label %44

36:                                               ; preds = %29
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @FF_FILTER_FORWARD_STATUS(i32* %37, i32* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @FF_FILTER_FORWARD_WANTED(i32* %40, i32* %41)
  %43 = load i32, i32* @FFERROR_NOT_READY, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %36, %32, %27
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @FF_FILTER_FORWARD_STATUS_BACK(i32*, i32*) #1

declare dso_local i32 @ff_inlink_consume_samples(i32*, i32, i32, i32**) #1

declare dso_local i32 @filter_frame(i32*, i32*) #1

declare dso_local i32 @FF_FILTER_FORWARD_STATUS(i32*, i32*) #1

declare dso_local i32 @FF_FILTER_FORWARD_WANTED(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
