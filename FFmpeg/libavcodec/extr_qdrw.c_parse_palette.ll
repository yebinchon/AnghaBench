; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdrw.c_parse_palette.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdrw.c_parse_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Palette index out of range: %u\0A\00", align 1
@AV_PIX_FMT_PAL8 = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*, i32, i32)* @parse_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_palette(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %76, %5
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %79

21:                                               ; preds = %17
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @bytestream2_get_be16(i32* %22)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp ugt i32 %24, 255
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = load i32, i32* @AV_LOG_WARNING, align 4
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @av_log(%struct.TYPE_4__* %30, i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @bytestream2_skip(i32* %34, i32 6)
  br label %76

36:                                               ; preds = %26, %21
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %43, i32* %6, align 4
  br label %80

44:                                               ; preds = %36
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @bytestream2_get_byte(i32* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @bytestream2_skip(i32* %47, i32 1)
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @bytestream2_get_byte(i32* %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @bytestream2_skip(i32* %51, i32 1)
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @bytestream2_get_byte(i32* %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @bytestream2_skip(i32* %55, i32 1)
  %57 = load i32, i32* %13, align 4
  %58 = shl i32 %57, 16
  %59 = or i32 -16777216, %58
  %60 = load i32, i32* %14, align 4
  %61 = shl i32 %60, 8
  %62 = or i32 %59, %61
  %63 = load i32, i32* %15, align 4
  %64 = or i32 %62, %63
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %44
  %69 = load i32, i32* %12, align 4
  br label %72

70:                                               ; preds = %44
  %71 = load i32, i32* %16, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %65, i64 %74
  store i32 %64, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %29
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %17

79:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %42
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @bytestream2_get_be16(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_4__*, i32, i8*, i32) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
