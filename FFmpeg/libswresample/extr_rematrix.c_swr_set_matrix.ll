; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/extr_rematrix.c_swr_set_matrix.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/extr_rematrix.c_swr_set_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SwrContext = type { double**, double**, i32, i32, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swr_set_matrix(%struct.SwrContext* %0, double* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.SwrContext*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.SwrContext* %0, %struct.SwrContext** %5, align 8
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.SwrContext*, %struct.SwrContext** %5, align 8
  %13 = icmp ne %struct.SwrContext* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.SwrContext*, %struct.SwrContext** %5, align 8
  %16 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = call i32 @AVERROR(i32 %20)
  store i32 %21, i32* %4, align 4
  br label %110

22:                                               ; preds = %14
  %23 = load %struct.SwrContext*, %struct.SwrContext** %5, align 8
  %24 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %23, i32 0, i32 0
  %25 = load double**, double*** %24, align 8
  %26 = call i32 @memset(double** %25, i32 0, i32 8)
  %27 = load %struct.SwrContext*, %struct.SwrContext** %5, align 8
  %28 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %27, i32 0, i32 1
  %29 = load double**, double*** %28, align 8
  %30 = call i32 @memset(double** %29, i32 0, i32 8)
  %31 = load %struct.SwrContext*, %struct.SwrContext** %5, align 8
  %32 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load %struct.SwrContext*, %struct.SwrContext** %5, align 8
  %37 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  br label %44

39:                                               ; preds = %22
  %40 = load %struct.SwrContext*, %struct.SwrContext** %5, align 8
  %41 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @av_get_channel_layout_nb_channels(i32 %42)
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i32 [ %38, %35 ], [ %43, %39 ]
  store i32 %45, i32* %8, align 4
  %46 = load %struct.SwrContext*, %struct.SwrContext** %5, align 8
  %47 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.SwrContext*, %struct.SwrContext** %5, align 8
  %52 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  br label %59

54:                                               ; preds = %44
  %55 = load %struct.SwrContext*, %struct.SwrContext** %5, align 8
  %56 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @av_get_channel_layout_nb_channels(i32 %57)
  br label %59

59:                                               ; preds = %54, %50
  %60 = phi i32 [ %53, %50 ], [ %58, %54 ]
  store i32 %60, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %104, %59
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %107

65:                                               ; preds = %61
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %96, %65
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %99

70:                                               ; preds = %66
  %71 = load double*, double** %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %71, i64 %73
  %75 = load double, double* %74, align 8
  %76 = load %struct.SwrContext*, %struct.SwrContext** %5, align 8
  %77 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %76, i32 0, i32 0
  %78 = load double**, double*** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double*, double** %78, i64 %80
  %82 = load double*, double** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %82, i64 %84
  store double %75, double* %85, align 8
  %86 = load %struct.SwrContext*, %struct.SwrContext** %5, align 8
  %87 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %86, i32 0, i32 1
  %88 = load double**, double*** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds double*, double** %88, i64 %90
  %92 = load double*, double** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds double, double* %92, i64 %94
  store double %75, double* %95, align 8
  br label %96

96:                                               ; preds = %70
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %66

99:                                               ; preds = %66
  %100 = load i32, i32* %7, align 4
  %101 = load double*, double** %6, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds double, double* %101, i64 %102
  store double* %103, double** %6, align 8
  br label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %61

107:                                              ; preds = %61
  %108 = load %struct.SwrContext*, %struct.SwrContext** %5, align 8
  %109 = getelementptr inbounds %struct.SwrContext, %struct.SwrContext* %108, i32 0, i32 4
  store i32 1, i32* %109, align 8
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %107, %19
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memset(double**, i32, i32) #1

declare dso_local i32 @av_get_channel_layout_nb_channels(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
