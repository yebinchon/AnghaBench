; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_pixdesc.c_av_find_best_pix_fmt_of_2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_pixdesc.c_av_find_best_pix_fmt_of_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@FF_LOSS_ALPHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_find_best_pix_fmt_of_2(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.TYPE_4__* @av_pix_fmt_desc_get(i32 %19)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %15, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.TYPE_4__* @av_pix_fmt_desc_get(i32 %21)
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %16, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %11, align 4
  br label %106

27:                                               ; preds = %5
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %11, align 4
  br label %105

32:                                               ; preds = %27
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %37, -1
  br label %40

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i32 [ %38, %35 ], [ -1, %39 ]
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @FF_LOSS_ALPHA, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %14, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @get_pix_fmt_score(i32 %50, i32 %51, i32* %12, i32 %52)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @get_pix_fmt_score(i32 %54, i32 %55, i32* %13, i32 %56)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %94

61:                                               ; preds = %49
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %63 = call i64 @av_get_padded_bits_per_pixel(%struct.TYPE_4__* %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %65 = call i64 @av_get_padded_bits_per_pixel(%struct.TYPE_4__* %64)
  %66 = icmp ne i64 %63, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %69 = call i64 @av_get_padded_bits_per_pixel(%struct.TYPE_4__* %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %71 = call i64 @av_get_padded_bits_per_pixel(%struct.TYPE_4__* %70)
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %7, align 4
  br label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %11, align 4
  br label %93

79:                                               ; preds = %61
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %82, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i32, i32* %7, align 4
  br label %91

89:                                               ; preds = %79
  %90 = load i32, i32* %6, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %91, %77
  br label %104

94:                                               ; preds = %49
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %18, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* %7, align 4
  br label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %6, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %102, %93
  br label %105

105:                                              ; preds = %104, %30
  br label %106

106:                                              ; preds = %105, %25
  %107 = load i32*, i32** %10, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @av_get_pix_fmt_loss(i32 %110, i32 %111, i32 %112)
  %114 = load i32*, i32** %10, align 8
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %109, %106
  %116 = load i32, i32* %11, align 4
  ret i32 %116
}

declare dso_local %struct.TYPE_4__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @get_pix_fmt_score(i32, i32, i32*, i32) #1

declare dso_local i64 @av_get_padded_bits_per_pixel(%struct.TYPE_4__*) #1

declare dso_local i32 @av_get_pix_fmt_loss(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
