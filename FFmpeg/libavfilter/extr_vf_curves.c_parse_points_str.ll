; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_curves.c_parse_points_str.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_curves.c_parse_points_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keypoint = type { i32, i32, %struct.keypoint* }

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Invalid key point coordinates (%f;%f), x and y must be in the [0;1] range.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [114 x i8] c"Key point coordinates (%f;%f) and (%f;%f) are too close from each other or not strictly increasing on the x-axis\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [118 x i8] c"Only one point (at (%f;%f)) is defined, this is unlikely to behave as you expect. You probably wantat least 2 points.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.keypoint**, i8*, i32)* @parse_points_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_points_str(i32* %0, %struct.keypoint** %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.keypoint**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.keypoint*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.keypoint*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.keypoint** %1, %struct.keypoint*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %10, align 8
  store %struct.keypoint* null, %struct.keypoint** %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %12, align 4
  br label %17

17:                                               ; preds = %142, %4
  %18 = load i8*, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i8*, i8** %10, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i1 [ false, %17 ], [ %24, %20 ]
  br i1 %26, label %27, label %144

27:                                               ; preds = %25
  %28 = call %struct.keypoint* @make_point(i32 0, i32 0, i32* null)
  store %struct.keypoint* %28, %struct.keypoint** %13, align 8
  %29 = load %struct.keypoint*, %struct.keypoint** %13, align 8
  %30 = icmp ne %struct.keypoint* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = call i32 @AVERROR(i32 %32)
  store i32 %33, i32* %5, align 4
  br label %167

34:                                               ; preds = %27
  %35 = load i8*, i8** %10, align 8
  %36 = call i8* @av_strtod(i8* %35, i8** %10)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.keypoint*, %struct.keypoint** %13, align 8
  %39 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load i8*, i8** %10, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %10, align 8
  br label %50

50:                                               ; preds = %47, %42, %34
  %51 = load i8*, i8** %10, align 8
  %52 = call i8* @av_strtod(i8* %51, i8** %10)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.keypoint*, %struct.keypoint** %13, align 8
  %55 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load i8*, i8** %10, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %10, align 8
  br label %66

66:                                               ; preds = %63, %58, %50
  %67 = load %struct.keypoint*, %struct.keypoint** %13, align 8
  %68 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %66
  %72 = load %struct.keypoint*, %struct.keypoint** %13, align 8
  %73 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = load %struct.keypoint*, %struct.keypoint** %13, align 8
  %78 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load %struct.keypoint*, %struct.keypoint** %13, align 8
  %83 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %86, label %98

86:                                               ; preds = %81, %76, %71, %66
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* @AV_LOG_ERROR, align 4
  %89 = load %struct.keypoint*, %struct.keypoint** %13, align 8
  %90 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.keypoint*, %struct.keypoint** %13, align 8
  %93 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32*, i32, i8*, i32, i32, ...) @av_log(i32* %87, i32 %88, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %94)
  %96 = load i32, i32* @EINVAL, align 4
  %97 = call i32 @AVERROR(i32 %96)
  store i32 %97, i32* %5, align 4
  br label %167

98:                                               ; preds = %81
  %99 = load %struct.keypoint**, %struct.keypoint*** %7, align 8
  %100 = load %struct.keypoint*, %struct.keypoint** %99, align 8
  %101 = icmp ne %struct.keypoint* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = load %struct.keypoint*, %struct.keypoint** %13, align 8
  %104 = load %struct.keypoint**, %struct.keypoint*** %7, align 8
  store %struct.keypoint* %103, %struct.keypoint** %104, align 8
  br label %105

105:                                              ; preds = %102, %98
  %106 = load %struct.keypoint*, %struct.keypoint** %11, align 8
  %107 = icmp ne %struct.keypoint* %106, null
  br i1 %107, label %108, label %142

108:                                              ; preds = %105
  %109 = load %struct.keypoint*, %struct.keypoint** %11, align 8
  %110 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = mul nsw i32 %111, %112
  %114 = load %struct.keypoint*, %struct.keypoint** %13, align 8
  %115 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = mul nsw i32 %116, %117
  %119 = icmp sge i32 %113, %118
  br i1 %119, label %120, label %138

120:                                              ; preds = %108
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* @AV_LOG_ERROR, align 4
  %123 = load %struct.keypoint*, %struct.keypoint** %11, align 8
  %124 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.keypoint*, %struct.keypoint** %11, align 8
  %127 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.keypoint*, %struct.keypoint** %13, align 8
  %130 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.keypoint*, %struct.keypoint** %13, align 8
  %133 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i32*, i32, i8*, i32, i32, ...) @av_log(i32* %121, i32 %122, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %128, i32 %131, i32 %134)
  %136 = load i32, i32* @EINVAL, align 4
  %137 = call i32 @AVERROR(i32 %136)
  store i32 %137, i32* %5, align 4
  br label %167

138:                                              ; preds = %108
  %139 = load %struct.keypoint*, %struct.keypoint** %13, align 8
  %140 = load %struct.keypoint*, %struct.keypoint** %11, align 8
  %141 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %140, i32 0, i32 2
  store %struct.keypoint* %139, %struct.keypoint** %141, align 8
  br label %142

142:                                              ; preds = %138, %105
  %143 = load %struct.keypoint*, %struct.keypoint** %13, align 8
  store %struct.keypoint* %143, %struct.keypoint** %11, align 8
  br label %17

144:                                              ; preds = %25
  %145 = load %struct.keypoint**, %struct.keypoint*** %7, align 8
  %146 = load %struct.keypoint*, %struct.keypoint** %145, align 8
  %147 = icmp ne %struct.keypoint* %146, null
  br i1 %147, label %148, label %166

148:                                              ; preds = %144
  %149 = load %struct.keypoint**, %struct.keypoint*** %7, align 8
  %150 = load %struct.keypoint*, %struct.keypoint** %149, align 8
  %151 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %150, i32 0, i32 2
  %152 = load %struct.keypoint*, %struct.keypoint** %151, align 8
  %153 = icmp ne %struct.keypoint* %152, null
  br i1 %153, label %166, label %154

154:                                              ; preds = %148
  %155 = load i32*, i32** %6, align 8
  %156 = load i32, i32* @AV_LOG_WARNING, align 4
  %157 = load %struct.keypoint**, %struct.keypoint*** %7, align 8
  %158 = load %struct.keypoint*, %struct.keypoint** %157, align 8
  %159 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.keypoint**, %struct.keypoint*** %7, align 8
  %162 = load %struct.keypoint*, %struct.keypoint** %161, align 8
  %163 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i32*, i32, i8*, i32, i32, ...) @av_log(i32* %155, i32 %156, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.2, i64 0, i64 0), i32 %160, i32 %164)
  br label %166

166:                                              ; preds = %154, %148, %144
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %166, %120, %86, %31
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local %struct.keypoint* @make_point(i32, i32, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_strtod(i8*, i8**) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
