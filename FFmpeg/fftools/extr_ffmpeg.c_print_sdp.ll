; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_print_sdp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_print_sdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@nb_output_files = common dso_local global i32 0, align 4
@output_files = common dso_local global %struct.TYPE_12__** null, align 8
@.str = private unnamed_addr constant [4 x i8] c"rtp\00", align 1
@sdp_filename = common dso_local global %struct.TYPE_11__** null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"SDP:\0A%s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@int_cb = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to open sdp file '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SDP:\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_sdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_sdp() #0 {
  %1 = alloca [16384 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__**, align 8
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %21, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @nb_output_files, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @output_files, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %11, i64 %13
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  br label %103

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %6

24:                                               ; preds = %6
  %25 = load i32, i32* @nb_output_files, align 4
  %26 = call %struct.TYPE_11__** @av_malloc_array(i32 %25, i32 8)
  store %struct.TYPE_11__** %26, %struct.TYPE_11__*** %5, align 8
  %27 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %28 = icmp ne %struct.TYPE_11__** %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = call i32 @exit_program(i32 1)
  br label %31

31:                                               ; preds = %29, %24
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %65, %31
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @nb_output_files, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %32
  %37 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @output_files, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %37, i64 %39
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strcmp(i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %36
  %51 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @output_files, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %51, i64 %53
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %58, i64 %60
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %61, align 8
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %50, %36
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %2, align 4
  br label %32

68:                                               ; preds = %32
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  br label %101

72:                                               ; preds = %68
  %73 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %74 = load i32, i32* %3, align 4
  %75 = getelementptr inbounds [16384 x i8], [16384 x i8]* %1, i64 0, i64 0
  %76 = call i32 @av_sdp_create(%struct.TYPE_11__** %73, i32 %74, i8* %75, i32 16384)
  %77 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @sdp_filename, align 8
  %78 = icmp ne %struct.TYPE_11__** %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %72
  %80 = getelementptr inbounds [16384 x i8], [16384 x i8]* %1, i64 0, i64 0
  %81 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  %82 = load i32, i32* @stdout, align 4
  %83 = call i32 @fflush(i32 %82)
  br label %100

84:                                               ; preds = %72
  %85 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @sdp_filename, align 8
  %86 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %87 = call i64 @avio_open2(i32** %4, %struct.TYPE_11__** %85, i32 %86, i32* @int_cb, i32* null)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @AV_LOG_ERROR, align 4
  %91 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @sdp_filename, align 8
  %92 = call i32 @av_log(i32* null, i32 %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_11__** %91)
  br label %99

93:                                               ; preds = %84
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds [16384 x i8], [16384 x i8]* %1, i64 0, i64 0
  %96 = call i32 @avio_printf(i32* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %95)
  %97 = call i32 @avio_closep(i32** %4)
  %98 = call i32 @av_freep(%struct.TYPE_11__*** @sdp_filename)
  br label %99

99:                                               ; preds = %93, %89
  br label %100

100:                                              ; preds = %99, %79
  br label %101

101:                                              ; preds = %100, %71
  %102 = call i32 @av_freep(%struct.TYPE_11__*** %5)
  br label %103

103:                                              ; preds = %101, %19
  ret void
}

declare dso_local %struct.TYPE_11__** @av_malloc_array(i32, i32) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @av_sdp_create(%struct.TYPE_11__**, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @avio_open2(i32**, %struct.TYPE_11__**, i32, i32*, i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, %struct.TYPE_11__**) #1

declare dso_local i32 @avio_printf(i32*, i8*, i8*) #1

declare dso_local i32 @avio_closep(i32**) #1

declare dso_local i32 @av_freep(%struct.TYPE_11__***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
