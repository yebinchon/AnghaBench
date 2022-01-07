; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_filter_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_filter_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__**, %struct.TYPE_13__**, i32, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { {}* }

@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Query format failed for '%s': %s\0A\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @filter_query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_query_formats(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  %13 = icmp ne %struct.TYPE_13__** %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %17, i64 0
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = icmp ne %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %24, i64 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %53

29:                                               ; preds = %14, %1
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %31, align 8
  %33 = icmp ne %struct.TYPE_14__** %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %37, i64 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = icmp ne %struct.TYPE_14__* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %44, i64 0
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  br label %51

49:                                               ; preds = %34, %29
  %50 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  br label %51

51:                                               ; preds = %49, %41
  %52 = phi i32 [ %48, %41 ], [ %50, %49 ]
  br label %53

53:                                               ; preds = %51, %21
  %54 = phi i32 [ %28, %21 ], [ %52, %51 ]
  store i32 %54, i32* %9, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = bitcast {}** %58 to i32 (%struct.TYPE_15__*)**
  %60 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %59, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = call i32 %60(%struct.TYPE_15__* %61)
  store i32 %62, i32* %4, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %53
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @EAGAIN, align 4
  %67 = call i32 @AVERROR(i32 %66)
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %71 = load i32, i32* @AV_LOG_ERROR, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @av_err2str(i32 %75)
  %77 = call i32 @av_log(%struct.TYPE_15__* %70, i32 %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %76)
  br label %78

78:                                               ; preds = %69, %64
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %155

80:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %99, %80
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %81
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %91, i64 %93
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @sanitize_channel_layouts(%struct.TYPE_15__* %88, i32 %97)
  br label %99

99:                                               ; preds = %87
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %81

102:                                              ; preds = %81
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %121, %102
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %103
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %113, i64 %115
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @sanitize_channel_layouts(%struct.TYPE_15__* %110, i32 %119)
  br label %121

121:                                              ; preds = %109
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %103

124:                                              ; preds = %103
  %125 = load i32, i32* %9, align 4
  %126 = call i32* @ff_all_formats(i32 %125)
  store i32* %126, i32** %6, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = call i32 @ff_set_common_formats(%struct.TYPE_15__* %127, i32* %128)
  store i32 %129, i32* %4, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i32, i32* %4, align 4
  store i32 %132, i32* %2, align 4
  br label %155

133:                                              ; preds = %124
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %154

137:                                              ; preds = %133
  %138 = call i32* (...) @ff_all_samplerates()
  store i32* %138, i32** %8, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 @ff_set_common_samplerates(%struct.TYPE_15__* %139, i32* %140)
  store i32 %141, i32* %4, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32, i32* %4, align 4
  store i32 %144, i32* %2, align 4
  br label %155

145:                                              ; preds = %137
  %146 = call i32* (...) @ff_all_channel_layouts()
  store i32* %146, i32** %7, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %148 = load i32*, i32** %7, align 8
  %149 = call i32 @ff_set_common_channel_layouts(%struct.TYPE_15__* %147, i32* %148)
  store i32 %149, i32* %4, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load i32, i32* %4, align 4
  store i32 %152, i32* %2, align 4
  br label %155

153:                                              ; preds = %145
  br label %154

154:                                              ; preds = %153, %133
  store i32 0, i32* %2, align 4
  br label %155

155:                                              ; preds = %154, %151, %143, %131, %78
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, i32, i32) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @sanitize_channel_layouts(%struct.TYPE_15__*, i32) #1

declare dso_local i32* @ff_all_formats(i32) #1

declare dso_local i32 @ff_set_common_formats(%struct.TYPE_15__*, i32*) #1

declare dso_local i32* @ff_all_samplerates(...) #1

declare dso_local i32 @ff_set_common_samplerates(%struct.TYPE_15__*, i32*) #1

declare dso_local i32* @ff_all_channel_layouts(...) #1

declare dso_local i32 @ff_set_common_channel_layouts(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
