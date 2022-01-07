; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut3d.c_parse_3dl.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut3d.c_parse_3dl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.rgbvec* }
%struct.rgbvec = type { i32, i32, i32 }

@MAX_LINE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @parse_3dl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_3dl(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.rgbvec*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %21 = load i32, i32* @MAX_LINE_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %6, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %8, align 8
  store i32 17, i32* %13, align 4
  store i32 289, i32* %14, align 4
  store float 4.096000e+03, float* %15, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 17, i32* %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = call i32 @allocate_3dlut(%struct.TYPE_6__* %30, i32 17)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %100

36:                                               ; preds = %2
  %37 = call i32 @skip_line(i8* %24)
  %38 = call i32 @NEXT_LINE(i32 %37)
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %96, %36
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 17
  br i1 %41, label %42, label %99

42:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %92, %42
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 17
  br i1 %45, label %46, label %95

46:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %88, %46
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 17
  br i1 %49, label %50, label %91

50:                                               ; preds = %47
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %struct.rgbvec*, %struct.rgbvec** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = mul nsw i32 %54, 289
  %56 = load i32, i32* %11, align 4
  %57 = mul nsw i32 %56, 17
  %58 = add nsw i32 %55, %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %53, i64 %61
  store %struct.rgbvec* %62, %struct.rgbvec** %20, align 8
  %63 = call i32 @skip_line(i8* %24)
  %64 = call i32 @NEXT_LINE(i32 %63)
  %65 = call i32 @av_sscanf(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %17, i32* %18, i32* %19)
  %66 = icmp ne i32 %65, 3
  br i1 %66, label %67, label %69

67:                                               ; preds = %50
  %68 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %100

69:                                               ; preds = %50
  %70 = load i32, i32* %17, align 4
  %71 = sitofp i32 %70 to float
  %72 = fdiv float %71, 4.096000e+03
  %73 = fptosi float %72 to i32
  %74 = load %struct.rgbvec*, %struct.rgbvec** %20, align 8
  %75 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %18, align 4
  %77 = sitofp i32 %76 to float
  %78 = fdiv float %77, 4.096000e+03
  %79 = fptosi float %78 to i32
  %80 = load %struct.rgbvec*, %struct.rgbvec** %20, align 8
  %81 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %19, align 4
  %83 = sitofp i32 %82 to float
  %84 = fdiv float %83, 4.096000e+03
  %85 = fptosi float %84 to i32
  %86 = load %struct.rgbvec*, %struct.rgbvec** %20, align 8
  %87 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %69
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %47

91:                                               ; preds = %47
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %43

95:                                               ; preds = %43
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %39

99:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %100

100:                                              ; preds = %99, %67, %34
  %101 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @allocate_3dlut(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @NEXT_LINE(i32) #2

declare dso_local i32 @skip_line(i8*) #2

declare dso_local i32 @av_sscanf(i8*, i8*, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
