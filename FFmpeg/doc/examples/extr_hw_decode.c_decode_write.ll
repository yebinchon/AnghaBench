; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_hw_decode.c_decode_write.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_hw_decode.c_decode_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i64, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error during decoding\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Can not alloc frame\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Error while decoding\0A\00", align 1
@hw_pix_fmt = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"Error transferring the data to system memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Can not alloc buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Can not copy image to buffer\0A\00", align 1
@output_file = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Failed to dump raw data.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @decode_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_write(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @avcodec_send_packet(i32* %12, i32* %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %3, align 4
  br label %138

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %137
  %23 = call %struct.TYPE_7__* (...) @av_frame_alloc()
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %6, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = call %struct.TYPE_7__* (...) @av_frame_alloc()
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %7, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = call i32 @AVERROR(i32 %31)
  store i32 %32, i32* %11, align 4
  br label %129

33:                                               ; preds = %25
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = call i32 @avcodec_receive_frame(i32* %34, %struct.TYPE_7__* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = call i32 @AVERROR(i32 %38)
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @AVERROR_EOF, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %33
  %46 = call i32 @av_frame_free(%struct.TYPE_7__** %6)
  %47 = call i32 @av_frame_free(%struct.TYPE_7__** %7)
  store i32 0, i32* %3, align 4
  br label %138

48:                                               ; preds = %41
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %129

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @hw_pix_fmt, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = call i32 @av_hwframe_transfer_data(%struct.TYPE_7__* %62, %struct.TYPE_7__* %63, i32 0)
  store i32 %64, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @stderr, align 4
  %68 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %129

69:                                               ; preds = %61
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %8, align 8
  br label %73

71:                                               ; preds = %55
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %8, align 8
  br label %73

73:                                               ; preds = %71, %69
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @av_image_get_buffer_size(i64 %76, i32 %79, i32 %82, i32 1)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32* @av_malloc(i32 %84)
  store i32* %85, i32** %9, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %73
  %89 = load i32, i32* @stderr, align 4
  %90 = call i32 @fprintf(i32 %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = call i32 @AVERROR(i32 %91)
  store i32 %92, i32* %11, align 4
  br label %129

93:                                               ; preds = %73
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i32**
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i32*
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @av_image_copy_to_buffer(i32* %94, i32 %95, i32** %99, i32* %103, i64 %106, i32 %109, i32 %112, i32 1)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %93
  %117 = load i32, i32* @stderr, align 4
  %118 = call i32 @fprintf(i32 %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %129

119:                                              ; preds = %93
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @output_file, align 4
  %123 = call i32 @fwrite(i32* %120, i32 1, i32 %121, i32 %122)
  store i32 %123, i32* %11, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* @stderr, align 4
  %127 = call i32 @fprintf(i32 %126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %129

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128, %125, %116, %88, %66, %51, %28
  %130 = call i32 @av_frame_free(%struct.TYPE_7__** %6)
  %131 = call i32 @av_frame_free(%struct.TYPE_7__** %7)
  %132 = call i32 @av_freep(i32** %9)
  %133 = load i32, i32* %11, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %3, align 4
  br label %138

137:                                              ; preds = %129
  br label %22

138:                                              ; preds = %135, %45, %17
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @avcodec_send_packet(i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @av_frame_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avcodec_receive_frame(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_7__**) #1

declare dso_local i32 @av_hwframe_transfer_data(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @av_image_get_buffer_size(i64, i32, i32, i32) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @av_image_copy_to_buffer(i32*, i32, i32**, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i32) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
