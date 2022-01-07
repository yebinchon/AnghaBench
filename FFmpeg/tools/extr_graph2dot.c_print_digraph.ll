; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_graph2dot.c_print_digraph.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_graph2dot.c_print_digraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i8*, i32, %struct.TYPE_9__*, %struct.TYPE_12__** }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_12__ = type { i64, i32, i32, i32, %struct.TYPE_10__, i32, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i8* }

@.str = private unnamed_addr constant [13 x i8] c"digraph G {\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"node [shape=box]\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"rankdir=LR\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s\\n(%s)\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\22%s\22 -> \22%s\22 [ label= \22inpad:%s -> outpad:%s\\n\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"fmt:%s w:%d h:%d tb:%d/%d\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"fmt:%s sr:%d cl:%s tb:%d/%d\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"\22 ];\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*)* @print_digraph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_digraph(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca [255 x i8], align 16
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %154, %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %157

26:                                               ; preds = %20
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %29, i64 %31
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %8, align 8
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @snprintf(i8* %34, i32 128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %37, i8* %42)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %150, %26
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %153

50:                                               ; preds = %44
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %53, i64 %55
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  store %struct.TYPE_12__* %57, %struct.TYPE_12__** %9, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = icmp ne %struct.TYPE_12__* %58, null
  br i1 %59, label %60, label %149

60:                                               ; preds = %50
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 9
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** %11, align 8
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @snprintf(i8* %64, i32 128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %67, i8* %72)
  %74 = load i32*, i32** %3, align 8
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @avfilter_pad_get_name(i32 %79, i32 0)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @avfilter_pad_get_name(i32 %83, i32 0)
  %85 = call i32 (i32*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %75, i8* %76, i8* %80, i8* %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %115

91:                                               ; preds = %60
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.TYPE_11__* @av_pix_fmt_desc_get(i32 %94)
  store %struct.TYPE_11__* %95, %struct.TYPE_11__** %12, align 8
  %96 = load i32*, i32** %3, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32*, i8*, ...) @fprintf(i32* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %99, i32 %102, i32 %105, i32 %109, i32 %113)
  br label %146

115:                                              ; preds = %60
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %145

121:                                              ; preds = %115
  %122 = getelementptr inbounds [255 x i8], [255 x i8]* %13, i64 0, i64 0
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @av_get_channel_layout_string(i8* %122, i32 255, i32 -1, i32 %125)
  %127 = load i32*, i32** %3, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @av_get_sample_fmt_name(i32 %130)
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds [255 x i8], [255 x i8]* %13, i64 0, i64 0
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i32*, i8*, ...) @fprintf(i32* %127, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %131, i32 %134, i8* %135, i32 %139, i32 %143)
  br label %145

145:                                              ; preds = %121, %115
  br label %146

146:                                              ; preds = %145, %91
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 (i32*, i8*, ...) @fprintf(i32* %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %50
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %44

153:                                              ; preds = %44
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %5, align 4
  br label %20

157:                                              ; preds = %20
  %158 = load i32*, i32** %3, align 8
  %159 = call i32 (i32*, i8*, ...) @fprintf(i32* %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @avfilter_pad_get_name(i32, i32) #1

declare dso_local %struct.TYPE_11__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_get_channel_layout_string(i8*, i32, i32, i32) #1

declare dso_local i8* @av_get_sample_fmt_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
