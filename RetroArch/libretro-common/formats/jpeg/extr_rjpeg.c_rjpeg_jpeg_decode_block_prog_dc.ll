; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/jpeg/extr_rjpeg.c_rjpeg_jpeg_decode_block_prog_dc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/jpeg/extr_rjpeg.c_rjpeg_jpeg_decode_block_prog_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i16*, i32*, i32)* @rjpeg_jpeg_decode_block_prog_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rjpeg_jpeg_decode_block_prog_dc(%struct.TYPE_9__* %0, i16* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i16* %1, i16** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %89

18:                                               ; preds = %4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 16
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = call i32 @rjpeg_grow_buffer_unsafe(%struct.TYPE_9__* %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %26
  store i32 0, i32* %12, align 4
  %32 = load i16*, i16** %7, align 8
  %33 = call i32 @memset(i16* %32, i32 0, i32 128)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @rjpeg_jpeg_huff_decode(%struct.TYPE_9__* %34, i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @rjpeg_extend_receive(%struct.TYPE_9__* %40, i32 %41)
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %39, %31
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i32 %54, i32* %61, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 %62, %65
  %67 = trunc i32 %66 to i16
  %68 = load i16*, i16** %7, align 8
  %69 = getelementptr inbounds i16, i16* %68, i64 0
  store i16 %67, i16* %69, align 2
  br label %88

70:                                               ; preds = %26
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = call i64 @rjpeg_jpeg_get_bit(%struct.TYPE_9__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 1, %77
  %79 = trunc i32 %78 to i16
  %80 = sext i16 %79 to i32
  %81 = load i16*, i16** %7, align 8
  %82 = getelementptr inbounds i16, i16* %81, i64 0
  %83 = load i16, i16* %82, align 2
  %84 = sext i16 %83 to i32
  %85 = add nsw i32 %84, %80
  %86 = trunc i32 %85 to i16
  store i16 %86, i16* %82, align 2
  br label %87

87:                                               ; preds = %74, %70
  br label %88

88:                                               ; preds = %87, %43
  store i32 1, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %17
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @rjpeg_grow_buffer_unsafe(%struct.TYPE_9__*) #1

declare dso_local i32 @memset(i16*, i32, i32) #1

declare dso_local i32 @rjpeg_jpeg_huff_decode(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @rjpeg_extend_receive(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @rjpeg_jpeg_get_bit(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
