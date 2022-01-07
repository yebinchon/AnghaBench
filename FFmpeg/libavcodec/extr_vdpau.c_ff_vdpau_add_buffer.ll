; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau.c_ff_vdpau_add_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau.c_ff_vdpau_add_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdpau_picture_context = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@VDP_BITSTREAM_BUFFER_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_vdpau_add_buffer(%struct.vdpau_picture_context* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vdpau_picture_context*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.vdpau_picture_context* %0, %struct.vdpau_picture_context** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %5, align 8
  %10 = getelementptr inbounds %struct.vdpau_picture_context, %struct.vdpau_picture_context* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %13 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %5, align 8
  %14 = getelementptr inbounds %struct.vdpau_picture_context, %struct.vdpau_picture_context* %13, i32 0, i32 2
  %15 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %5, align 8
  %16 = getelementptr inbounds %struct.vdpau_picture_context, %struct.vdpau_picture_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 24
  %21 = trunc i64 %20 to i32
  %22 = call %struct.TYPE_4__* @av_fast_realloc(%struct.TYPE_4__* %12, i32* %14, i32 %21)
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %8, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = call i32 @AVERROR(i32 %26)
  store i32 %27, i32* %4, align 4
  br label %48

28:                                               ; preds = %3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %5, align 8
  %31 = getelementptr inbounds %struct.vdpau_picture_context, %struct.vdpau_picture_context* %30, i32 0, i32 1
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %31, align 8
  %32 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %5, align 8
  %33 = getelementptr inbounds %struct.vdpau_picture_context, %struct.vdpau_picture_context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %37
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %8, align 8
  %39 = load i32, i32* @VDP_BITSTREAM_BUFFER_VERSION, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %28, %25
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_4__* @av_fast_realloc(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
