; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_pva.c_pva_read_timestamp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_pva.c_pva_read_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVFormatContext = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@PVA_MAX_PAYLOAD_LENGTH = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.AVFormatContext*, i32, i64*, i64)* @pva_read_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pva_read_timestamp(%struct.AVFormatContext* %0, i32 %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.AVFormatContext*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.AVFormatContext* %0, %struct.AVFormatContext** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.AVFormatContext*, %struct.AVFormatContext** %5, align 8
  %15 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  %17 = load %struct.AVFormatContext*, %struct.AVFormatContext** %5, align 8
  %18 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %10, align 8
  %20 = load i64, i64* @AV_NOPTS_VALUE, align 8
  store i64 %20, i64* %13, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @PVA_MAX_PAYLOAD_LENGTH, align 4
  %24 = mul nsw i32 %23, 8
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i64 @FFMIN(i64 %26, i64 %30)
  store i64 %31, i64* %8, align 8
  br label %32

32:                                               ; preds = %62, %49, %4
  %33 = load i64*, i64** %7, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %32
  %38 = load i64, i64* @AV_NOPTS_VALUE, align 8
  store i64 %38, i64* %13, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @SEEK_SET, align 4
  %43 = call i32 @avio_seek(i32* %39, i64 %41, i32 %42)
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.AVFormatContext*, %struct.AVFormatContext** %5, align 8
  %47 = call i64 @read_part_of_packet(%struct.AVFormatContext* %46, i64* %13, i32* %11, i32* %12, i32 0)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load i64*, i64** %7, align 8
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  br label %32

53:                                               ; preds = %37
  %54 = load i32, i32* %12, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58, %53
  %63 = load i32*, i32** %9, align 8
  %64 = call i64 @avio_tell(i32* %63)
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = load i64*, i64** %7, align 8
  store i64 %67, i64* %68, align 8
  br label %32

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %32
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* %13, align 8
  ret i64 %73
}

declare dso_local i64 @FFMIN(i64, i64) #1

declare dso_local i32 @avio_seek(i32*, i64, i32) #1

declare dso_local i64 @read_part_of_packet(%struct.AVFormatContext*, i64*, i32*, i32*, i32) #1

declare dso_local i64 @avio_tell(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
