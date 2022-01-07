; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_jpeg.c_jpeg_create_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_jpeg.c_jpeg_create_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }

@SOI = common dso_local global i32 0, align 4
@APP0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"JFIF\00", align 1
@DRI = common dso_local global i32 0, align 4
@DQT = common dso_local global i32 0, align 4
@DHT = common dso_local global i32 0, align 4
@avpriv_mjpeg_bits_dc_luminance = common dso_local global i32 0, align 4
@avpriv_mjpeg_val_dc = common dso_local global i32 0, align 4
@avpriv_mjpeg_bits_dc_chrominance = common dso_local global i32 0, align 4
@avpriv_mjpeg_bits_ac_luminance = common dso_local global i32 0, align 4
@avpriv_mjpeg_val_ac_luminance = common dso_local global i32 0, align 4
@avpriv_mjpeg_bits_ac_chrominance = common dso_local global i32 0, align 4
@avpriv_mjpeg_val_ac_chrominance = common dso_local global i32 0, align 4
@SOF0 = common dso_local global i32 0, align 4
@SOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32, i8*, i32, i32)* @jpeg_create_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jpeg_create_header(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @bytestream2_init_writer(%struct.TYPE_9__* %17, i8* %21, i32 %22)
  %24 = load i32, i32* %12, align 4
  %25 = shl i32 %24, 3
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = shl i32 %26, 3
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* @SOI, align 4
  %29 = call i32 @jpeg_put_marker(%struct.TYPE_9__* %17, i32 %28)
  %30 = load i32, i32* @APP0, align 4
  %31 = call i32 @jpeg_put_marker(%struct.TYPE_9__* %17, i32 %30)
  %32 = call i32 @bytestream2_put_be16(%struct.TYPE_9__* %17, i32 16)
  %33 = call i32 @bytestream2_put_buffer(%struct.TYPE_9__* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 5)
  %34 = call i32 @bytestream2_put_be16(%struct.TYPE_9__* %17, i32 513)
  %35 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 0)
  %36 = call i32 @bytestream2_put_be16(%struct.TYPE_9__* %17, i32 1)
  %37 = call i32 @bytestream2_put_be16(%struct.TYPE_9__* %17, i32 1)
  %38 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 0)
  %39 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 0)
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %8
  %43 = load i32, i32* @DRI, align 4
  %44 = call i32 @jpeg_put_marker(%struct.TYPE_9__* %17, i32 %43)
  %45 = call i32 @bytestream2_put_be16(%struct.TYPE_9__* %17, i32 4)
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @bytestream2_put_be16(%struct.TYPE_9__* %17, i32 %46)
  br label %48

48:                                               ; preds = %42, %8
  %49 = load i32, i32* @DQT, align 4
  %50 = call i32 @jpeg_put_marker(%struct.TYPE_9__* %17, i32 %49)
  %51 = load i32, i32* %15, align 4
  %52 = mul nsw i32 %51, 65
  %53 = add nsw i32 2, %52
  %54 = call i32 @bytestream2_put_be16(%struct.TYPE_9__* %17, i32 %53)
  store i32 0, i32* %20, align 4
  br label %55

55:                                               ; preds = %68, %48
  %56 = load i32, i32* %20, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i32, i32* %20, align 4
  %61 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 %60)
  %62 = load i8*, i8** %14, align 8
  %63 = load i32, i32* %20, align 4
  %64 = mul nsw i32 64, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = call i32 @bytestream2_put_buffer(%struct.TYPE_9__* %17, i8* %66, i32 64)
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %20, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %20, align 4
  br label %55

