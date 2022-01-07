; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sgidec.c_expand_rle_row16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sgidec.c_expand_rle_row16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid pixel count.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i16*, i32, i32)* @expand_rle_row16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_rle_row16(%struct.TYPE_3__* %0, i16* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i8, align 1
  %12 = alloca i16*, align 8
  %13 = alloca i16*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i16* %1, i16** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i16*, i16** %7, align 8
  store i16* %14, i16** %12, align 8
  %15 = load i16*, i16** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i16, i16* %15, i64 %17
  store i16* %18, i16** %13, align 8
  br label %19

19:                                               ; preds = %100, %4
  %20 = load i16*, i16** %7, align 8
  %21 = load i16*, i16** %13, align 8
  %22 = icmp ult i16* %20, %21
  br i1 %22, label %23, label %101

23:                                               ; preds = %19
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @bytestream2_get_bytes_left(i32* %25)
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %29, i32* %5, align 4
  br label %112

30:                                               ; preds = %23
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call zeroext i16 @bytestream2_get_be16u(i32* %32)
  store i16 %33, i16* %10, align 2
  %34 = load i16, i16* %10, align 2
  %35 = zext i16 %34 to i32
  %36 = and i32 %35, 127
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %11, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %101

40:                                               ; preds = %30
  %41 = load i16*, i16** %13, align 8
  %42 = load i16*, i16** %7, align 8
  %43 = ptrtoint i16* %41 to i64
  %44 = ptrtoint i16* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 2
  %47 = load i32, i32* %9, align 4
  %48 = load i8, i8* %11, align 1
  %49 = zext i8 %48 to i32
  %50 = sub nsw i32 %49, 1
  %51 = mul nsw i32 %47, %50
  %52 = sext i32 %51 to i64
  %53 = icmp sle i64 %46, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %40
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @AV_LOG_ERROR, align 4
  %59 = call i32 @av_log(i32 %57, i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %60, i32* %5, align 4
  br label %112

61:                                               ; preds = %40
  %62 = load i16, i16* %10, align 2
  %63 = zext i16 %62 to i32
  %64 = and i32 %63, 128
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %71, %66
  %68 = load i8, i8* %11, align 1
  %69 = add i8 %68, -1
  store i8 %69, i8* %11, align 1
  %70 = icmp ne i8 %68, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = call zeroext i16 @bytestream2_get_ne16(i32* %73)
  store i16 %74, i16* %10, align 2
  %75 = load i16*, i16** %7, align 8
  %76 = load i16, i16* %10, align 2
  %77 = call i32 @AV_WN16A(i16* %75, i16 zeroext %76)
  %78 = load i32, i32* %9, align 4
  %79 = load i16*, i16** %7, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i16, i16* %79, i64 %80
  store i16* %81, i16** %7, align 8
  br label %67

82:                                               ; preds = %67
  br label %100

83:                                               ; preds = %61
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = call zeroext i16 @bytestream2_get_ne16(i32* %85)
  store i16 %86, i16* %10, align 2
  br label %87

87:                                               ; preds = %91, %83
  %88 = load i8, i8* %11, align 1
  %89 = add i8 %88, -1
  store i8 %89, i8* %11, align 1
  %90 = icmp ne i8 %88, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load i16*, i16** %7, align 8
  %93 = load i16, i16* %10, align 2
  %94 = call i32 @AV_WN16A(i16* %92, i16 zeroext %93)
  %95 = load i32, i32* %9, align 4
  %96 = load i16*, i16** %7, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i16, i16* %96, i64 %97
  store i16* %98, i16** %7, align 8
  br label %87

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %99, %82
  br label %19

101:                                              ; preds = %39, %19
  %102 = load i16*, i16** %7, align 8
  %103 = load i16*, i16** %12, align 8
  %104 = ptrtoint i16* %102 to i64
  %105 = ptrtoint i16* %103 to i64
  %106 = sub i64 %104, %105
  %107 = sdiv exact i64 %106, 2
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = sdiv i64 %107, %109
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %101, %54, %28
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local zeroext i16 @bytestream2_get_be16u(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local zeroext i16 @bytestream2_get_ne16(i32*) #1

declare dso_local i32 @AV_WN16A(i16*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
