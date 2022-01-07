; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sgidec.c_expand_rle_row8.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sgidec.c_expand_rle_row8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid pixel count.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32, i32)* @expand_rle_row8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_rle_row8(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %12, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %13, align 8
  br label %19

19:                                               ; preds = %96, %4
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %23, label %97

23:                                               ; preds = %19
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @bytestream2_get_bytes_left(i32* %25)
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %29, i32* %5, align 4
  br label %107

30:                                               ; preds = %23
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call zeroext i8 @bytestream2_get_byteu(i32* %32)
  store i8 %33, i8* %10, align 1
  %34 = load i8, i8* %10, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 127
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %11, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %97

40:                                               ; preds = %30
  %41 = load i8*, i8** %13, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = load i32, i32* %9, align 4
  %47 = load i8, i8* %11, align 1
  %48 = zext i8 %47 to i32
  %49 = sub nsw i32 %48, 1
  %50 = mul nsw i32 %46, %49
  %51 = sext i32 %50 to i64
  %52 = icmp sle i64 %45, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %40
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = call i32 @av_log(i32 %56, i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %59, i32* %5, align 4
  br label %107

60:                                               ; preds = %40
  %61 = load i8, i8* %10, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 128
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %70, %65
  %67 = load i8, i8* %11, align 1
  %68 = add i8 %67, -1
  store i8 %68, i8* %11, align 1
  %69 = icmp ne i8 %67, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = call zeroext i8 @bytestream2_get_byte(i32* %72)
  %74 = load i8*, i8** %7, align 8
  store i8 %73, i8* %74, align 1
  %75 = load i32, i32* %9, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %7, align 8
  br label %66

79:                                               ; preds = %66
  br label %96

80:                                               ; preds = %60
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = call zeroext i8 @bytestream2_get_byte(i32* %82)
  store i8 %83, i8* %10, align 1
  br label %84

84:                                               ; preds = %88, %80
  %85 = load i8, i8* %11, align 1
  %86 = add i8 %85, -1
  store i8 %86, i8* %11, align 1
  %87 = icmp ne i8 %85, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i8, i8* %10, align 1
  %90 = load i8*, i8** %7, align 8
  store i8 %89, i8* %90, align 1
  %91 = load i32, i32* %9, align 4
  %92 = load i8*, i8** %7, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %7, align 8
  br label %84

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %79
  br label %19

97:                                               ; preds = %39, %19
  %98 = load i8*, i8** %7, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = sdiv i64 %102, %104
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %97, %53, %28
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local zeroext i8 @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local zeroext i8 @bytestream2_get_byte(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
