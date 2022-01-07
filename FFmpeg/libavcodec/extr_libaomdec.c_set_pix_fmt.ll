; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libaomdec.c_set_pix_fmt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libaomdec.c_set_pix_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32, i32 }
%struct.aom_image = type { i64, i32, i32, i32, i32, i32, i32 }

@set_pix_fmt.color_ranges = internal constant [2 x i32] [i32 128, i32 129], align 4
@AV_PIX_FMT_GRAY8 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4
@FF_PROFILE_AV1_MAIN = common dso_local global i8* null, align 8
@AV_PIX_FMT_GRAY10 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV420P10 = common dso_local global i32 0, align 4
@AV_PIX_FMT_GRAY12 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV420P12 = common dso_local global i32 0, align 4
@FF_PROFILE_AV1_PROFESSIONAL = common dso_local global i8* null, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV422P = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV422P10 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV422P12 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV444P = common dso_local global i32 0, align 4
@FF_PROFILE_AV1_HIGH = common dso_local global i8* null, align 8
@AV_PIX_FMT_YUV444P10 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV444P12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.aom_image*)* @set_pix_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pix_fmt(%struct.TYPE_3__* %0, %struct.aom_image* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.aom_image*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.aom_image* %1, %struct.aom_image** %5, align 8
  %6 = load %struct.aom_image*, %struct.aom_image** %5, align 8
  %7 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* @set_pix_fmt.color_ranges, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.aom_image*, %struct.aom_image** %5, align 8
  %14 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load %struct.aom_image*, %struct.aom_image** %5, align 8
  %19 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.aom_image*, %struct.aom_image** %5, align 8
  %24 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.aom_image*, %struct.aom_image** %5, align 8
  %29 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %172 [
    i32 135, label %31
    i32 134, label %31
    i32 133, label %96
    i32 132, label %96
    i32 131, label %134
    i32 130, label %134
  ]

31:                                               ; preds = %2, %2
  %32 = load %struct.aom_image*, %struct.aom_image** %5, align 8
  %33 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load %struct.aom_image*, %struct.aom_image** %5, align 8
  %38 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @AV_PIX_FMT_GRAY8, align 4
  br label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** @FF_PROFILE_AV1_MAIN, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  store i32 0, i32* %3, align 4
  br label %174

52:                                               ; preds = %31
  %53 = load %struct.aom_image*, %struct.aom_image** %5, align 8
  %54 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 10
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load %struct.aom_image*, %struct.aom_image** %5, align 8
  %59 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @AV_PIX_FMT_GRAY10, align 4
  br label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @AV_PIX_FMT_YUV420P10, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i8*, i8** @FF_PROFILE_AV1_MAIN, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  store i32 0, i32* %3, align 4
  br label %174

73:                                               ; preds = %52
  %74 = load %struct.aom_image*, %struct.aom_image** %5, align 8
  %75 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 12
  br i1 %77, label %78, label %94

78:                                               ; preds = %73
  %79 = load %struct.aom_image*, %struct.aom_image** %5, align 8
  %80 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @AV_PIX_FMT_GRAY12, align 4
  br label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @AV_PIX_FMT_YUV420P12, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load i8*, i8** @FF_PROFILE_AV1_PROFESSIONAL, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  store i32 0, i32* %3, align 4
  br label %174

94:                                               ; preds = %73
  %95 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %95, i32* %3, align 4
  br label %174

96:                                               ; preds = %2, %2
  %97 = load %struct.aom_image*, %struct.aom_image** %5, align 8
  %98 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 8
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load i32, i32* @AV_PIX_FMT_YUV422P, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load i8*, i8** @FF_PROFILE_AV1_PROFESSIONAL, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  store i32 0, i32* %3, align 4
  br label %174

108:                                              ; preds = %96
  %109 = load %struct.aom_image*, %struct.aom_image** %5, align 8
  %110 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 10
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load i32, i32* @AV_PIX_FMT_YUV422P10, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load i8*, i8** @FF_PROFILE_AV1_PROFESSIONAL, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  store i32 0, i32* %3, align 4
  br label %174

120:                                              ; preds = %108
  %121 = load %struct.aom_image*, %struct.aom_image** %5, align 8
  %122 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 12
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load i32, i32* @AV_PIX_FMT_YUV422P12, align 4
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load i8*, i8** @FF_PROFILE_AV1_PROFESSIONAL, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  store i32 0, i32* %3, align 4
  br label %174

132:                                              ; preds = %120
  %133 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %133, i32* %3, align 4
  br label %174

134:                                              ; preds = %2, %2
  %135 = load %struct.aom_image*, %struct.aom_image** %5, align 8
  %136 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 8
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load i32, i32* @AV_PIX_FMT_YUV444P, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load i8*, i8** @FF_PROFILE_AV1_HIGH, align 8
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  store i32 0, i32* %3, align 4
  br label %174

146:                                              ; preds = %134
  %147 = load %struct.aom_image*, %struct.aom_image** %5, align 8
  %148 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 10
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load i32, i32* @AV_PIX_FMT_YUV444P10, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load i8*, i8** @FF_PROFILE_AV1_HIGH, align 8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  store i32 0, i32* %3, align 4
  br label %174

158:                                              ; preds = %146
  %159 = load %struct.aom_image*, %struct.aom_image** %5, align 8
  %160 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 12
  br i1 %162, label %163, label %170

163:                                              ; preds = %158
  %164 = load i32, i32* @AV_PIX_FMT_YUV444P12, align 4
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 8
  %167 = load i8*, i8** @FF_PROFILE_AV1_PROFESSIONAL, align 8
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  store i8* %167, i8** %169, align 8
  store i32 0, i32* %3, align 4
  br label %174

170:                                              ; preds = %158
  %171 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %171, i32* %3, align 4
  br label %174

172:                                              ; preds = %2
  %173 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %172, %170, %163, %151, %139, %132, %125, %113, %101, %94, %87, %66, %45
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
