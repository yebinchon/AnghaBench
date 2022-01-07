; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_new_buf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_new_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32, i32, i32*, i64 }

@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ogg*, i32)* @ogg_new_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ogg_new_buf(%struct.ogg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ogg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ogg_stream*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ogg* %0, %struct.ogg** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ogg*, %struct.ogg** %4, align 8
  %10 = getelementptr inbounds %struct.ogg, %struct.ogg* %9, i32 0, i32 0
  %11 = load %struct.ogg_stream*, %struct.ogg_stream** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %11, i64 %13
  store %struct.ogg_stream* %14, %struct.ogg_stream** %6, align 8
  %15 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %16 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32* @av_malloc(i64 %19)
  store i32* %20, i32** %7, align 8
  %21 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %22 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %25 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = call i32 @AVERROR(i32 %31)
  store i32 %32, i32* %3, align 4
  br label %63

33:                                               ; preds = %2
  %34 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %35 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %41 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %44 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @memcpy(i32* %39, i32* %47, i32 %48)
  %50 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %51 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @av_free(i32* %52)
  br label %54

54:                                               ; preds = %38, %33
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %57 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %56, i32 0, i32 2
  store i32* %55, i32** %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %60 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ogg_stream*, %struct.ogg_stream** %6, align 8
  %62 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %54, %30
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32* @av_malloc(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
