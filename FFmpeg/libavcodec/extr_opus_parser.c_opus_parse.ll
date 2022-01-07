; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_parser.c_opus_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_parser.c_opus_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32**, i32*, i32*, i32)* @opus_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opus_parse(%struct.TYPE_6__* %0, i32* %1, i32** %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %14, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i32* %22, i32** %15, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @opus_find_frame_end(%struct.TYPE_6__* %23, i32* %24, i32* %25, i32 %26, i32* %17)
  store i32 %27, i32* %16, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %6
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i32*, i32** %15, align 8
  %38 = load i32, i32* %16, align 4
  %39 = call i64 @ff_combine_frame(i32* %37, i32 %38, i32** %12, i32* %13)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32**, i32*** %10, align 8
  store i32* null, i32** %42, align 8
  %43 = load i32*, i32** %11, align 8
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %7, align 4
  br label %64

45:                                               ; preds = %36, %32, %6
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32**, i32*** %10, align 8
  store i32* null, i32** %50, align 8
  %51 = load i32*, i32** %11, align 8
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %7, align 4
  br label %64

53:                                               ; preds = %45
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %17, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32**, i32*** %10, align 8
  store i32* %57, i32** %58, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %17, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i32*, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %53, %49, %41
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @opus_find_frame_end(%struct.TYPE_6__*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @ff_combine_frame(i32*, i32, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
