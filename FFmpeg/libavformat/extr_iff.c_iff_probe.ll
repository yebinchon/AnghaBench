; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_iff.c_iff_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_iff.c_iff_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@ID_FORM = common dso_local global i64 0, align 8
@ID_8SVX = common dso_local global i64 0, align 8
@ID_16SV = common dso_local global i64 0, align 8
@ID_MAUD = common dso_local global i64 0, align 8
@ID_PBM = common dso_local global i64 0, align 8
@ID_ACBM = common dso_local global i64 0, align 8
@ID_DEEP = common dso_local global i64 0, align 8
@ID_ILBM = common dso_local global i64 0, align 8
@ID_RGB8 = common dso_local global i64 0, align 8
@ID_ANIM = common dso_local global i64 0, align 8
@ID_RGBN = common dso_local global i64 0, align 8
@ID_FRM8 = common dso_local global i64 0, align 8
@ID_DSD = common dso_local global i64 0, align 8
@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @iff_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iff_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @AV_RL32(i32* %8)
  %10 = load i64, i64* @ID_FORM, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %72

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 8
  %15 = call i64 @AV_RL32(i32* %14)
  %16 = load i64, i64* @ID_8SVX, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %83, label %18

18:                                               ; preds = %12
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 8
  %21 = call i64 @AV_RL32(i32* %20)
  %22 = load i64, i64* @ID_16SV, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %83, label %24

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 8
  %27 = call i64 @AV_RL32(i32* %26)
  %28 = load i64, i64* @ID_MAUD, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %83, label %30

30:                                               ; preds = %24
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 8
  %33 = call i64 @AV_RL32(i32* %32)
  %34 = load i64, i64* @ID_PBM, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %83, label %36

36:                                               ; preds = %30
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 8
  %39 = call i64 @AV_RL32(i32* %38)
  %40 = load i64, i64* @ID_ACBM, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %83, label %42

42:                                               ; preds = %36
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 8
  %45 = call i64 @AV_RL32(i32* %44)
  %46 = load i64, i64* @ID_DEEP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %83, label %48

48:                                               ; preds = %42
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 8
  %51 = call i64 @AV_RL32(i32* %50)
  %52 = load i64, i64* @ID_ILBM, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %83, label %54

54:                                               ; preds = %48
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 8
  %57 = call i64 @AV_RL32(i32* %56)
  %58 = load i64, i64* @ID_RGB8, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %83, label %60

60:                                               ; preds = %54
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 8
  %63 = call i64 @AV_RL32(i32* %62)
  %64 = load i64, i64* @ID_ANIM, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %83, label %66

66:                                               ; preds = %60
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 8
  %69 = call i64 @AV_RL32(i32* %68)
  %70 = load i64, i64* @ID_RGBN, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %83, label %72

72:                                               ; preds = %66, %1
  %73 = load i32*, i32** %4, align 8
  %74 = call i64 @AV_RL32(i32* %73)
  %75 = load i64, i64* @ID_FRM8, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load i32*, i32** %4, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 12
  %80 = call i64 @AV_RL32(i32* %79)
  %81 = load i64, i64* @ID_DSD, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %77, %66, %60, %54, %48, %42, %36, %30, %24, %18, %12
  %84 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  store i32 %84, i32* %2, align 4
  br label %86

85:                                               ; preds = %77, %72
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %83
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @AV_RL32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
