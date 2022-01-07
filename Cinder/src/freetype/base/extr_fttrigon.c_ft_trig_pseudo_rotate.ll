; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/base/extr_fttrigon.c_ft_trig_pseudo_rotate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/base/extr_fttrigon.c_ft_trig_pseudo_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@FT_ANGLE_PI4 = common dso_local global i32 0, align 4
@FT_ANGLE_PI2 = common dso_local global i64 0, align 8
@ft_trig_arctan_table = common dso_local global i32* null, align 8
@FT_TRIG_MAX_ITERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @ft_trig_pseudo_rotate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ft_trig_pseudo_rotate(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %22, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @FT_ANGLE_PI4, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i64, i64* @FT_ANGLE_PI2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %4, align 4
  br label %17

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %37, %32
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @FT_ANGLE_PI4, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i64, i64* @FT_ANGLE_PI2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %33

47:                                               ; preds = %33
  %48 = load i32*, i32** @ft_trig_arctan_table, align 8
  store i32* %48, i32** %10, align 8
  store i32 1, i32* %5, align 4
  store i32 1, i32* %9, align 4
  br label %49

49:                                               ; preds = %99, %47
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @FT_TRIG_MAX_ITERS, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %104

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %5, align 4
  %62 = ashr i32 %60, %61
  %63 = add nsw i32 %57, %62
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* %5, align 4
  %69 = ashr i32 %67, %68
  %70 = sub nsw i32 %64, %69
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %6, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %10, align 8
  %74 = load i32, i32* %72, align 4
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %4, align 4
  br label %98

77:                                               ; preds = %53
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %5, align 4
  %83 = ashr i32 %81, %82
  %84 = sub nsw i32 %78, %83
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* %5, align 4
  %90 = ashr i32 %88, %89
  %91 = add nsw i32 %85, %90
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %6, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %10, align 8
  %95 = load i32, i32* %93, align 4
  %96 = load i32, i32* %4, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %77, %56
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %9, align 4
  %101 = shl i32 %100, 1
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %49

104:                                              ; preds = %49
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
