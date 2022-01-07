; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfenc.c_put_payload_parsing_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfenc.c_put_payload_parsing_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@ASF_PPI_LENGTH_TYPE_FLAGS = common dso_local global i32 0, align 4
@PACKET_HEADER_MIN_SIZE = common dso_local global i64 0, align 8
@ASF_PACKET_ERROR_CORRECTION_FLAGS = common dso_local global i32 0, align 4
@ASF_PACKET_ERROR_CORRECTION_DATA_SIZE = common dso_local global i32 0, align 4
@ASF_PPI_FLAG_MULTIPLE_PAYLOADS_PRESENT = common dso_local global i32 0, align 4
@ASF_PPI_FLAG_PADDING_LENGTH_FIELD_IS_BYTE = common dso_local global i32 0, align 4
@ASF_PPI_FLAG_PADDING_LENGTH_FIELD_IS_WORD = common dso_local global i32 0, align 4
@ASF_PPI_PROPERTY_FLAGS = common dso_local global i32 0, align 4
@ASF_PAYLOAD_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32, i32)* @put_payload_parsing_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_payload_parsing_info(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %11, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %12, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = call i32 @avio_tell(i32* %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* @ASF_PPI_LENGTH_TYPE_FLAGS, align 4
  store i32 %25, i32* %16, align 4
  %26 = load i64, i64* @PACKET_HEADER_MIN_SIZE, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %35, %5
  %39 = load i32, i32* %10, align 4
  %40 = icmp sge i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @av_assert0(i32 %41)
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* @ASF_PACKET_ERROR_CORRECTION_FLAGS, align 4
  %45 = call i32 @avio_w8(i32* %43, i32 %44)
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %53, %38
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @ASF_PACKET_ERROR_CORRECTION_DATA_SIZE, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @avio_w8(i32* %51, i32 0)
  br label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %46

56:                                               ; preds = %46
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @ASF_PPI_FLAG_MULTIPLE_PAYLOADS_PRESENT, align 4
  %63 = load i32, i32* %16, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %16, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %10, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 256
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* @ASF_PPI_FLAG_PADDING_LENGTH_FIELD_IS_BYTE, align 4
  %73 = load i32, i32* %16, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %16, align 4
  br label %79

75:                                               ; preds = %68
  %76 = load i32, i32* @ASF_PPI_FLAG_PADDING_LENGTH_FIELD_IS_WORD, align 4
  %77 = load i32, i32* %16, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %16, align 4
  br label %79

79:                                               ; preds = %75, %71
  br label %80

80:                                               ; preds = %79, %65
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @avio_w8(i32* %81, i32 %82)
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* @ASF_PPI_PROPERTY_FLAGS, align 4
  %86 = call i32 @avio_w8(i32* %84, i32 %85)
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* @ASF_PPI_FLAG_PADDING_LENGTH_FIELD_IS_WORD, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %80
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sub nsw i32 %93, 2
  %95 = call i32 @avio_wl16(i32* %92, i32 %94)
  br label %96

96:                                               ; preds = %91, %80
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* @ASF_PPI_FLAG_PADDING_LENGTH_FIELD_IS_BYTE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sub nsw i32 %103, 1
  %105 = call i32 @avio_w8(i32* %102, i32 %104)
  br label %106

106:                                              ; preds = %101, %96
  %107 = load i32*, i32** %12, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @avio_wl32(i32* %107, i32 %108)
  %110 = load i32*, i32** %12, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @avio_wl16(i32* %110, i32 %111)
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %106
  %118 = load i32*, i32** %12, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @ASF_PAYLOAD_FLAGS, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @avio_w8(i32* %118, i32 %121)
  br label %123

123:                                              ; preds = %117, %106
  %124 = load i32*, i32** %12, align 8
  %125 = call i32 @avio_tell(i32* %124)
  %126 = load i32, i32* %15, align 4
  %127 = sub nsw i32 %125, %126
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  ret i32 %128
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wl16(i32*, i32) #1

declare dso_local i32 @avio_wl32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
