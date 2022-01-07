; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dolby_e.c_convert_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dolby_e.c_convert_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32, i32, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Packet too short\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @convert_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_input(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ule i32 %18, 1024
  %20 = zext i1 %19 to i32
  %21 = call i32 @av_assert0(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AV_LOG_ERROR, align 4
  %32 = call i32 @av_log(i32 %30, i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %33, i32* %4, align 4
  br label %115

34:                                               ; preds = %3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %101 [
    i32 16, label %38
    i32 20, label %58
    i32 24, label %81
  ]

38:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %50, %38
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @AV_RB16(i32* %45)
  %47 = load i32, i32* %7, align 4
  %48 = xor i32 %46, %47
  %49 = call i32 @AV_WB16(i32* %44, i32 %48)
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32* %54, i32** %8, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32* %56, i32** %9, align 8
  br label %39

57:                                               ; preds = %39
  br label %103

58:                                               ; preds = %34
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @init_put_bits(i32* %10, i32* %61, i32 8)
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %74, %58
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @AV_RB24(i32* %68)
  %70 = ashr i32 %69, 4
  %71 = load i32, i32* %7, align 4
  %72 = xor i32 %70, %71
  %73 = call i32 @put_bits(i32* %10, i32 20, i32 %72)
  br label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  store i32* %78, i32** %8, align 8
  br label %63

79:                                               ; preds = %63
  %80 = call i32 @flush_put_bits(i32* %10)
  br label %103

81:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %93, %81
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = load i32*, i32** %9, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @AV_RB24(i32* %88)
  %90 = load i32, i32* %7, align 4
  %91 = xor i32 %89, %90
  %92 = call i32 @AV_WB24(i32* %87, i32 %91)
  br label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  store i32* %97, i32** %8, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  store i32* %99, i32** %9, align 8
  br label %82

100:                                              ; preds = %82
  br label %103

101:                                              ; preds = %34
  %102 = call i32 @av_assert0(i32 0)
  br label %103

103:                                              ; preds = %101, %100, %79, %57
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %109, %112
  %114 = call i32 @init_get_bits(i32* %105, i32* %108, i32 %113)
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %103, %27
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @AV_WB16(i32*, i32) #1

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @init_put_bits(i32*, i32*, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @AV_RB24(i32*) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32 @AV_WB24(i32*, i32) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
