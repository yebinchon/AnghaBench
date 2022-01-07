; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_read_sbr_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_read_sbr_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@TYPE_SCE = common dso_local global i32 0, align 4
@TYPE_CCE = common dso_local global i32 0, align 4
@TYPE_CPE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Invalid bitstream - cannot apply SBR to element type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"SBR Extension over read.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i32*, i32)* @read_sbr_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_sbr_data(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @get_bits_count(i32* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @TYPE_SCE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @TYPE_CCE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22, %4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i64 @read_sbr_single_channel_element(%struct.TYPE_13__* %27, %struct.TYPE_12__* %28, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = call i32 @sbr_turnoff(%struct.TYPE_12__* %33)
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @get_bits_count(i32* %35)
  %37 = load i32, i32* %10, align 4
  %38 = sub i32 %36, %37
  store i32 %38, i32* %5, align 4
  br label %123

39:                                               ; preds = %26
  br label %72

40:                                               ; preds = %22
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @TYPE_CPE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i64 @read_sbr_channel_pair_element(%struct.TYPE_13__* %45, %struct.TYPE_12__* %46, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = call i32 @sbr_turnoff(%struct.TYPE_12__* %51)
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @get_bits_count(i32* %53)
  %55 = load i32, i32* %10, align 4
  %56 = sub i32 %54, %55
  store i32 %56, i32* %5, align 4
  br label %123

57:                                               ; preds = %44
  br label %71

58:                                               ; preds = %40
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AV_LOG_ERROR, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (i32, i32, i8*, ...) @av_log(i32 %61, i32 %62, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %66 = call i32 @sbr_turnoff(%struct.TYPE_12__* %65)
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @get_bits_count(i32* %67)
  %69 = load i32, i32* %10, align 4
  %70 = sub i32 %68, %69
  store i32 %70, i32* %5, align 4
  br label %123

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71, %39
  %73 = load i32*, i32** %8, align 8
  %74 = call i64 @get_bits1(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %118

76:                                               ; preds = %72
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @get_bits(i32* %77, i32 4)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp eq i32 %79, 15
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @get_bits(i32* %82, i32 8)
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %81, %76
  %87 = load i32, i32* %11, align 4
  %88 = shl i32 %87, 3
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %92, %86
  %90 = load i32, i32* %11, align 4
  %91 = icmp sgt i32 %90, 7
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i32, i32* %11, align 4
  %94 = sub nsw i32 %93, 2
  store i32 %94, i32* %11, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @get_bits(i32* %98, i32 2)
  %100 = call i32 @read_sbr_extension(%struct.TYPE_13__* %95, %struct.TYPE_12__* %96, i32* %97, i32 %99, i32* %11)
  br label %89

101:                                              ; preds = %89
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @AV_LOG_ERROR, align 4
  %109 = call i32 (i32, i32, i8*, ...) @av_log(i32 %107, i32 %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %110

110:                                              ; preds = %104, %101
  %111 = load i32, i32* %11, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @skip_bits(i32* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %110
  br label %118

118:                                              ; preds = %117, %72
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @get_bits_count(i32* %119)
  %121 = load i32, i32* %10, align 4
  %122 = sub i32 %120, %121
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %118, %58, %50, %32
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i64 @read_sbr_single_channel_element(%struct.TYPE_13__*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @sbr_turnoff(%struct.TYPE_12__*) #1

declare dso_local i64 @read_sbr_channel_pair_element(%struct.TYPE_13__*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @read_sbr_extension(%struct.TYPE_13__*, %struct.TYPE_12__*, i32*, i32, i32*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
