; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/extr_swresample_frame.c_swr_convert_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/extr_swresample_frame.c_swr_convert_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_22__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swr_convert_frame(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %11 = call i32 @swr_is_initialized(%struct.TYPE_21__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %17 = call i32 @swr_config_frame(%struct.TYPE_21__* %14, %struct.TYPE_22__* %15, %struct.TYPE_22__* %16)
  store i32 %17, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %105

21:                                               ; preds = %13
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %23 = call i32 @swr_init(%struct.TYPE_21__* %22)
  store i32 %23, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %105

27:                                               ; preds = %21
  store i32 1, i32* %9, align 4
  br label %37

28:                                               ; preds = %3
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %32 = call i32 @config_changed(%struct.TYPE_21__* %29, %struct.TYPE_22__* %30, %struct.TYPE_22__* %31)
  store i32 %32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %105

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %27
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %39 = icmp ne %struct.TYPE_22__* %38, null
  br i1 %39, label %40, label %100

40:                                               ; preds = %37
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %88, label %47

47:                                               ; preds = %40
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @swr_get_delay(%struct.TYPE_21__* %48, i64 %51)
  %53 = add nsw i32 %52, 3
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %57 = icmp ne %struct.TYPE_22__* %56, null
  br i1 %57, label %58, label %75

58:                                               ; preds = %47
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = mul nsw i32 %61, %65
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sdiv i32 %66, %69
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %58, %47
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %77 = call i32 @av_frame_get_buffer(%struct.TYPE_22__* %76, i32 0)
  store i32 %77, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %84 = call i32 @swr_close(%struct.TYPE_21__* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %105

87:                                               ; preds = %75
  br label %99

88:                                               ; preds = %40
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %95 = call i32 @available_samples(%struct.TYPE_22__* %94)
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %93, %88
  br label %99

99:                                               ; preds = %98, %87
  br label %100

100:                                              ; preds = %99, %37
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %104 = call i32 @convert_frame(%struct.TYPE_21__* %101, %struct.TYPE_22__* %102, %struct.TYPE_22__* %103)
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %100, %85, %34, %25, %19
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @swr_is_initialized(%struct.TYPE_21__*) #1

declare dso_local i32 @swr_config_frame(%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @swr_init(%struct.TYPE_21__*) #1

declare dso_local i32 @config_changed(%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @swr_get_delay(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @av_frame_get_buffer(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @swr_close(%struct.TYPE_21__*) #1

declare dso_local i32 @available_samples(%struct.TYPE_22__*) #1

declare dso_local i32 @convert_frame(%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