71:                                               ; preds = %55
  %72 = load i32, i32* @DHT, align 4
  %73 = call i32 @jpeg_put_marker(%struct.TYPE_9__* %17, i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %18, align 8
  %76 = call i32 @bytestream2_put_be16(%struct.TYPE_9__* %17, i32 0)
  store i32 2, i32* %19, align 4
  %77 = load i32, i32* @avpriv_mjpeg_bits_dc_luminance, align 4
  %78 = load i32, i32* @avpriv_mjpeg_val_dc, align 4
  %79 = call i64 @jpeg_create_huffman_table(%struct.TYPE_9__* %17, i32 0, i32 0, i32 %77, i32 %78)
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %19, align 4
  %84 = load i32, i32* @avpriv_mjpeg_bits_dc_chrominance, align 4
  %85 = load i32, i32* @avpriv_mjpeg_val_dc, align 4
  %86 = call i64 @jpeg_create_huffman_table(%struct.TYPE_9__* %17, i32 0, i32 1, i32 %84, i32 %85)
  %87 = load i32, i32* %19, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %19, align 4
  %91 = load i32, i32* @avpriv_mjpeg_bits_ac_luminance, align 4
  %92 = load i32, i32* @avpriv_mjpeg_val_ac_luminance, align 4
  %93 = call i64 @jpeg_create_huffman_table(%struct.TYPE_9__* %17, i32 1, i32 0, i32 %91, i32 %92)
  %94 = load i32, i32* %19, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %19, align 4
  %98 = load i32, i32* @avpriv_mjpeg_bits_ac_chrominance, align 4
  %99 = load i32, i32* @avpriv_mjpeg_val_ac_chrominance, align 4
  %100 = call i64 @jpeg_create_huffman_table(%struct.TYPE_9__* %17, i32 1, i32 1, i32 %98, i32 %99)
  %101 = load i32, i32* %19, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %19, align 4
  %105 = load i8*, i8** %18, align 8
  %106 = load i32, i32* %19, align 4
  %107 = call i32 @AV_WB16(i8* %105, i32 %106)
  %108 = load i32, i32* @SOF0, align 4
  %109 = call i32 @jpeg_put_marker(%struct.TYPE_9__* %17, i32 %108)
  %110 = call i32 @bytestream2_put_be16(%struct.TYPE_9__* %17, i32 17)
  %111 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 8)
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @bytestream2_put_be16(%struct.TYPE_9__* %17, i32 %112)
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @bytestream2_put_be16(%struct.TYPE_9__* %17, i32 %114)
  %116 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 3)
  %117 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 1)
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 2, i32 1
  %122 = or i32 32, %121
  %123 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 %122)
  %124 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 0)
  %125 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 2)
  %126 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 17)
  %127 = load i32, i32* %15, align 4
  %128 = icmp eq i32 %127, 2
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 1, i32 0
  %131 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 %130)
  %132 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 3)
  %133 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 17)
  %134 = load i32, i32* %15, align 4
  %135 = icmp eq i32 %134, 2
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 1, i32 0
  %138 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 %137)
  %139 = load i32, i32* @SOS, align 4
  %140 = call i32 @jpeg_put_marker(%struct.TYPE_9__* %17, i32 %139)
  %141 = call i32 @bytestream2_put_be16(%struct.TYPE_9__* %17, i32 12)
  %142 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 3)
  %143 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 1)
  %144 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 0)
  %145 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 2)
  %146 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 17)
  %147 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 3)
  %148 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 17)
  %149 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 0)
  %150 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 63)
  %151 = call i32 @bytestream2_put_byte(%struct.TYPE_9__* %17, i32 0)
  %152 = call i32 @bytestream2_tell_p(%struct.TYPE_9__* %17)
  ret i32 %152
}

declare dso_local i32 @bytestream2_init_writer(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @jpeg_put_marker(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @bytestream2_put_be16(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @bytestream2_put_buffer(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @bytestream2_put_byte(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @jpeg_create_huffman_table(%struct.TYPE_9__*, i32, i32, i32, i32) #1

declare dso_local i32 @AV_WB16(i8*, i32) #1

declare dso_local i32 @bytestream2_tell_p(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
