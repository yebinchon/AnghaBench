; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_srtenc.c_srt_style_apply.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_srtenc.c_srt_style_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i64, i64, i32 }

@ASS_DEFAULT_FONT = common dso_local global i32 0, align 4
@ASS_DEFAULT_FONT_SIZE = common dso_local global i64 0, align 8
@ASS_DEFAULT_COLOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"<font\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" face=\22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" size=\22%d\22\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" color=\22#%06x\22\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c">\00", align 1
@ASS_DEFAULT_BOLD = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"<b>\00", align 1
@ASS_DEFAULT_ITALIC = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"<i>\00", align 1
@ASS_DEFAULT_UNDERLINE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"<u>\00", align 1
@ASS_DEFAULT_ALIGNMENT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"{\\an%d}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*)* @srt_style_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srt_style_apply(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call %struct.TYPE_8__* @ff_ass_style_get(i32 %9, i8* %10)
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %142

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 16777215
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ASS_DEFAULT_FONT, align 4
  %28 = call i64 @strcmp(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %23, %14
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ASS_DEFAULT_FONT_SIZE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ASS_DEFAULT_COLOR, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %94

40:                                               ; preds = %36, %30, %23
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = call i32 (%struct.TYPE_7__*, i8*, ...) @srt_print(%struct.TYPE_7__* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ASS_DEFAULT_FONT, align 4
  %52 = call i64 @strcmp(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.TYPE_7__*, i8*, ...) @srt_print(%struct.TYPE_7__* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %54, %47, %40
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ASS_DEFAULT_FONT_SIZE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (%struct.TYPE_7__*, i8*, ...) @srt_print(%struct.TYPE_7__* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  br label %72

72:                                               ; preds = %66, %60
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @ASS_DEFAULT_COLOR, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = load i32, i32* %6, align 4
  %79 = and i32 %78, 16711680
  %80 = ashr i32 %79, 16
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, 65280
  %83 = or i32 %80, %82
  %84 = load i32, i32* %6, align 4
  %85 = and i32 %84, 255
  %86 = shl i32 %85, 16
  %87 = or i32 %83, %86
  %88 = call i32 (%struct.TYPE_7__*, i8*, ...) @srt_print(%struct.TYPE_7__* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %76, %72
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = call i32 (%struct.TYPE_7__*, i8*, ...) @srt_print(%struct.TYPE_7__* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = call i32 @srt_stack_push(%struct.TYPE_7__* %92, i8 zeroext 102)
  br label %94

94:                                               ; preds = %89, %36
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ASS_DEFAULT_BOLD, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = call i32 (%struct.TYPE_7__*, i8*, ...) @srt_print(%struct.TYPE_7__* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = call i32 @srt_stack_push(%struct.TYPE_7__* %103, i8 zeroext 98)
  br label %105

105:                                              ; preds = %100, %94
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ASS_DEFAULT_ITALIC, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %113 = call i32 (%struct.TYPE_7__*, i8*, ...) @srt_print(%struct.TYPE_7__* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = call i32 @srt_stack_push(%struct.TYPE_7__* %114, i8 zeroext 105)
  br label %116

116:                                              ; preds = %111, %105
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @ASS_DEFAULT_UNDERLINE, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %124 = call i32 (%struct.TYPE_7__*, i8*, ...) @srt_print(%struct.TYPE_7__* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %126 = call i32 @srt_stack_push(%struct.TYPE_7__* %125, i8 zeroext 117)
  br label %127

127:                                              ; preds = %122, %116
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @ASS_DEFAULT_ALIGNMENT, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %127
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (%struct.TYPE_7__*, i8*, ...) @srt_print(%struct.TYPE_7__* %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %137)
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  store i32 1, i32* %140, align 4
  br label %141

141:                                              ; preds = %133, %127
  br label %142

142:                                              ; preds = %141, %2
  ret void
}

declare dso_local %struct.TYPE_8__* @ff_ass_style_get(i32, i8*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @srt_print(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @srt_stack_push(%struct.TYPE_7__*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
