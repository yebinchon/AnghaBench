; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_srtdec.c_srt_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_srtdec.c_srt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c" --> \00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"%*d:%*d:%*d%*1[,.]%*d --> %*d:%*d:%*d%*1[,.]%d\00", align 1
@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @srt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srt_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ff_text_init_buf(i32* %7, i32 %10, i32 %13)
  br label %15

15:                                               ; preds = %25, %1
  %16 = call signext i8 @ff_text_peek_r8(i32* %7)
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 13
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = call signext i8 @ff_text_peek_r8(i32* %7)
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 10
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ true, %15 ], [ %22, %19 ]
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = call i32 @ff_text_r8(i32* %7)
  br label %15

27:                                               ; preds = %23
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %29 = call i64 @ff_subtitles_read_line(i32* %7, i8* %28, i32 64)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %33 = call i64 @strtol(i8* %32, i8** %6, i32 10)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %31, %27
  store i32 0, i32* %2, align 4
  br label %77

40:                                               ; preds = %35
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %42 = call i64 @ff_subtitles_read_line(i32* %7, i8* %41, i32 64)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %77

45:                                               ; preds = %40
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  store i8* %46, i8** %6, align 8
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %48 = load i8, i8* %47, align 16
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 45
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  br label %54

54:                                               ; preds = %51, %45
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sge i32 %58, 48
  br i1 %59, label %60, label %76

60:                                               ; preds = %54
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp sle i32 %64, 57
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %68 = call i64 @strstr(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %72 = call i32 @sscanf(i8* %71, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32* %4)
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  store i32 %75, i32* %2, align 4
  br label %77

76:                                               ; preds = %70, %66, %60, %54
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %74, %44, %39
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @ff_text_init_buf(i32*, i32, i32) #1

declare dso_local signext i8 @ff_text_peek_r8(i32*) #1

declare dso_local i32 @ff_text_r8(i32*) #1

declare dso_local i64 @ff_subtitles_read_line(i32*, i8*, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
