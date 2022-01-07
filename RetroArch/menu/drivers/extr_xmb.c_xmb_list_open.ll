; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_list_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_list_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32*, i32, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@MENU_LIST_PLAIN = common dso_local global i32 0, align 4
@EASING_OUT_QUAD = common dso_local global i32 0, align 4
@XMB_DELAY = common dso_local global i32 0, align 4
@EASING_OUT_CIRC = common dso_local global i32 0, align 4
@EASING_OUT_EXPO = common dso_local global i32 0, align 4
@EASING_OUT_BOUNCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @xmb_list_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_list_open(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_15__, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %8 = call %struct.TYPE_14__* (...) @config_get_ptr()
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = call i32* @menu_entries_get_selection_buf_ptr(i32 0)
  store i32* %9, i32** %6, align 8
  %10 = call i64 (...) @menu_navigation_get_selection()
  store i64 %10, i64* %7, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = load i32, i32* @MENU_LIST_PLAIN, align 4
  %13 = call i64 @xmb_list_get_size(%struct.TYPE_13__* %11, i32 %12)
  %14 = trunc i64 %13 to i32
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %36

25:                                               ; preds = %1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %35

34:                                               ; preds = %25
  br label %117

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35, %24
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %38 = call i32 @xmb_list_open_horizontal_list(%struct.TYPE_13__* %37)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @xmb_list_open_old(%struct.TYPE_13__* %39, i32 %42, i32 %43, i32 %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @xmb_list_open_new(%struct.TYPE_13__* %48, i32* %49, i32 %50, i64 %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 2
  %60 = sub nsw i32 %59, 2
  %61 = sub nsw i32 0, %60
  %62 = mul nsw i32 %55, %61
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 3
  store i32* %65, i32** %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 1
  store i32 -1, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 5
  store i32* null, i32** %68, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %96 [
    i32 0, label %73
    i32 1, label %78
    i32 2, label %84
    i32 3, label %90
  ]

73:                                               ; preds = %36
  %74 = load i32, i32* @EASING_OUT_QUAD, align 4
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 4
  store i32 %74, i32* %75, align 8
  %76 = load i32, i32* @XMB_DELAY, align 4
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  store i32 %76, i32* %77, align 8
  br label %96

78:                                               ; preds = %36
  %79 = load i32, i32* @EASING_OUT_CIRC, align 4
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 4
  store i32 %79, i32* %80, align 8
  %81 = load i32, i32* @XMB_DELAY, align 4
  %82 = mul nsw i32 %81, 2
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  store i32 %82, i32* %83, align 8
  br label %96

84:                                               ; preds = %36
  %85 = load i32, i32* @EASING_OUT_EXPO, align 4
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 4
  store i32 %85, i32* %86, align 8
  %87 = load i32, i32* @XMB_DELAY, align 4
  %88 = mul nsw i32 %87, 3
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  store i32 %88, i32* %89, align 8
  br label %96

90:                                               ; preds = %36
  %91 = load i32, i32* @EASING_OUT_BOUNCE, align 4
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 4
  store i32 %91, i32* %92, align 8
  %93 = load i32, i32* @XMB_DELAY, align 4
  %94 = mul nsw i32 %93, 4
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  store i32 %94, i32* %95, align 8
  br label %96

96:                                               ; preds = %36, %90, %84, %78, %73
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  switch i32 %99, label %111 [
    i32 1, label %100
    i32 2, label %100
  ]

100:                                              ; preds = %96, %96
  %101 = call i32 @menu_animation_push(%struct.TYPE_15__* %3)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, 1
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  store i32 %105, i32* %106, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 3
  store i32* %108, i32** %109, align 8
  %110 = call i32 @menu_animation_push(%struct.TYPE_15__* %3)
  br label %111

111:                                              ; preds = %96, %100
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %111, %34
  ret void
}

declare dso_local %struct.TYPE_14__* @config_get_ptr(...) #1

declare dso_local i32* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i64 @xmb_list_get_size(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @xmb_list_open_horizontal_list(%struct.TYPE_13__*) #1

declare dso_local i32 @xmb_list_open_old(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @xmb_list_open_new(%struct.TYPE_13__*, i32*, i32, i64) #1

declare dso_local i32 @menu_animation_push(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
