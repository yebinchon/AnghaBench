; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_allformats.c_av_iformat_next.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_allformats.c_av_iformat_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@av_format_next_init = common dso_local global i32 0, align 4
@av_format_init_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @av_iformat_next(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load i32, i32* @av_format_init_next, align 4
  %6 = call i32 @ff_thread_once(i32* @av_format_next_init, i32 %5)
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %2, align 8
  br label %16

13:                                               ; preds = %1
  store i8* null, i8** %4, align 8
  %14 = call i64 @av_demuxer_iterate(i8** %4)
  %15 = inttoptr i64 %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %2, align 8
  br label %16

16:                                               ; preds = %13, %9
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %17
}

declare dso_local i32 @ff_thread_once(i32*, i32) #1

declare dso_local i64 @av_demuxer_iterate(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
