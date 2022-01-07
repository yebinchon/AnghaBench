; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_free_representation.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_free_representation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.representation = type { %struct.representation*, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__, %struct.representation*, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { %struct.representation* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.representation*)* @free_representation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_representation(%struct.representation* %0) #0 {
  %2 = alloca %struct.representation*, align 8
  store %struct.representation* %0, %struct.representation** %2, align 8
  %3 = load %struct.representation*, %struct.representation** %2, align 8
  %4 = call i32 @free_fragment_list(%struct.representation* %3)
  %5 = load %struct.representation*, %struct.representation** %2, align 8
  %6 = call i32 @free_timelines_list(%struct.representation* %5)
  %7 = load %struct.representation*, %struct.representation** %2, align 8
  %8 = getelementptr inbounds %struct.representation, %struct.representation* %7, i32 0, i32 7
  %9 = call i32 @free_fragment(i32* %8)
  %10 = load %struct.representation*, %struct.representation** %2, align 8
  %11 = getelementptr inbounds %struct.representation, %struct.representation* %10, i32 0, i32 6
  %12 = call i32 @free_fragment(i32* %11)
  %13 = load %struct.representation*, %struct.representation** %2, align 8
  %14 = getelementptr inbounds %struct.representation, %struct.representation* %13, i32 0, i32 5
  %15 = call i32 @av_freep(%struct.representation** %14)
  %16 = load %struct.representation*, %struct.representation** %2, align 8
  %17 = getelementptr inbounds %struct.representation, %struct.representation* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @av_freep(%struct.representation** %18)
  %20 = load %struct.representation*, %struct.representation** %2, align 8
  %21 = getelementptr inbounds %struct.representation, %struct.representation* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.representation*, %struct.representation** %2, align 8
  %24 = getelementptr inbounds %struct.representation, %struct.representation* %23, i32 0, i32 2
  %25 = call i32 @ff_format_io_close(i32 %22, i32* %24)
  %26 = load %struct.representation*, %struct.representation** %2, align 8
  %27 = getelementptr inbounds %struct.representation, %struct.representation* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %1
  %31 = load %struct.representation*, %struct.representation** %2, align 8
  %32 = getelementptr inbounds %struct.representation, %struct.representation* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load %struct.representation*, %struct.representation** %2, align 8
  %36 = getelementptr inbounds %struct.representation, %struct.representation* %35, i32 0, i32 1
  %37 = call i32 @avformat_close_input(%struct.TYPE_4__** %36)
  br label %38

38:                                               ; preds = %30, %1
  %39 = load %struct.representation*, %struct.representation** %2, align 8
  %40 = getelementptr inbounds %struct.representation, %struct.representation* %39, i32 0, i32 0
  %41 = call i32 @av_freep(%struct.representation** %40)
  %42 = call i32 @av_freep(%struct.representation** %2)
  ret void
}

declare dso_local i32 @free_fragment_list(%struct.representation*) #1

declare dso_local i32 @free_timelines_list(%struct.representation*) #1

declare dso_local i32 @free_fragment(i32*) #1

declare dso_local i32 @av_freep(%struct.representation**) #1

declare dso_local i32 @ff_format_io_close(i32, i32*) #1

declare dso_local i32 @avformat_close_input(%struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
