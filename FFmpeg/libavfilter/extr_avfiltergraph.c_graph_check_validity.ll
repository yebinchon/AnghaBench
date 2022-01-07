; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_graph_check_validity.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_graph_check_validity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_10__*, i32, %struct.TYPE_11__*, %struct.TYPE_9__**, %struct.TYPE_11__*, %struct.TYPE_8__** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"Input pad \22%s\22 with type %s of the filter instance \22%s\22 of %s not connected to any source\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [97 x i8] c"Output pad \22%s\22 with type %s of the filter instance \22%s\22 of %s not connected to any destination\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @graph_check_validity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graph_check_validity(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %140, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %143

16:                                               ; preds = %10
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %19, i64 %21
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %6, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %78, %16
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %81

30:                                               ; preds = %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 7
  %33 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %33, i64 %35
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = icmp ne %struct.TYPE_8__* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %30
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 7
  %42 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %42, i64 %44
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %77, label %50

50:                                               ; preds = %39, %30
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 6
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i64 %55
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %9, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @AV_LOG_ERROR, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @av_get_media_type_string(i32 %64)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @av_log(i32* %57, i32 %58, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %65, i32 %68, i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = call i32 @AVERROR(i32 %75)
  store i32 %76, i32* %3, align 4
  br label %144

77:                                               ; preds = %39
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %24

81:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %136, %81
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %139

88:                                               ; preds = %82
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 5
  %91 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %91, i64 %93
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = icmp ne %struct.TYPE_9__* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %88
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 5
  %100 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %100, i64 %102
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %135, label %108

108:                                              ; preds = %97, %88
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i64 %113
  store %struct.TYPE_11__* %114, %struct.TYPE_11__** %9, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* @AV_LOG_ERROR, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @av_get_media_type_string(i32 %122)
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @av_log(i32* %115, i32 %116, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0), i32 %119, i32 %123, i32 %126, i32 %131)
  %133 = load i32, i32* @EINVAL, align 4
  %134 = call i32 @AVERROR(i32 %133)
  store i32 %134, i32* %3, align 4
  br label %144

135:                                              ; preds = %97
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %82

139:                                              ; preds = %82
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %10

143:                                              ; preds = %10
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %143, %108, %50
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @av_log(i32*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @av_get_media_type_string(i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
