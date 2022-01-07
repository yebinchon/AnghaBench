; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_list_switch_horizontal_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_list_switch_horizontal_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, float, float, i32, float, float }
%struct.TYPE_16__ = type { float, i32, i32, i32*, i32, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@MENU_LIST_HORIZONTAL = common dso_local global i32 0, align 4
@XMB_DELAY = common dso_local global i32 0, align 4
@EASING_OUT_QUAD = common dso_local global i32 0, align 4
@EASING_IN_SINE = common dso_local global i32 0, align 4
@EASING_OUT_BOUNCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @xmb_list_switch_horizontal_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_list_switch_horizontal_list(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_16__, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = load i32, i32* @MENU_LIST_HORIZONTAL, align 4
  %12 = call i64 @xmb_list_get_size(%struct.TYPE_14__* %10, i32 %11)
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %12, %15
  store i64 %16, i64* %4, align 8
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %88, %1
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* %4, align 8
  %21 = icmp ule i64 %19, %20
  br i1 %21, label %22, label %91

22:                                               ; preds = %17
  %23 = call %struct.TYPE_15__* (...) @config_get_ptr()
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %6, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load float, float* %25, align 8
  store float %26, float* %7, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = load float, float* %28, align 4
  store float %29, float* %8, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call %struct.TYPE_13__* @xmb_get_node(%struct.TYPE_14__* %30, i32 %31)
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %9, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %34 = icmp ne %struct.TYPE_13__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %22
  br label %88

36:                                               ; preds = %22
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 4
  %45 = load float, float* %44, align 4
  store float %45, float* %7, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 5
  %48 = load float, float* %47, align 8
  store float %48, float* %8, align 4
  br label %49

49:                                               ; preds = %42, %36
  %50 = load float, float* %7, align 4
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store float %50, float* %51, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 3
  store i32* %53, i32** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  store i32 -1, i32* %55, align 4
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 5
  store i32* null, i32** %56, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %80 [
    i32 0, label %61
    i32 1, label %66
    i32 2, label %74
  ]

61:                                               ; preds = %49
  %62 = load i32, i32* @XMB_DELAY, align 4
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  %64 = load i32, i32* @EASING_OUT_QUAD, align 4
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 4
  store i32 %64, i32* %65, align 8
  br label %80

66:                                               ; preds = %49
  %67 = load i32, i32* @XMB_DELAY, align 4
  %68 = load i32, i32* @XMB_DELAY, align 4
  %69 = sdiv i32 %68, 2
  %70 = add nsw i32 %67, %69
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  store i32 %70, i32* %71, align 8
  %72 = load i32, i32* @EASING_IN_SINE, align 4
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 4
  store i32 %72, i32* %73, align 8
  br label %80

74:                                               ; preds = %49
  %75 = load i32, i32* @XMB_DELAY, align 4
  %76 = mul nsw i32 %75, 2
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  store i32 %76, i32* %77, align 8
  %78 = load i32, i32* @EASING_OUT_BOUNCE, align 4
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 4
  store i32 %78, i32* %79, align 8
  br label %80

80:                                               ; preds = %49, %74, %66, %61
  %81 = call i32 @menu_animation_push(%struct.TYPE_16__* %5)
  %82 = load float, float* %8, align 4
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store float %82, float* %83, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 3
  store i32* %85, i32** %86, align 8
  %87 = call i32 @menu_animation_push(%struct.TYPE_16__* %5)
  br label %88

88:                                               ; preds = %80, %35
  %89 = load i32, i32* %3, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %17

91:                                               ; preds = %17
  ret void
}

declare dso_local i64 @xmb_list_get_size(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_15__* @config_get_ptr(...) #1

declare dso_local %struct.TYPE_13__* @xmb_get_node(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @menu_animation_push(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
