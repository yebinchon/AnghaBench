; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggenc.c_ogg_write_trailer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggenc.c_ogg_write_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @ogg_write_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ogg_write_trailer(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %5
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %14, i64 %16
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %4, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %11
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = call i32 @ogg_buffer_page(%struct.TYPE_12__* %27, %struct.TYPE_11__* %28)
  br label %30

30:                                               ; preds = %26, %11
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %5

34:                                               ; preds = %5
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %36 = call i32 @ogg_write_pages(%struct.TYPE_12__* %35, i32 1)
  ret i32 0
}

declare dso_local i32 @ogg_buffer_page(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @ogg_write_pages(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
