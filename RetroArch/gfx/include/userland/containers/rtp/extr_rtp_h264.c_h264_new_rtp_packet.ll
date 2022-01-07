; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_h264.c_h264_new_rtp_packet.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_h264.c_h264_new_rtp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"nal_unit_header\00", align 1
@NAL_UNIT_FZERO_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"H.264: Invalid NAL unit (top bit of header set)\00", align 1
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i32 0, align 4
@NAL_UNIT_TYPE_MASK = common dso_local global i32 0, align 4
@H264F_INSIDE_FRAGMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"fragment_header\00", align 1
@FRAGMENT_UNIT_HEADER_START = common dso_local global i32 0, align 4
@FRAGMENT_UNIT_HEADER_END = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"H.264: Unsupported RTP NAL unit type: %u\00", align 1
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*)* @h264_new_rtp_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_new_rtp_packet(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32* %11, i32** %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %7, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @BITS_READ_U8(i32* %16, i32* %17, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @NAL_UNIT_FZERO_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @LOG_DEBUG(i32* %24, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 4
  store i32 %26, i32* %3, align 4
  br label %116

27:                                               ; preds = %2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 5, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @BITS_BYTES_AVAILABLE(i32* %33, i32* %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @NAL_UNIT_TYPE_MASK, align 4
  %40 = and i32 %38, %39
  switch i32 %40, label %108 [
    i32 129, label %41
    i32 133, label %49
    i32 128, label %101
    i32 131, label %101
    i32 130, label %101
    i32 132, label %101
  ]

41:                                               ; preds = %27
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @H264F_INSIDE_FRAGMENT, align 4
  %46 = call i32 @CLEAR_BIT(i32 %44, i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  store i32 0, i32* %48, align 4
  br label %114

49:                                               ; preds = %27
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @BITS_READ_U8(i32* %50, i32* %51, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %52, i32* %9, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @FRAGMENT_UNIT_HEADER_START, align 4
  %59 = call i32 @BIT_IS_CLEAR(i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %49
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @H264F_INSIDE_FRAGMENT, align 4
  %66 = call i32 @BIT_IS_SET(i32 %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %61, %49
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @FRAGMENT_UNIT_HEADER_END, align 4
  %73 = call i32 @BIT_IS_SET(i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @H264F_INSIDE_FRAGMENT, align 4
  %80 = call i32 @CLEAR_BIT(i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %68
  br label %100

82:                                               ; preds = %61
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @H264F_INSIDE_FRAGMENT, align 4
  %87 = call i32 @SET_BIT(i32 %85, i32 %86)
  %88 = load i32, i32* @NAL_UNIT_TYPE_MASK, align 4
  %89 = load i32, i32* %9, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @NAL_UNIT_TYPE_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  %95 = load i32, i32* %9, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %82, %81
  br label %114

101:                                              ; preds = %27, %27, %27, %27
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @NAL_UNIT_TYPE_MASK, align 4
  %105 = and i32 %103, %104
  %106 = call i32 @LOG_ERROR(i32* %102, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %107, i32* %3, align 4
  br label %116

108:                                              ; preds = %27
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @H264F_INSIDE_FRAGMENT, align 4
  %113 = call i32 @CLEAR_BIT(i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %108, %100, %41
  %115 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %101, %23
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @BITS_READ_U8(i32*, i32*, i32, i8*) #1

declare dso_local i32 @LOG_DEBUG(i32*, i8*) #1

declare dso_local i32 @BITS_BYTES_AVAILABLE(i32*, i32*) #1

declare dso_local i32 @CLEAR_BIT(i32, i32) #1

declare dso_local i32 @BIT_IS_CLEAR(i32, i32) #1

declare dso_local i32 @BIT_IS_SET(i32, i32) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
