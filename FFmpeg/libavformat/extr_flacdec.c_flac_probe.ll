; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flacdec.c_flac_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flacdec.c_flac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"fLaC\00", align 1
@FLAC_METADATA_TYPE_STREAMINFO = common dso_local global i32 0, align 4
@FLAC_STREAMINFO_SIZE = common dso_local global i32 0, align 4
@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @flac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flac_probe(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @AV_RB16(i32* %11)
  %13 = and i32 %12, 65534
  %14 = icmp eq i32 %13, 65528
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = call i32 @raw_flac_probe(%struct.TYPE_4__* %16)
  store i32 %17, i32* %2, align 4
  br label %83

18:                                               ; preds = %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %21, 21
  br i1 %22, label %23, label %82

23:                                               ; preds = %18
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 127
  store i32 %29, i32* %4, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  %34 = call i32 @AV_RB24(i32* %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 8
  %39 = call i32 @AV_RB16(i32* %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 10
  %44 = call i32 @AV_RB16(i32* %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 18
  %49 = call i32 @AV_RB24(i32* %48)
  %50 = ashr i32 %49, 4
  store i32 %50, i32* %8, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @memcmp(i32* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %83

57:                                               ; preds = %23
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @FLAC_METADATA_TYPE_STREAMINFO, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @FLAC_STREAMINFO_SIZE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = icmp sge i32 %66, 16
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = icmp sle i32 %76, 655350
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  store i32 %79, i32* %2, align 4
  br label %83

80:                                               ; preds = %75, %72, %68, %65, %61, %57
  %81 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  store i32 %81, i32* %2, align 4
  br label %83

82:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %80, %78, %56, %15
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @raw_flac_probe(%struct.TYPE_4__*) #1

declare dso_local i32 @AV_RB24(i32*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
