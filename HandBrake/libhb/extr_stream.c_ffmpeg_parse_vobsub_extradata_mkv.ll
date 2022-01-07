; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_ffmpeg_parse_vobsub_extradata_mkv.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_ffmpeg_parse_vobsub_extradata_mkv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [104 x i8] c"palette: %06x, %06x, %06x, %06x, %06x, %06x, %06x, %06x, %06x, %06x, %06x, %06x, %06x, %06x, %06x, %06x\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"size: %dx%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*)* @ffmpeg_parse_vobsub_extradata_mkv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmpeg_parse_vobsub_extradata_mkv(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [16 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i8* @malloc(i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %136

23:                                               ; preds = %2
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcpy(i8* %24, i32 %27, i32 %30)
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  store i8 0, i8* %37, align 1
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = call i8* @strtok_r(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %11)
  store i8* %39, i8** %10, align 8
  br label %40

40:                                               ; preds = %91, %23
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %93

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %69, label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 1
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 2
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 3
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 4
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 5
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 6
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 7
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 8
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 9
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 10
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 11
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 12
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 13
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 14
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 15
  %64 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %47, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0), i32* %48, i32* %49, i32* %50, i32* %51, i32* %52, i32* %53, i32* %54, i32* %55, i32* %56, i32* %57, i32* %58, i32* %59, i32* %60, i32* %61, i32* %62, i32* %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp eq i32 %65, 16
  br i1 %66, label %67, label %68

67:                                               ; preds = %46
  store i32 1, i32* %8, align 4
  br label %68

68:                                               ; preds = %67, %46
  br label %69

69:                                               ; preds = %68, %43
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %69
  %73 = load i8*, i8** %10, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %75, i32* %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  store i32 1, i32* %9, align 4
  br label %82

82:                                               ; preds = %81, %72
  br label %83

83:                                               ; preds = %82, %69
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %93

90:                                               ; preds = %86, %83
  br label %91

91:                                               ; preds = %90
  %92 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %11)
  store i8* %92, i8** %10, align 8
  br label %40

93:                                               ; preds = %89, %40
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98, %93
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i32 720, i32* %105, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  store i32 480, i32* %107, align 4
  br label %108

108:                                              ; preds = %103, %98
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @free(i8* %109)
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %108
  store i32 0, i32* %14, align 4
  br label %114

114:                                              ; preds = %129, %113
  %115 = load i32, i32* %14, align 4
  %116 = icmp slt i32 %115, 16
  br i1 %116, label %117, label %132

117:                                              ; preds = %114
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @hb_rgb2yuv(i32 %121)
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %122, i32* %128, align 4
  br label %129

129:                                              ; preds = %117
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %14, align 4
  br label %114

132:                                              ; preds = %114
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  store i32 1, i32* %134, align 8
  store i32 0, i32* %3, align 4
  br label %136

135:                                              ; preds = %108
  store i32 1, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %132, %22
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @hb_rgb2yuv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
