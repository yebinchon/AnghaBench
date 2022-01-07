; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_list_open_horizontal_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_list_open_horizontal_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, float, i32, float }
%struct.TYPE_11__ = type { float, i32, i32*, i32*, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@MENU_LIST_HORIZONTAL = common dso_local global i32 0, align 4
@STRIPES_DELAY = common dso_local global i32 0, align 4
@EASING_OUT_QUAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @stripes_list_open_horizontal_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_list_open_horizontal_list(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = load i32, i32* @MENU_LIST_HORIZONTAL, align 4
  %10 = call i64 @stripes_list_get_size(%struct.TYPE_10__* %8, i32 %9)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %10, %13
  store i64 %14, i64* %4, align 8
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %65, %1
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = load i64, i64* %4, align 8
  %19 = icmp ule i64 %17, %18
  br i1 %19, label %20, label %68

20:                                               ; preds = %15
  store float 0.000000e+00, float* %6, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call %struct.TYPE_9__* @stripes_get_node(%struct.TYPE_10__* %21, i32 %22)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %7, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %65

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load float, float* %35, align 4
  store float %36, float* %6, align 4
  br label %47

37:                                               ; preds = %27
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = icmp sle i32 %40, 1
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  %45 = load float, float* %44, align 4
  store float %45, float* %6, align 4
  br label %46

46:                                               ; preds = %42, %37
  br label %47

47:                                               ; preds = %46, %33
  %48 = load i32, i32* @STRIPES_DELAY, align 4
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 5
  store i32 %48, i32* %49, align 4
  %50 = load float, float* %6, align 4
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store float %50, float* %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  store i32* %53, i32** %54, align 8
  %55 = load i32, i32* @EASING_OUT_QUAD, align 4
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 4
  store i32 %55, i32* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  store i32 -1, i32* %57, align 4
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 3
  store i32* null, i32** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %47
  %63 = call i32 @menu_animation_push(%struct.TYPE_11__* %5)
  br label %64

64:                                               ; preds = %62, %47
  br label %65

65:                                               ; preds = %64, %26
  %66 = load i32, i32* %3, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %15

68:                                               ; preds = %15
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
