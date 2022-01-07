; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_subviewerdec.c_subviewer_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_subviewerdec.c_subviewer_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [34 x i8] c"%*u:%*u:%*u.%*u,%*u:%*u:%*u.%*u%c\00", align 1
@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"[INFORMATION]\00", align 1
@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @subviewer_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subviewer_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @AV_RB24(i8* %9)
  %11 = icmp eq i32 %10, 15711167
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 3
  store i8* %14, i8** %5, align 8
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @sscanf(i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %4)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  store i32 %20, i32* %2, align 4
  br label %29

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %27 = sdiv i32 %26, 3
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %25, %19
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @AV_RB24(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
