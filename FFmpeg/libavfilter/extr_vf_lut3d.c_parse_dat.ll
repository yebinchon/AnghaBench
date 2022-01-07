; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut3d.c_parse_dat.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut3d.c_parse_dat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.rgbvec* }
%struct.rgbvec = type { i32, i32, i32 }

@MAX_LINE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"3DLUTSIZE \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%f %f %f\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @parse_dat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_dat(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.rgbvec*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %6, align 8
  %20 = load i32, i32* @MAX_LINE_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  store i32 33, i32* %13, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 33, i32* %25, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %14, align 4
  %29 = call i32 @skip_line(i8* %23)
  %30 = call i32 @NEXT_LINE(i32 %29)
  %31 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %2
  %34 = getelementptr inbounds i8, i8* %23, i64 10
  %35 = call i32 @strtol(i8* %34, i32* null, i32 0)
  store i32 %35, i32* %13, align 4
  %36 = call i32 @skip_line(i8* %23)
  %37 = call i32 @NEXT_LINE(i32 %36)
  br label %38

38:                                               ; preds = %33, %2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @allocate_3dlut(%struct.TYPE_6__* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %111

46:                                               ; preds = %38
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %107, %46
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %110

51:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %103, %51
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %106

56:                                               ; preds = %52
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %99, %56
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %102

61:                                               ; preds = %57
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load %struct.rgbvec*, %struct.rgbvec** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %14, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %13, align 4
  %70 = mul nsw i32 %68, %69
  %71 = add nsw i32 %67, %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %64, i64 %74
  store %struct.rgbvec* %75, %struct.rgbvec** %16, align 8
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %61
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81, %78, %61
  %85 = call i32 @skip_line(i8* %23)
  %86 = call i32 @NEXT_LINE(i32 %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load %struct.rgbvec*, %struct.rgbvec** %16, align 8
  %89 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %88, i32 0, i32 2
  %90 = load %struct.rgbvec*, %struct.rgbvec** %16, align 8
  %91 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %90, i32 0, i32 1
  %92 = load %struct.rgbvec*, %struct.rgbvec** %16, align 8
  %93 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %92, i32 0, i32 0
  %94 = call i32 @av_sscanf(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %89, i32* %91, i32* %93)
  %95 = icmp ne i32 %94, 3
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %97, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %111

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %57

102:                                              ; preds = %57
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %52

106:                                              ; preds = %52
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %47

110:                                              ; preds = %47
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %111

111:                                              ; preds = %110, %96, %44
  %112 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @NEXT_LINE(i32) #2

declare dso_local i32 @skip_line(i8*) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strtol(i8*, i32*, i32) #2

declare dso_local i32 @allocate_3dlut(%struct.TYPE_6__*, i32) #2

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
