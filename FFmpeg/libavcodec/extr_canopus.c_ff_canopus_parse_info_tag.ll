; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_canopus.c_ff_canopus_parse_info_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_canopus.c_ff_canopus_parse_info_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@AV_FIELD_TT = common dso_local global i32 0, align 4
@AV_FIELD_BB = common dso_local global i32 0, align 4
@AV_FIELD_PROGRESSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_canopus_parse_info_tag(%struct.TYPE_5__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @bytestream2_init(i32* %8, i32* %12, i64 %13)
  %15 = call i32 @bytestream2_skip(i32* %8, i32 8)
  %16 = call i32 @bytestream2_get_le32(i32* %8)
  store i32 %16, i32* %9, align 4
  %17 = call i32 @bytestream2_get_le32(i32* %8)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @av_reduce(i32* %26, i32* %29, i32 %30, i32 %31, i32 255)
  br label %33

33:                                               ; preds = %23, %20, %3
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %34, 24
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %55

37:                                               ; preds = %33
  %38 = call i32 @bytestream2_skip(i32* %8, i32 16)
  %39 = call i32 @bytestream2_skip(i32* %8, i32 8)
  %40 = call i32 @bytestream2_get_le32(i32* %8)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  switch i32 %41, label %54 [
    i32 0, label %42
    i32 1, label %46
    i32 2, label %50
  ]

42:                                               ; preds = %37
  %43 = load i32, i32* @AV_FIELD_TT, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %54

46:                                               ; preds = %37
  %47 = load i32, i32* @AV_FIELD_BB, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %54

50:                                               ; preds = %37
  %51 = load i32, i32* @AV_FIELD_PROGRESSIVE, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %37, %50, %46, %42
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @bytestream2_init(i32*, i32*, i64) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @av_reduce(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
