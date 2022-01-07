; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_separatefields.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_separatefields.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__**, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i64, i32 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %6, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %7, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %19, i64 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %8, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = icmp ne %struct.TYPE_13__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  br label %78

34:                                               ; preds = %2
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %10, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @extract_field(%struct.TYPE_13__* %38, i32 %41, i32 %44)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %34
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  br label %69

65:                                               ; preds = %51, %34
  %66 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %57
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %72 = call i32 @ff_filter_frame(%struct.TYPE_14__* %70, %struct.TYPE_13__* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %117

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %33
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %80 = call %struct.TYPE_13__* @av_frame_clone(%struct.TYPE_13__* %79)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %82, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = icmp ne %struct.TYPE_13__* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %78
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = call i32 @AVERROR(i32 %88)
  store i32 %89, i32* %3, align 4
  br label %117

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @extract_field(%struct.TYPE_13__* %92, i32 %95, i32 %101)
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %91
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = mul nsw i64 %111, 2
  store i64 %112, i64* %110, align 8
  br label %113

113:                                              ; preds = %108, %91
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %116 = call i32 @ff_filter_frame(%struct.TYPE_14__* %114, %struct.TYPE_13__* %115)
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %87, %75
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @extract_field(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @av_frame_clone(%struct.TYPE_13__*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
