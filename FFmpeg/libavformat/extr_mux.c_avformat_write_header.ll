; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mux.c_avformat_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mux.c_avformat_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 (%struct.TYPE_13__*)* }

@AVFMT_NOFILE = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@AVIO_DATA_MARKER_HEADER = common dso_local global i32 0, align 4
@AVIO_DATA_MARKER_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avformat_write_header(%struct.TYPE_13__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = load i32**, i32*** %5, align 8
  %24 = call i32 @avformat_init_output(%struct.TYPE_13__* %22, i32** %23)
  store i32 %24, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %132

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @AVFMT_NOFILE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %29
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = icmp ne %struct.TYPE_14__* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %48 = load i32, i32* @AVIO_DATA_MARKER_HEADER, align 4
  %49 = call i32 @avio_write_marker(%struct.TYPE_14__* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %38, %29
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %54, align 8
  %56 = icmp ne i32 (%struct.TYPE_13__*)* %55, null
  br i1 %56, label %57, label %92

57:                                               ; preds = %50
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %61, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = call i32 %62(%struct.TYPE_13__* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %57
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = icmp ne %struct.TYPE_14__* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %79, %72, %67, %57
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %128

89:                                               ; preds = %85
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = call i32 @flush_if_needed(%struct.TYPE_13__* %90)
  br label %92

92:                                               ; preds = %89, %50
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @AVFMT_NOFILE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %113, label %101

101:                                              ; preds = %92
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = icmp ne %struct.TYPE_14__* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %111 = load i32, i32* @AVIO_DATA_MARKER_UNKNOWN, align 4
  %112 = call i32 @avio_write_marker(%struct.TYPE_14__* %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %106, %101, %92
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %113
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %122 = call i32 @init_pts(%struct.TYPE_13__* %121)
  store i32 %122, i32* %6, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %128

125:                                              ; preds = %120
  br label %126

126:                                              ; preds = %125, %113
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %3, align 4
  br label %132

128:                                              ; preds = %124, %88
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %130 = call i32 @deinit_muxer(%struct.TYPE_13__* %129)
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %128, %126, %26
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @avformat_init_output(%struct.TYPE_13__*, i32**) #1

declare dso_local i32 @avio_write_marker(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @flush_if_needed(%struct.TYPE_13__*) #1

declare dso_local i32 @init_pts(%struct.TYPE_13__*) #1

declare dso_local i32 @deinit_muxer(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
