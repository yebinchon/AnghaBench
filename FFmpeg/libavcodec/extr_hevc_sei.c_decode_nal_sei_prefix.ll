; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_sei.c_decode_nal_sei_prefix.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_sei.c_decode_nal_sei_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Skipped PREFIX SEI %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_6__*, i32*, i32, i32)* @decode_nal_sei_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_nal_sei_prefix(i32* %0, i8* %1, %struct.TYPE_6__* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* %12, align 4
  switch i32 %14, label %62 [
    i32 256, label %15
    i32 131, label %20
    i32 132, label %25
    i32 129, label %30
    i32 130, label %37
    i32 133, label %42
    i32 135, label %47
    i32 128, label %52
    i32 134, label %57
  ]

15:                                               ; preds = %6
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 5
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @decode_nal_sei_decoded_picture_hash(i32* %17, i32* %18)
  store i32 %19, i32* %7, align 4
  br label %71

20:                                               ; preds = %6
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 4
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @decode_nal_sei_frame_packing_arrangement(i32* %22, i32* %23)
  store i32 %24, i32* %7, align 4
  br label %71

25:                                               ; preds = %6
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @decode_nal_sei_display_orientation(i32* %27, i32* %28)
  store i32 %29, i32* %7, align 4
  br label %71

30:                                               ; preds = %6
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @decode_nal_sei_pic_timing(%struct.TYPE_6__* %31, i32* %32, i32* %33, i8* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  br label %71

37:                                               ; preds = %6
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @decode_nal_sei_mastering_display_info(i32* %39, i32* %40)
  store i32 %41, i32* %7, align 4
  br label %71

42:                                               ; preds = %6
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @decode_nal_sei_content_light_info(i32* %44, i32* %45)
  store i32 %46, i32* %7, align 4
  br label %71

47:                                               ; preds = %6
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @decode_nal_sei_active_parameter_sets(%struct.TYPE_6__* %48, i32* %49, i8* %50)
  store i32 %51, i32* %7, align 4
  br label %71

52:                                               ; preds = %6
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @decode_nal_sei_user_data_registered_itu_t_t35(%struct.TYPE_6__* %53, i32* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  br label %71

57:                                               ; preds = %6
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @decode_nal_sei_alternative_transfer(i32* %59, i32* %60)
  store i32 %61, i32* %7, align 4
  br label %71

62:                                               ; preds = %6
  %63 = load i8*, i8** %9, align 8
  %64 = load i32, i32* @AV_LOG_DEBUG, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @av_log(i8* %63, i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %13, align 4
  %69 = mul nsw i32 8, %68
  %70 = call i32 @skip_bits_long(i32* %67, i32 %69)
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %62, %57, %52, %47, %42, %37, %30, %25, %20, %15
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @decode_nal_sei_decoded_picture_hash(i32*, i32*) #1

declare dso_local i32 @decode_nal_sei_frame_packing_arrangement(i32*, i32*) #1

declare dso_local i32 @decode_nal_sei_display_orientation(i32*, i32*) #1

declare dso_local i32 @decode_nal_sei_pic_timing(%struct.TYPE_6__*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @decode_nal_sei_mastering_display_info(i32*, i32*) #1

declare dso_local i32 @decode_nal_sei_content_light_info(i32*, i32*) #1

declare dso_local i32 @decode_nal_sei_active_parameter_sets(%struct.TYPE_6__*, i32*, i8*) #1

declare dso_local i32 @decode_nal_sei_user_data_registered_itu_t_t35(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @decode_nal_sei_alternative_transfer(i32*, i32*) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i32) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
