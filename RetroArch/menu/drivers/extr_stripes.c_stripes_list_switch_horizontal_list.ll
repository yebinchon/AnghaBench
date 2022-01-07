; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_list_switch_horizontal_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_list_switch_horizontal_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, float, float, float, float, float, i32, float, float, float, float, float, float, float }
%struct.TYPE_11__ = type { float, i32, i32*, i32*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@MENU_LIST_HORIZONTAL = common dso_local global i32 0, align 4
@STRIPES_DELAY = common dso_local global i32 0, align 4
@EASING_OUT_QUAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @stripes_list_switch_horizontal_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_list_switch_horizontal_list(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = load i32, i32* @MENU_LIST_HORIZONTAL, align 4
  %14 = call i64 @stripes_list_get_size(%struct.TYPE_10__* %12, i32 %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %14, %17
  store i64 %18, i64* %4, align 8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %133, %1
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %4, align 8
  %23 = icmp ule i64 %21, %22
  br i1 %23, label %24, label %136

24:                                               ; preds = %19
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load float, float* %26, align 8
  store float %27, float* %6, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load float, float* %29, align 4
  store float %30, float* %7, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 3
  %33 = load float, float* %32, align 8
  store float %33, float* %8, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 4
  %36 = load float, float* %35, align 4
  store float %36, float* %9, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 5
  %39 = load float, float* %38, align 8
  store float %39, float* %10, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call %struct.TYPE_9__* @stripes_get_node(%struct.TYPE_10__* %40, i32 %41)
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %11, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %24
  br label %133

46:                                               ; preds = %24
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %46
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 7
  %55 = load float, float* %54, align 8
  store float %55, float* %6, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 8
  %58 = load float, float* %57, align 4
  store float %58, float* %7, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 9
  %61 = load float, float* %60, align 8
  store float %61, float* %8, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 10
  %64 = load float, float* %63, align 4
  store float %64, float* %9, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 11
  %67 = load float, float* %66, align 8
  store float %67, float* %10, align 4
  br label %96

68:                                               ; preds = %46
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 4
  %77 = load float, float* %76, align 4
  store float %77, float* %9, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 5
  %80 = load float, float* %79, align 8
  store float %80, float* %10, align 4
  br label %95

81:                                               ; preds = %68
  %82 = load i32, i32* %3, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = icmp ugt i32 %82, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 12
  %90 = load float, float* %89, align 4
  store float %90, float* %9, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 13
  %93 = load float, float* %92, align 8
  store float %93, float* %10, align 4
  br label %94

94:                                               ; preds = %87, %81
  br label %95

95:                                               ; preds = %94, %74
  br label %96

96:                                               ; preds = %95, %52
  %97 = load i32, i32* @STRIPES_DELAY, align 4
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 5
  store i32 %97, i32* %98, align 4
  %99 = load float, float* %6, align 4
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store float %99, float* %100, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  store i32* %102, i32** %103, align 8
  %104 = load i32, i32* @EASING_OUT_QUAD, align 4
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 4
  store i32 %104, i32* %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  store i32 -1, i32* %106, align 4
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 3
  store i32* null, i32** %107, align 8
  %108 = call i32 @menu_animation_push(%struct.TYPE_11__* %5)
  %109 = load float, float* %7, align 4
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store float %109, float* %110, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  store i32* %112, i32** %113, align 8
  %114 = call i32 @menu_animation_push(%struct.TYPE_11__* %5)
  %115 = load float, float* %10, align 4
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store float %115, float* %116, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  store i32* %118, i32** %119, align 8
  %120 = call i32 @menu_animation_push(%struct.TYPE_11__* %5)
  %121 = load float, float* %9, align 4
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store float %121, float* %122, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  store i32* %124, i32** %125, align 8
  %126 = call i32 @menu_animation_push(%struct.TYPE_11__* %5)
  %127 = load float, float* %8, align 4
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store float %127, float* %128, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  store i32* %130, i32** %131, align 8
  %132 = call i32 @menu_animation_push(%struct.TYPE_11__* %5)
  br label %133

133:                                              ; preds = %96, %45
  %134 = load i32, i32* %3, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %3, align 4
  br label %19

136:                                              ; preds = %19
  ret void
}

declare dso_local i64 @stripes_list_get_size(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_9__* @stripes_get_node(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @menu_animation_push(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
