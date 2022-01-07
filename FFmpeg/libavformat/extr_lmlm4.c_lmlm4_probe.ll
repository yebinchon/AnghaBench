; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_lmlm4.c_lmlm4_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_lmlm4.c_lmlm4_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@LMLM4_MPEG1L2 = common dso_local global i32 0, align 4
@LMLM4_INVALID = common dso_local global i32 0, align 4
@LMLM4_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @lmlm4_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lmlm4_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 2
  %12 = call i32 @AV_RB16(i8* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 4
  %15 = call i32 @AV_RB32(i8* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @AV_RB16(i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %58, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @LMLM4_MPEG1L2, align 4
  %22 = icmp ule i32 %20, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @LMLM4_INVALID, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @LMLM4_MAX_PACKET_SIZE, align 4
  %33 = icmp ule i32 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @LMLM4_MPEG1L2, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 8
  %41 = call i32 @AV_RB16(i8* %40)
  %42 = and i32 %41, 65534
  %43 = icmp ne i32 %42, 65532
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %59

45:                                               ; preds = %38
  %46 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %47 = sdiv i32 %46, 3
  store i32 %47, i32* %2, align 4
  br label %59

48:                                               ; preds = %34
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 8
  %51 = call i32 @AV_RB24(i8* %50)
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %55 = sdiv i32 %54, 5
  store i32 %55, i32* %2, align 4
  br label %59

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57, %30, %26, %23, %19, %1
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %53, %45, %44
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @AV_RB16(i8*) #1

declare dso_local i32 @AV_RB32(i8*) #1

declare dso_local i32 @AV_RB24(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
