; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libcodec2.c_libcodec2_encode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libcodec2.c_libcodec2_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_11__*, %struct.TYPE_12__*, i32*)* @libcodec2_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libcodec2_encode(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %10, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %11, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ff_alloc_packet2(%struct.TYPE_13__* %22, %struct.TYPE_11__* %23, i32 %26, i32 0)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %5, align 4
  br label %42

32:                                               ; preds = %4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @codec2_encode(i32 %35, i32 %38, i32* %39)
  %41 = load i32*, i32** %9, align 8
  store i32 1, i32* %41, align 4
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %32, %30
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_13__*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @codec2_encode(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
