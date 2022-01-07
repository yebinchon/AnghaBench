; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvdsub_parser.c_dvdsub_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvdsub_parser.c_dvdsub_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32* }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Parser input %d too small\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"packet length %d is invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32**, i32*, i32*, i32)* @dvdsub_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvdsub_parse(%struct.TYPE_5__* %0, i32* %1, i32** %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %14, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = load i32**, i32*** %10, align 8
  store i32* %18, i32** %19, align 8
  %20 = load i32, i32* %13, align 4
  %21 = load i32*, i32** %11, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %89

26:                                               ; preds = %6
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @AV_RB16(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 6
  br i1 %35, label %36, label %46

36:                                               ; preds = %33, %26
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* @AV_LOG_DEBUG, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @av_log(i32* %40, i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %7, align 4
  br label %149

46:                                               ; preds = %33, %29
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @AV_RB16(i32* %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load i32*, i32** %12, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = call i32 @AV_RB32(i32* %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %46
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = call i32 @av_freep(i32** %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @INT_MAX, align 4
  %69 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %70 = sub i32 %68, %69
  %71 = icmp ugt i32 %67, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %61
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* @AV_LOG_ERROR, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @av_log(i32* %73, i32 %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %7, align 4
  br label %149

80:                                               ; preds = %61
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %85 = add i32 %83, %84
  %86 = call i32* @av_malloc(i32 %85)
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  store i32* %86, i32** %88, align 8
  br label %89

89:                                               ; preds = %80, %6
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %145

94:                                               ; preds = %89
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %97, %98
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp sle i32 %99, %102
  br i1 %103, label %104, label %141

104:                                              ; preds = %94
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @memcpy(i32* %112, i32* %113, i32 %114)
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp sge i32 %123, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %104
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32**, i32*** %10, align 8
  store i32* %131, i32** %132, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %11, align 8
  store i32 %135, i32* %136, align 4
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i32 0, i32* %138, align 8
  %139 = load i32, i32* %13, align 4
  store i32 %139, i32* %7, align 4
  br label %149

140:                                              ; preds = %104
  br label %144

141:                                              ; preds = %94
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  store i32 0, i32* %143, align 8
  br label %144

144:                                              ; preds = %141, %140
  br label %145

145:                                              ; preds = %144, %89
  %146 = load i32**, i32*** %10, align 8
  store i32* null, i32** %146, align 8
  %147 = load i32*, i32** %11, align 8
  store i32 0, i32* %147, align 4
  %148 = load i32, i32* %13, align 4
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %145, %128, %72, %44
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
