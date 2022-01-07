; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_decode_user_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_decode_user_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"DivX%dBuild%d%c\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"DivX%db%d%c\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"FFmpe%*[^b]b%d\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"FFmpeg v%d.%d.%d / libavcodec build: %d\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Lavc%d.%d.%d\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [91 x i8] c"Unknown Lavc version string encountered, %d.%d.%d; clamping sub-version values to 8-bits.\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ffmpeg\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"XviD%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)* @decode_user_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_user_data(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 4
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %39, %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 255
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = call i64 @get_bits_count(%struct.TYPE_11__* %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br label %26

26:                                               ; preds = %19, %16
  %27 = phi i1 [ false, %16 ], [ %25, %19 ]
  br i1 %27, label %28, label %42

28:                                               ; preds = %26
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = call i64 @show_bits(%struct.TYPE_11__* %29, i32 23)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %42

33:                                               ; preds = %28
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = call signext i8 @get_bits(%struct.TYPE_11__* %34, i32 8)
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 %37
  store i8 %35, i8* %38, align 1
  br label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %16

42:                                               ; preds = %32, %26
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 %44
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %47 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %9, i32* %10, i8* %13)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %52 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %9, i32* %10, i8* %13)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %50, %42
  %54 = load i32, i32* %8, align 4
  %55 = icmp sge i32 %54, 2
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i8, i8* %13, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 112
  br label %69

69:                                               ; preds = %65, %56
  %70 = phi i1 [ false, %56 ], [ %68, %65 ]
  %71 = zext i1 %70 to i32
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %53
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %76 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %10)
  %77 = add nsw i32 %76, 3
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 4
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %82 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32* %9, i32* %11, i32* %12, i32* %10)
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %80, %74
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 4
  br i1 %85, label %86, label %122

86:                                               ; preds = %83
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %88 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %9, i32* %11, i32* %12)
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %121

92:                                               ; preds = %86
  %93 = load i32, i32* %9, align 4
  %94 = icmp ugt i32 %93, 255
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %11, align 4
  %97 = icmp ugt i32 %96, 255
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %12, align 4
  %100 = icmp ugt i32 %99, 255
  br i1 %100, label %101, label %110

101:                                              ; preds = %98, %95, %92
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @AV_LOG_WARNING, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @av_log(i32 %104, i32 %105, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.5, i64 0, i64 0), i32 %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %101, %98
  %111 = load i32, i32* %9, align 4
  %112 = and i32 %111, 255
  %113 = shl i32 %112, 16
  %114 = load i32, i32* %11, align 4
  %115 = and i32 %114, 255
  %116 = shl i32 %115, 8
  %117 = add nsw i32 %113, %116
  %118 = load i32, i32* %12, align 4
  %119 = and i32 %118, 255
  %120 = add nsw i32 %117, %119
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %110, %86
  br label %122

122:                                              ; preds = %121, %83
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 4
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %127 = call i64 @strcmp(i8* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  store i32 4600, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %125
  br label %133

133:                                              ; preds = %132, %122
  %134 = load i32, i32* %8, align 4
  %135 = icmp eq i32 %134, 4
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %136, %133
  %141 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %142 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* %10)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %145, %140
  ret i32 0
}

declare dso_local i64 @get_bits_count(%struct.TYPE_11__*) #1

declare dso_local i64 @show_bits(%struct.TYPE_11__*, i32) #1

declare dso_local signext i8 @get_bits(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
