; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_gifdec.c_gif_read_ext.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_gifdec.c_gif_read_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64, i32, i32 }

@GIF_GCE_EXT_LABEL = common dso_local global i32 0, align 4
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Graphic Control Extension block's size less than 4.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@GIF_APP_EXT_LABEL = common dso_local global i32 0, align 4
@NETSCAPE_EXT_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @gif_read_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gif_read_ext(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [256 x i32], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @avio_r8(i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GIF_GCE_EXT_LABEL, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %72

21:                                               ; preds = %1
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @avio_r8(i32* %22)
  store i32 %23, i32* %6, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = load i32, i32* @AV_LOG_FATAL, align 4
  %28 = call i32 @av_log(%struct.TYPE_6__* %26, i32 %27, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %29, i32* %2, align 4
  br label %140

30:                                               ; preds = %21
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @avio_skip(i32* %31, i32 1)
  store i32 %32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %2, align 4
  br label %140

36:                                               ; preds = %30
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @avio_rl16(i32* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %36
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %48, %36
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @FFMIN(i64 %57, i32 %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 %65, 3
  %67 = call i32 @avio_skip(i32* %64, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %54
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %2, align 4
  br label %140

71:                                               ; preds = %54
  br label %133

72:                                               ; preds = %1
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @GIF_APP_EXT_LABEL, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %132

76:                                               ; preds = %72
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @avio_r8(i32* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @avio_read(i32* %79, i32* %80, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %76
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85, %76
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %2, align 4
  br label %140

90:                                               ; preds = %85
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @NETSCAPE_EXT_STR, align 4
  %93 = call i32 @strlen(i32 %92)
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %131

95:                                               ; preds = %90
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @avio_r8(i32* %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @avio_read(i32* %98, i32* %99, i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %95
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %104, %95
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %2, align 4
  br label %140

109:                                              ; preds = %104
  %110 = load i32, i32* %6, align 4
  %111 = icmp eq i32 %110, 3
  br i1 %111, label %112, label %130

112:                                              ; preds = %109
  %113 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %114 = load i32, i32* %113, align 16
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %130

116:                                              ; preds = %112
  %117 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = call i32 @AV_RL16(i32* %118)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %116
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 3
  store i32 -1, i32* %128, align 8
  br label %129

129:                                              ; preds = %126, %116
  br label %130

130:                                              ; preds = %129, %112, %109
  br label %131

131:                                              ; preds = %130, %90
  br label %132

132:                                              ; preds = %131, %72
  br label %133

133:                                              ; preds = %132, %71
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @gif_skip_subblocks(i32* %134)
  store i32 %135, i32* %8, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %2, align 4
  br label %140

139:                                              ; preds = %133
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %139, %137, %107, %88, %69, %34, %25
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i64 @avio_rl16(i32*) #1

declare dso_local i64 @FFMIN(i64, i32) #1

declare dso_local i32 @avio_read(i32*, i32*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @gif_skip_subblocks(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
