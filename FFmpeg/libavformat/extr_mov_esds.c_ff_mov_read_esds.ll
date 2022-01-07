; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov_esds.c_ff_mov_read_esds.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov_esds.c_ff_mov_read_esds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32** }

@MP4ESDescrTag = common dso_local global i32 0, align 4
@MP4DecConfigDescrTag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mov_read_esds(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32**, i32*** %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %17, i64 %22
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @avio_rb32(i32* %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @ff_mp4_read_descr(%struct.TYPE_5__* %27, i32* %28, i32* %7)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @MP4ESDescrTag, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %14
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @ff_mp4_parse_es_descr(i32* %34, i32* null)
  br label %39

36:                                               ; preds = %14
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @avio_rb16(i32* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @ff_mp4_read_descr(%struct.TYPE_5__* %40, i32* %41, i32* %7)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @MP4DecConfigDescrTag, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @ff_mp4_read_dec_config_descr(%struct.TYPE_5__* %47, i32* %48, i32* %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %46, %39
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %13
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i32 @ff_mp4_read_descr(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @ff_mp4_parse_es_descr(i32*, i32*) #1

declare dso_local i32 @avio_rb16(i32*) #1

declare dso_local i32 @ff_mp4_read_dec_config_descr(%struct.TYPE_5__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
