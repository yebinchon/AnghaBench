; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_layout.c_video_layout_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_layout.c_video_layout_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32**, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@video_layout_state = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @video_layout_init(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @video_layout_state, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call i32 (...) @video_layout_deinit()
  br label %9

9:                                                ; preds = %7, %2
  %10 = call i64 @calloc(i32 1, i32 32)
  %11 = inttoptr i64 %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** @video_layout_state, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @video_layout_state, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i8* %12, i8** %15, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @video_layout_state, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @video_layout_state, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = bitcast i32*** %20 to i8**
  %22 = call i32 @vec_size(i8** %21, i32 8, i32 1)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @video_layout_state, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @video_layout_state, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  ret void
}

declare dso_local i32 @video_layout_deinit(...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @vec_size(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
