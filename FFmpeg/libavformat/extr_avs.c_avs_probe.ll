; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avs.c_avs_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avs.c_avs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @avs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avs_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 119
  br i1 %12, label %13, label %34

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 87
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 3
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %33 = add nsw i32 %32, 5
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %25, %19, %13, %1
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
