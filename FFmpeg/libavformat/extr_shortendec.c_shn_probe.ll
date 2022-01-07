; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_shortendec.c_shn_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_shortendec.c_shn_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @shn_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shn_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @AV_RB32(i32* %12)
  %14 = icmp ne i32 %13, 1634364263
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

16:                                               ; preds = %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 4
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 5
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 5
  %30 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %31 = sub nsw i32 %29, %30
  %32 = call i64 @init_get_bits8(i32* %4, i32* %25, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %98

35:                                               ; preds = %16
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = call i8* @get_ur_golomb_shorten(i32* %4, i32 4)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %6, align 4
  %41 = call i8* @get_ur_golomb_shorten(i32* %4, i32 0)
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %7, align 4
  store i32 256, i32* %8, align 4
  br label %71

43:                                               ; preds = %35
  %44 = call i8* @get_ur_golomb_shorten(i32* %4, i32 2)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ugt i32 %46, 31
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %98

49:                                               ; preds = %43
  %50 = load i32, i32* %9, align 4
  %51 = call i8* @get_ur_golomb_shorten(i32* %4, i32 %50)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %6, align 4
  %53 = call i8* @get_ur_golomb_shorten(i32* %4, i32 2)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ugt i32 %55, 31
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %98

58:                                               ; preds = %49
  %59 = load i32, i32* %9, align 4
  %60 = call i8* @get_ur_golomb_shorten(i32* %4, i32 %59)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %7, align 4
  %62 = call i8* @get_ur_golomb_shorten(i32* %4, i32 2)
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ugt i32 %64, 31
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %98

67:                                               ; preds = %58
  %68 = load i32, i32* %9, align 4
  %69 = call i8* @get_ur_golomb_shorten(i32* %4, i32 %68)
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %67, %38
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 2
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 3
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 5
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %98

81:                                               ; preds = %77, %74, %71
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  %86 = icmp sgt i32 %85, 8
  br i1 %86, label %87, label %88

87:                                               ; preds = %84, %81
  store i32 0, i32* %2, align 4
  br label %98

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %8, align 4
  %93 = icmp sgt i32 %92, 65535
  br i1 %93, label %94, label %95

94:                                               ; preds = %91, %88
  store i32 0, i32* %2, align 4
  br label %98

95:                                               ; preds = %91
  %96 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %95, %94, %87, %80, %66, %57, %48, %34, %15
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i64 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i8* @get_ur_golomb_shorten(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
