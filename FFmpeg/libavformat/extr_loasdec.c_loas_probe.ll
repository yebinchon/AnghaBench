; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_loasdec.c_loas_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_loasdec.c_loas_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@LOAS_SYNC_WORD = common dso_local global i32 0, align 4
@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @loas_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loas_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = getelementptr inbounds i32, i32* %21, i64 -3
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %8, align 8
  store i32* %23, i32** %10, align 8
  br label %24

24:                                               ; preds = %76, %1
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = icmp ult i32* %25, %26
  br i1 %27, label %28, label %79

28:                                               ; preds = %24
  %29 = load i32*, i32** %10, align 8
  store i32* %29, i32** %9, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %63, %28
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = icmp ult i32* %31, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %30
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @AV_RB24(i32* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = ashr i32 %37, 13
  %39 = load i32, i32* @LOAS_SYNC_WORD, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %66

42:                                               ; preds = %34
  %43 = load i32, i32* %12, align 4
  %44 = and i32 %43, 8191
  %45 = add nsw i32 %44, 3
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 7
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %66

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = ptrtoint i32* %51 to i64
  %54 = ptrtoint i32* %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = call i32 @FFMIN(i32 %50, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %9, align 8
  br label %63

63:                                               ; preds = %49
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %30

66:                                               ; preds = %48, %41, %30
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @FFMAX(i32 %67, i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = icmp eq i32* %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %66
  br label %76

76:                                               ; preds = %75
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32* %78, i32** %10, align 8
  br label %24

79:                                               ; preds = %24
  %80 = load i32, i32* %5, align 4
  %81 = icmp sge i32 %80, 3
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %2, align 4
  br label %97

85:                                               ; preds = %79
  %86 = load i32, i32* %4, align 4
  %87 = icmp sgt i32 %86, 100
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  store i32 %89, i32* %2, align 4
  br label %97

90:                                               ; preds = %85
  %91 = load i32, i32* %4, align 4
  %92 = icmp sge i32 %91, 3
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %95 = sdiv i32 %94, 2
  store i32 %95, i32* %2, align 4
  br label %97

96:                                               ; preds = %90
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %93, %88, %82
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @AV_RB24(i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
