; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_vp9.c_dxva2_vp9_decode_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_vp9.c_dxva2_vp9_decode_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.vp9_dxva2_picture_context* }
%struct.vp9_dxva2_picture_context = type { i32, i32*, i32 }

@CUR_FRAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32)* @dxva2_vp9_decode_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dxva2_vp9_decode_slice(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.vp9_dxva2_picture_context*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load i64, i64* @CUR_FRAME, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.vp9_dxva2_picture_context*, %struct.vp9_dxva2_picture_context** %18, align 8
  store %struct.vp9_dxva2_picture_context* %19, %struct.vp9_dxva2_picture_context** %8, align 8
  %20 = load %struct.vp9_dxva2_picture_context*, %struct.vp9_dxva2_picture_context** %8, align 8
  %21 = getelementptr inbounds %struct.vp9_dxva2_picture_context, %struct.vp9_dxva2_picture_context* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.vp9_dxva2_picture_context*, %struct.vp9_dxva2_picture_context** %8, align 8
  %27 = getelementptr inbounds %struct.vp9_dxva2_picture_context, %struct.vp9_dxva2_picture_context* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  br label %28

28:                                               ; preds = %24, %3
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.vp9_dxva2_picture_context*, %struct.vp9_dxva2_picture_context** %8, align 8
  %31 = getelementptr inbounds %struct.vp9_dxva2_picture_context, %struct.vp9_dxva2_picture_context* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.vp9_dxva2_picture_context*, %struct.vp9_dxva2_picture_context** %8, align 8
  %36 = getelementptr inbounds %struct.vp9_dxva2_picture_context, %struct.vp9_dxva2_picture_context* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = ptrtoint i32* %34 to i64
  %39 = ptrtoint i32* %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load %struct.vp9_dxva2_picture_context*, %struct.vp9_dxva2_picture_context** %8, align 8
  %44 = getelementptr inbounds %struct.vp9_dxva2_picture_context, %struct.vp9_dxva2_picture_context* %43, i32 0, i32 0
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @fill_slice_short(i32* %44, i32 %45, i32 %46)
  ret i32 0
}

declare dso_local i32 @fill_slice_short(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
