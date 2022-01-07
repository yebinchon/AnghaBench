; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ass_split.c_ff_ass_split_free.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ass_split.c_ff_ass_split_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@ass_sections = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_ass_split_free(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = icmp ne %struct.TYPE_5__* %4, null
  br i1 %5, label %6, label %32

6:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %26, %6
  %8 = load i32, i32* %3, align 4
  %9 = load i32*, i32** @ass_sections, align 8
  %10 = call i32 @FF_ARRAY_ELEMS(i32* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %7
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = load i32*, i32** @ass_sections, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call i32 @free_section(%struct.TYPE_5__* %13, i32* %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @av_freep(i32* %24)
  br label %26

26:                                               ; preds = %12
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %7

29:                                               ; preds = %7
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = call i32 @av_free(%struct.TYPE_5__* %30)
  br label %32

32:                                               ; preds = %29, %1
  ret void
}

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @free_section(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @av_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
