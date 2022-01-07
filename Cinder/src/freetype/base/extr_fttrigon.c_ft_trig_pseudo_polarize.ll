; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/base/extr_fttrigon.c_ft_trig_pseudo_polarize.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/base/extr_fttrigon.c_ft_trig_pseudo_polarize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@FT_ANGLE_PI2 = common dso_local global i32 0, align 4
@FT_ANGLE_PI = common dso_local global i32 0, align 4
@ft_trig_arctan_table = common dso_local global i32* null, align 8
@FT_TRIG_MAX_ITERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @ft_trig_pseudo_polarize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ft_trig_pseudo_polarize(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* @FT_ANGLE_PI2, align 4
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %5, align 4
  br label %44

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @FT_ANGLE_PI, align 4
  br label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @FT_ANGLE_PI, align 4
  %37 = sub nsw i32 0, %36
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i32 [ %34, %33 ], [ %37, %35 ]
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %38, %24
  br label %59

45:                                               ; preds = %1
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, i32* @FT_ANGLE_PI2, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %5, align 4
  br label %58

57:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %50
  br label %59

59:                                               ; preds = %58, %44
  %60 = load i32*, i32** @ft_trig_arctan_table, align 8
  store i32* %60, i32** %9, align 8
  store i32 1, i32* %4, align 4
  store i32 1, i32* %8, align 4
  br label %61

61:                                               ; preds = %111, %59
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @FT_TRIG_MAX_ITERS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %116

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* %4, align 4
  %74 = ashr i32 %72, %73
  %75 = add nsw i32 %69, %74
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %4, align 4
  %81 = ashr i32 %79, %80
  %82 = sub nsw i32 %76, %81
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %5, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %9, align 8
  %86 = load i32, i32* %84, align 4
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %3, align 4
  br label %110

89:                                               ; preds = %65
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %4, align 4
  %95 = ashr i32 %93, %94
  %96 = sub nsw i32 %90, %95
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* %4, align 4
  %102 = ashr i32 %100, %101
  %103 = add nsw i32 %97, %102
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %5, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %9, align 8
  %107 = load i32, i32* %105, align 4
  %108 = load i32, i32* %3, align 4
  %109 = sub nsw i32 %108, %107
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %89, %68
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %8, align 4
  %113 = shl i32 %112, 1
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %4, align 4
  br label %61

116:                                              ; preds = %61
  %117 = load i32, i32* %3, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @FT_PAD_ROUND(i32 %120, i32 16)
  store i32 %121, i32* %3, align 4
  br label %127

122:                                              ; preds = %116
  %123 = load i32, i32* %3, align 4
  %124 = sub nsw i32 0, %123
  %125 = call i32 @FT_PAD_ROUND(i32 %124, i32 16)
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %122, %119
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %3, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  ret void
}

declare dso_local i32 @FT_PAD_ROUND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
