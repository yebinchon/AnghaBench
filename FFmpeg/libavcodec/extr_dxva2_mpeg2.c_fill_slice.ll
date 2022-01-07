; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_mpeg2.c_fill_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_mpeg2.c_fill_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MpegEncContext = type { i64, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i64, i64, i64, i64, i64 }

@PICT_FRAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.MpegEncContext*, %struct.TYPE_4__*, i32, i32*, i32)* @fill_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_slice(i32* %0, %struct.MpegEncContext* %1, %struct.TYPE_4__* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.MpegEncContext*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.MpegEncContext* %1, %struct.MpegEncContext** %8, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.MpegEncContext*, %struct.MpegEncContext** %8, align 8
  %16 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PICT_FRAME, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %13, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %22 = call i32 @memset(%struct.TYPE_4__* %21, i32 0, i32 72)
  %23 = load %struct.MpegEncContext*, %struct.MpegEncContext** %8, align 8
  %24 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 9
  store i64 %25, i64* %27, align 8
  %28 = load %struct.MpegEncContext*, %struct.MpegEncContext** %8, align 8
  %29 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = ashr i32 %30, %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %12, align 4
  %36 = mul i32 8, %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 8
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 7
  store i64 0, i64* %45, align 8
  %46 = load %struct.MpegEncContext*, %struct.MpegEncContext** %8, align 8
  %47 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = ashr i32 %48, %49
  %51 = load %struct.MpegEncContext*, %struct.MpegEncContext** %8, align 8
  %52 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = sext i32 %54 to i64
  %56 = load %struct.MpegEncContext*, %struct.MpegEncContext** %8, align 8
  %57 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 6
  store i64 %59, i64* %61, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 5
  store i64 0, i64* %63, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = load i32, i32* %12, align 4
  %67 = sub i32 %66, 4
  %68 = mul i32 8, %67
  %69 = call i32 @init_get_bits(i32* %14, i32* %65, i32 %68)
  %70 = call i32 @get_bits(i32* %14, i32 5)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = call i32 @skip_1stop_8data_bits(i32* %14)
  %74 = call i64 @get_bits_count(i32* %14)
  %75 = add nsw i64 32, %74
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  store i64 %75, i64* %77, align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @skip_1stop_8data_bits(i32*) #1

declare dso_local i64 @get_bits_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
