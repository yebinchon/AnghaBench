; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_read_source_clip.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_read_source_clip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i32, i32, i32)* @mxf_read_source_clip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxf_read_source_clip(i8* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %13, align 8
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %43 [
    i32 514, label %17
    i32 4609, label %22
    i32 4353, label %27
    i32 4354, label %38
  ]

17:                                               ; preds = %6
  %18 = load i32*, i32** %8, align 8
  %19 = call i8* @avio_rb64(i32* %18)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  br label %43

22:                                               ; preds = %6
  %23 = load i32*, i32** %8, align 8
  %24 = call i8* @avio_rb64(i32* %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  br label %43

27:                                               ; preds = %6
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @avio_read(i32* %28, i32 %31, i32 16)
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @avio_read(i32* %33, i32 %36, i32 16)
  br label %43

38:                                               ; preds = %6
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @avio_rb32(i32* %39)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %6, %38, %27, %22, %17
  ret i32 0
}

declare dso_local i8* @avio_rb64(i32*) #1

declare dso_local i32 @avio_read(i32*, i32, i32) #1

declare dso_local i32 @avio_rb32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
