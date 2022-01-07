; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_adtsenc.c_adts_write_frame_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_adtsenc.c_adts_write_frame_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@ADTS_HEADER_SIZE = common dso_local global i64 0, align 8
@ADTS_MAX_FRAME_BYTES = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ADTS frame size too large: %u (max %d)\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32)* @adts_write_frame_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adts_write_frame_header(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* @ADTS_HEADER_SIZE, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* %8, align 4
  %15 = add i32 %13, %14
  %16 = load i32, i32* %9, align 4
  %17 = add i32 %15, %16
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @ADTS_MAX_FRAME_BYTES, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i32, i32* @AV_LOG_ERROR, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @ADTS_MAX_FRAME_BYTES, align 4
  %25 = call i32 @av_log(i32* null, i32 %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %26, i32* %5, align 4
  br label %57

27:                                               ; preds = %4
  %28 = load i32*, i32** %7, align 8
  %29 = load i64, i64* @ADTS_HEADER_SIZE, align 8
  %30 = call i32 @init_put_bits(i32* %10, i32* %28, i64 %29)
  %31 = call i32 @put_bits(i32* %10, i32 12, i32 4095)
  %32 = call i32 @put_bits(i32* %10, i32 1, i32 0)
  %33 = call i32 @put_bits(i32* %10, i32 2, i32 0)
  %34 = call i32 @put_bits(i32* %10, i32 1, i32 1)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @put_bits(i32* %10, i32 2, i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @put_bits(i32* %10, i32 4, i32 %41)
  %43 = call i32 @put_bits(i32* %10, i32 1, i32 0)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @put_bits(i32* %10, i32 3, i32 %46)
  %48 = call i32 @put_bits(i32* %10, i32 1, i32 0)
  %49 = call i32 @put_bits(i32* %10, i32 1, i32 0)
  %50 = call i32 @put_bits(i32* %10, i32 1, i32 0)
  %51 = call i32 @put_bits(i32* %10, i32 1, i32 0)
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @put_bits(i32* %10, i32 13, i32 %52)
  %54 = call i32 @put_bits(i32* %10, i32 11, i32 2047)
  %55 = call i32 @put_bits(i32* %10, i32 2, i32 0)
  %56 = call i32 @flush_put_bits(i32* %10)
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %27, %21
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @av_log(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @init_put_bits(i32*, i32*, i64) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @flush_put_bits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
