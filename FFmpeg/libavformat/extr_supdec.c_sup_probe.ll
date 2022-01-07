; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_supdec.c_sup_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_supdec.c_sup_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64 }

@SUP_PGS_MAGIC = common dso_local global i32 0, align 4
@AVPROBE_SCORE_RETRY = common dso_local global i32 0, align 4
@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @sup_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sup_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %46, %1
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 10
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  %18 = load i64, i64* %5, align 8
  %19 = icmp ult i64 %18, 13
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %49

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @AV_RB16(i8* %22)
  %24 = load i32, i32* @SUP_PGS_MAGIC, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %71

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 10
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = call i32 @AV_RB16(i8* %30)
  %32 = add nsw i32 %31, 10
  %33 = add nsw i32 %32, 3
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %49

39:                                               ; preds = %27
  %40 = load i64, i64* %7, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 %40
  store i8* %42, i8** %4, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %5, align 8
  %45 = sub i64 %44, %43
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %14

49:                                               ; preds = %38, %20, %14
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %71

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @AVPROBE_SCORE_RETRY, align 4
  %58 = sdiv i32 %57, 2
  store i32 %58, i32* %2, align 4
  br label %71

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @AVPROBE_SCORE_RETRY, align 4
  store i32 %63, i32* %2, align 4
  br label %71

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 10
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  store i32 %68, i32* %2, align 4
  br label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %67, %62, %56, %52, %26
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @AV_RB16(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
