; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_avfilter_link_free.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_avfilter_link_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @avfilter_link_free(%struct.TYPE_4__** %0) #0 {
  %2 = alloca %struct.TYPE_4__**, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %2, align 8
  %3 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = icmp ne %struct.TYPE_4__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %23

7:                                                ; preds = %1
  %8 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = call i32 @av_frame_free(i32* %10)
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = call i32 @ff_framequeue_free(i32* %14)
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to i32**
  %20 = call i32 @ff_frame_pool_uninit(i32** %19)
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %22 = call i32 @av_freep(%struct.TYPE_4__** %21)
  br label %23

23:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @av_frame_free(i32*) #1

declare dso_local i32 @ff_framequeue_free(i32*) #1

declare dso_local i32 @ff_frame_pool_uninit(i32**) #1

declare dso_local i32 @av_freep(%struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
