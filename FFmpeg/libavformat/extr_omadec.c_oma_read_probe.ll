; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_omadec.c_oma_read_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_omadec.c_oma_read_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32 }

@ID3v2_HEADER_SIZE = common dso_local global i32 0, align 4
@ID3v2_EA3_MAGIC = common dso_local global i32 0, align 4
@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"EA3\00", align 1
@EA3_HEADER_SIZE = common dso_local global i64 0, align 8
@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @oma_read_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oma_read_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  store i64* %8, i64** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ID3v2_HEADER_SIZE, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i64*, i64** %4, align 8
  %16 = load i32, i32* @ID3v2_EA3_MAGIC, align 4
  %17 = call i64 @ff_id3v2_match(i64* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i64*, i64** %4, align 8
  %21 = call i32 @ff_id3v2_tag_len(i64* %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %14, %1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %26, 5
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %34 = sdiv i32 %33, 2
  br label %36

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %32
  %37 = phi i32 [ %34, %32 ], [ 0, %35 ]
  store i32 %37, i32* %2, align 4
  br label %60

38:                                               ; preds = %22
  %39 = load i32, i32* %5, align 4
  %40 = load i64*, i64** %4, align 8
  %41 = zext i32 %39 to i64
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64* %42, i64** %4, align 8
  %43 = load i64*, i64** %4, align 8
  %44 = call i32 @memcmp(i64* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %38
  %47 = load i64*, i64** %4, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = load i64*, i64** %4, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 5
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @EA3_HEADER_SIZE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %51, %46, %38
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %57, %36
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @ff_id3v2_match(i64*, i32) #1

declare dso_local i32 @ff_id3v2_tag_len(i64*) #1

declare dso_local i32 @memcmp(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
