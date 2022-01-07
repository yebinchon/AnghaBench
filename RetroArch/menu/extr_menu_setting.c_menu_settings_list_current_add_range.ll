; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_menu_settings_list_current_add_range.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_menu_settings_list_current_add_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, float, float, float, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ST_FLOAT = common dso_local global i64 0, align 8
@ST_UI_TYPE_FLOAT_SLIDER_AND_SPINBOX = common dso_local global i32 0, align 4
@SD_FLAG_HAS_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__**, %struct.TYPE_6__*, float, float, float, i32, i32)* @menu_settings_list_current_add_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_settings_list_current_add_range(%struct.TYPE_5__** %0, %struct.TYPE_6__* %1, float %2, float %3, float %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_5__**, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %8, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %9, align 8
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %15, align 4
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load i32, i32* %15, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ST_FLOAT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %7
  %30 = load i32, i32* @ST_UI_TYPE_FLOAT_SLIDER_AND_SPINBOX, align 4
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 7
  store i32 %30, i32* %39, align 8
  br label %40

40:                                               ; preds = %29, %7
  %41 = load float, float* %10, align 4
  %42 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* %15, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store float %41, float* %47, align 8
  %48 = load float, float* %12, align 4
  %49 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i32, i32* %15, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  store float %48, float* %54, align 4
  %55 = load float, float* %11, align 4
  %56 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %15, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  store float %55, float* %61, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* %15, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 4
  store i32 %62, i32* %68, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 5
  store i32 %69, i32* %75, align 8
  %76 = load i32, i32* @SD_FLAG_HAS_RANGE, align 4
  %77 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %76
  store i32 %87, i32* %85, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
