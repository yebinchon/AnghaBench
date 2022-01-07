; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_graphparser.c_link_filter_inouts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_graphparser.c_link_filter_inouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_16__* }

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Too many inputs specified for the \22%s\22 filter.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__**, %struct.TYPE_16__**, i8*)* @link_filter_inouts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_filter_inouts(%struct.TYPE_17__* %0, %struct.TYPE_16__** %1, %struct.TYPE_16__** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__**, align 8
  %8 = alloca %struct.TYPE_16__**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_16__** %1, %struct.TYPE_16__*** %7, align 8
  store %struct.TYPE_16__** %2, %struct.TYPE_16__*** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %75, %4
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %78

20:                                               ; preds = %14
  %21 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %12, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %24 = icmp ne %struct.TYPE_16__* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %30, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 3
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %32, align 8
  br label %40

33:                                               ; preds = %20
  %34 = call %struct.TYPE_16__* @av_mallocz(i32 32)
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %12, align 8
  %35 = icmp ne %struct.TYPE_16__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %5, align 4
  br label %119

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %25
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  %44 = icmp ne %struct.TYPE_17__* %43, null
  br i1 %44, label %45, label %65

45:                                               ; preds = %40
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @link_filter(%struct.TYPE_17__* %48, i32 %51, %struct.TYPE_17__* %52, i32 %53, i8* %54)
  store i32 %55, i32* %11, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 2
  %58 = call i32 @av_freep(%struct.TYPE_16__** %57)
  %59 = call i32 @av_freep(%struct.TYPE_16__** %12)
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %45
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %5, align 4
  br label %119

64:                                               ; preds = %45
  br label %74

65:                                               ; preds = %40
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  store %struct.TYPE_17__* %66, %struct.TYPE_17__** %68, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  %73 = call i32 @append_inout(%struct.TYPE_16__** %72, %struct.TYPE_16__** %12)
  br label %74

74:                                               ; preds = %65, %64
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %14

78:                                               ; preds = %14
  %79 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = icmp ne %struct.TYPE_16__* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* @AV_LOG_ERROR, align 4
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @av_log(i8* %83, i32 %84, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = call i32 @AVERROR(i32 %91)
  store i32 %92, i32* %5, align 4
  br label %119

93:                                               ; preds = %78
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %108, %93
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %10, align 4
  %100 = icmp ne i32 %98, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %97
  %102 = call %struct.TYPE_16__* @av_mallocz(i32 32)
  store %struct.TYPE_16__* %102, %struct.TYPE_16__** %13, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %104 = icmp ne %struct.TYPE_16__* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = call i32 @AVERROR(i32 %106)
  store i32 %107, i32* %5, align 4
  br label %119

108:                                              ; preds = %101
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  store %struct.TYPE_17__* %109, %struct.TYPE_17__** %111, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %117 = call i32 @insert_inout(%struct.TYPE_16__** %115, %struct.TYPE_16__* %116)
  br label %97

118:                                              ; preds = %97
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %118, %105, %82, %62, %36
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local %struct.TYPE_16__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @link_filter(%struct.TYPE_17__*, i32, %struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @av_freep(%struct.TYPE_16__**) #1

declare dso_local i32 @append_inout(%struct.TYPE_16__**, %struct.TYPE_16__**) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i32) #1

declare dso_local i32 @insert_inout(%struct.TYPE_16__**, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
