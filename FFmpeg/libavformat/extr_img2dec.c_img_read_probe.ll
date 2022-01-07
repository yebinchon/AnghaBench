; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_img2dec.c_img_read_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_img2dec.c_img_read_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64* }

@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"*?{\00", align 1
@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"gif\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @img_read_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_read_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %6 = load i64*, i64** %5, align 8
  %7 = icmp ne i64* %6, null
  br i1 %7, label %8, label %65

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8
  %12 = call i64 @ff_guess_image2_codec(i64* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %65

14:                                               ; preds = %8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = call i64 @av_filename_number_test(i64* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  store i32 %21, i32* %2, align 4
  br label %66

22:                                               ; preds = %14
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = call i64 @is_glob(i64* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  store i32 %29, i32* %2, align 4
  br label %66

30:                                               ; preds = %22
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = call i64 @strcspn(i64* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %38 = getelementptr inbounds i64, i64* %33, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %43 = add nsw i32 %42, 2
  store i32 %43, i32* %2, align 4
  br label %66

44:                                               ; preds = %30
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %66

50:                                               ; preds = %44
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = call i64 @av_match_ext(i64* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = call i64 @av_match_ext(i64* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56, %50
  store i32 5, i32* %2, align 4
  br label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %63, %62, %49, %41, %28, %20
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @ff_guess_image2_codec(i64*) #1

declare dso_local i64 @av_filename_number_test(i64*) #1

declare dso_local i64 @is_glob(i64*) #1

declare dso_local i64 @strcspn(i64*, i8*) #1

declare dso_local i64 @av_match_ext(i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
