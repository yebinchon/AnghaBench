; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_parsers.c_av_parser_init_next.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_parsers.c_av_parser_init_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.TYPE_2__* }

@parser_list = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @av_parser_init_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @av_parser_init_next() #0 {
  %1 = alloca %struct.TYPE_2__*, align 8
  %2 = alloca %struct.TYPE_2__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %1, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %20, %0
  %5 = load i64*, i64** @parser_list, align 8
  %6 = load i32, i32* %3, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %3, align 4
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds i64, i64* %5, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %2, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %2, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %19, align 8
  br label %20

20:                                               ; preds = %16, %13
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %2, align 8
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %1, align 8
  br label %4

22:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
