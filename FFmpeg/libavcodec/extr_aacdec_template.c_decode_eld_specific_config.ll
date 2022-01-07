; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_decode_eld_specific_config.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_decode_eld_specific_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }

@MAX_ELEM_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"AAC data resilience (flags %x)\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Low Delay SBR\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@overread_err = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@OC_GLOBAL_HDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"epConfig %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_3__*, i32)* @decode_eld_specific_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_eld_specific_config(i32* %0, i32* %1, i32* %2, %struct.TYPE_3__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load i32, i32* @MAX_ELEM_ID, align 4
  %22 = mul nsw i32 %21, 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %15, align 8
  %25 = alloca [3 x i32], i64 %23, align 16
  store i64 %23, i64* %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @get_bits1(i32* %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @get_bits(i32* %34, i32 3)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %5
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %14, align 4
  %41 = call i32 (i32*, i8*, ...) @avpriv_report_missing_feature(i32* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %42, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %123

43:                                               ; preds = %5
  %44 = load i32*, i32** %9, align 8
  %45 = call i64 @get_bits1(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 (i32*, i8*, ...) @avpriv_report_missing_feature(i32* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %50, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %123

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %87, %51
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @get_bits(i32* %53, i32 4)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %92

56:                                               ; preds = %52
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @get_bits(i32* %57, i32 4)
  store i32 %58, i32* %20, align 4
  %59 = load i32, i32* %20, align 4
  %60 = icmp eq i32 %59, 15
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @get_bits(i32* %62, i32 8)
  %64 = load i32, i32* %20, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %20, align 4
  br label %66

66:                                               ; preds = %61, %56
  %67 = load i32, i32* %20, align 4
  %68 = icmp eq i32 %67, 270
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @get_bits(i32* %70, i32 16)
  %72 = load i32, i32* %20, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %20, align 4
  br label %74

74:                                               ; preds = %69, %66
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @get_bits_left(i32* %75)
  %77 = load i32, i32* %20, align 4
  %78 = mul nsw i32 %77, 8
  %79 = add nsw i32 %78, 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* @AV_LOG_ERROR, align 4
  %84 = load i32, i32* @overread_err, align 4
  %85 = call i32 @av_log(i32* %82, i32 %83, i32 %84)
  %86 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %86, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %123

87:                                               ; preds = %74
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %20, align 4
  %90 = mul nsw i32 8, %89
  %91 = call i32 @skip_bits_long(i32* %88, i32 %90)
  br label %52

92:                                               ; preds = %52
  %93 = load i32*, i32** %8, align 8
  %94 = bitcast [3 x i32]* %25 to i32**
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @set_default_channel_config(i32* %93, i32** %94, i32* %17, i32 %95)
  store i32 %96, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %123

100:                                              ; preds = %92
  %101 = load i32*, i32** %7, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load i32*, i32** %7, align 8
  %105 = bitcast [3 x i32]* %25 to i32**
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* @OC_GLOBAL_HDR, align 4
  %108 = call i32 @output_configure(i32* %104, i32** %105, i32 %106, i32 %107, i32 0)
  store i32 %108, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %123

112:                                              ; preds = %103, %100
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @get_bits(i32* %113, i32 2)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* %13, align 4
  %120 = call i32 (i32*, i8*, ...) @avpriv_report_missing_feature(i32* %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %121, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %123

122:                                              ; preds = %112
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %123

123:                                              ; preds = %122, %117, %110, %98, %81, %47, %38
  %124 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @get_bits1(i32*) #2

declare dso_local i32 @get_bits(i32*, i32) #2

declare dso_local i32 @avpriv_report_missing_feature(i32*, i8*, ...) #2

declare dso_local i32 @get_bits_left(i32*) #2

declare dso_local i32 @av_log(i32*, i32, i32) #2

declare dso_local i32 @skip_bits_long(i32*, i32) #2

declare dso_local i32 @set_default_channel_config(i32*, i32**, i32*, i32) #2

declare dso_local i32 @output_configure(i32*, i32**, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
