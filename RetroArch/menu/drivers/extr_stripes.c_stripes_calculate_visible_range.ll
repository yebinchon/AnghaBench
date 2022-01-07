; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_calculate_visible_range.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_calculate_visible_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i64, i32, i32*, i32*)* @stripes_calculate_visible_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_calculate_visible_range(%struct.TYPE_4__* %0, i32 %1, i64 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load float, float* %18, align 4
  store float %19, float* %14, align 4
  %20 = load i32*, i32** %11, align 8
  store i32 0, i32* %20, align 4
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i64, i64* %9, align 8
  %25 = sub i64 %24, 1
  br label %27

26:                                               ; preds = %6
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i64 [ %25, %23 ], [ 0, %26 ]
  %29 = trunc i64 %28 to i32
  %30 = load i32*, i32** %12, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %53, %33
  %36 = load i32, i32* %13, align 4
  %37 = add i32 %36, -1
  store i32 %37, i32* %13, align 4
  %38 = icmp ugt i32 %36, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call float @stripes_item_y(%struct.TYPE_4__* %40, i32 %41, i32 %42)
  %44 = load float, float* %14, align 4
  %45 = fadd float %43, %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load float, float* %47, align 4
  %49 = fadd float %45, %48
  store float %49, float* %15, align 4
  %50 = load float, float* %15, align 4
  %51 = fcmp olt float %50, 0.000000e+00
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %56

53:                                               ; preds = %39
  %54 = load i32, i32* %13, align 4
  %55 = load i32*, i32** %11, align 8
  store i32 %54, i32* %55, align 4
  br label %35

56:                                               ; preds = %52, %35
  br label %57

57:                                               ; preds = %56, %27
  %58 = load i32, i32* %10, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %80, %57
  %61 = load i32, i32* %13, align 4
  %62 = zext i32 %61 to i64
  %63 = load i64, i64* %9, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %60
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call float @stripes_item_y(%struct.TYPE_4__* %66, i32 %67, i32 %68)
  %70 = load float, float* %14, align 4
  %71 = fadd float %69, %70
  store float %71, float* %16, align 4
  %72 = load float, float* %16, align 4
  %73 = load i32, i32* %8, align 4
  %74 = uitofp i32 %73 to float
  %75 = fcmp ogt float %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %83

77:                                               ; preds = %65
  %78 = load i32, i32* %13, align 4
  %79 = load i32*, i32** %12, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %13, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %60

83:                                               ; preds = %76, %60
  ret void
}

declare dso_local float @stripes_item_y(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
