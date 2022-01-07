; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_realloc_buffer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_realloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.exynos_data = type { %struct.TYPE_3__**, %struct.exynos_bo**, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.exynos_bo = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"[video_exynos]: reallocation failed\0A\00", align 1
@EXYNOS_IMAGE_COUNT = common dso_local global i32 0, align 4
@defaults = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_data*, i32, i32)* @exynos_realloc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_realloc_buffer(%struct.exynos_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.exynos_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.exynos_bo*, align 8
  %9 = alloca i32, align 4
  store %struct.exynos_data* %0, %struct.exynos_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %11 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %10, i32 0, i32 1
  %12 = load %struct.exynos_bo**, %struct.exynos_bo*** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.exynos_bo*, %struct.exynos_bo** %12, i64 %14
  %16 = load %struct.exynos_bo*, %struct.exynos_bo** %15, align 8
  store %struct.exynos_bo* %16, %struct.exynos_bo** %8, align 8
  %17 = load %struct.exynos_bo*, %struct.exynos_bo** %8, align 8
  %18 = icmp ne %struct.exynos_bo* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %79

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.exynos_bo*, %struct.exynos_bo** %8, align 8
  %23 = getelementptr inbounds %struct.exynos_bo, %struct.exynos_bo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ugt i32 %21, %24
  br i1 %25, label %26, label %78

26:                                               ; preds = %20
  %27 = load %struct.exynos_bo*, %struct.exynos_bo** %8, align 8
  %28 = call i32 @exynos_bo_destroy(%struct.exynos_bo* %27)
  %29 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %30 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.exynos_bo* @exynos_create_mapped_buffer(i32 %31, i32 %32)
  store %struct.exynos_bo* %33, %struct.exynos_bo** %8, align 8
  %34 = load %struct.exynos_bo*, %struct.exynos_bo** %8, align 8
  %35 = icmp ne %struct.exynos_bo* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %79

38:                                               ; preds = %26
  %39 = load %struct.exynos_bo*, %struct.exynos_bo** %8, align 8
  %40 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %41 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %40, i32 0, i32 1
  %42 = load %struct.exynos_bo**, %struct.exynos_bo*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.exynos_bo*, %struct.exynos_bo** %42, i64 %44
  store %struct.exynos_bo* %39, %struct.exynos_bo** %45, align 8
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %74, %38
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @EXYNOS_IMAGE_COUNT, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %46
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @defaults, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %50
  %60 = load %struct.exynos_bo*, %struct.exynos_bo** %8, align 8
  %61 = getelementptr inbounds %struct.exynos_bo, %struct.exynos_bo* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.exynos_data*, %struct.exynos_data** %5, align 8
  %64 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %65, i64 %67
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %62, i32* %72, align 4
  br label %73

73:                                               ; preds = %59, %50
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %46

77:                                               ; preds = %46
  br label %78

78:                                               ; preds = %77, %20
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %36, %19
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @exynos_bo_destroy(%struct.exynos_bo*) #1

declare dso_local %struct.exynos_bo* @exynos_create_mapped_buffer(i32, i32) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
