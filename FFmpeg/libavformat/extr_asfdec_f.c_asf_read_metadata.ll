; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_f.c_asf_read_metadata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_f.c_asf_read_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%d stream %d name_len %2d type %d len %4d <%s>\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"AspectRatioX\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"AspectRatioY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @asf_read_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_metadata(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %6, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %7, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @avio_rl16(i32* %25)
  store i32 %26, i32* %8, align 4
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %128, %2
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %131

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @avio_rl16(i32* %32)
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @avio_rl16(i32* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @avio_rl16(i32* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @avio_rl16(i32* %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @avio_rl32(i32* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %10, align 4
  %43 = mul nsw i32 2, %42
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32* @av_malloc(i32 %45)
  store i32* %46, i32** %15, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %31
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %3, align 4
  br label %132

52:                                               ; preds = %31
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @avio_get_str16le(i32* %53, i32 %54, i32* %55, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %13, align 4
  %64 = sub nsw i32 %62, %63
  %65 = call i32 @avio_skip(i32* %61, i32 %64)
  br label %66

66:                                               ; preds = %60, %52
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = load i32, i32* @AV_LOG_TRACE, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32*, i32** %15, align 8
  %75 = call i32 @av_log(%struct.TYPE_8__* %67, i32 %68, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32* %74)
  %76 = load i32*, i32** %15, align 8
  %77 = call i32 @strcmp(i32* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %66
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @get_value(i32* %82, i32 %83, i32 16)
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 128
  br i1 %86, label %87, label %96

87:                                               ; preds = %79
  %88 = load i32, i32* %17, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i32 %88, i32* %95, align 4
  br label %96

96:                                               ; preds = %87, %79
  br label %126

97:                                               ; preds = %66
  %98 = load i32*, i32** %15, align 8
  %99 = call i32 @strcmp(i32* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %119, label %101

101:                                              ; preds = %97
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @get_value(i32* %104, i32 %105, i32 16)
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 128
  br i1 %108, label %109, label %118

109:                                              ; preds = %101
  %110 = load i32, i32* %18, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  store i32 %110, i32* %117, align 4
  br label %118

118:                                              ; preds = %109, %101
  br label %125

119:                                              ; preds = %97
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %121 = load i32*, i32** %15, align 8
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @get_tag(%struct.TYPE_8__* %120, i32* %121, i32 %122, i32 %123, i32 16)
  br label %125

125:                                              ; preds = %119, %118
  br label %126

126:                                              ; preds = %125, %96
  %127 = call i32 @av_freep(i32** %15)
  br label %128

128:                                              ; preds = %126
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  br label %27

131:                                              ; preds = %27
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %49
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @avio_rl16(i32*) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_get_str16le(i32*, i32, i32*, i32) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i32 @get_value(i32*, i32, i32) #1

declare dso_local i32 @get_tag(%struct.TYPE_8__*, i32*, i32, i32, i32) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
