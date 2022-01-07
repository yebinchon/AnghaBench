; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_render.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, float }
%struct.TYPE_6__ = type { i32, float, float }

@MENU_POINTER_DISABLED = common dso_local global i64 0, align 8
@MENU_POINTER_MOUSE = common dso_local global i64 0, align 8
@MENU_ENTRIES_CTL_START_GET = common dso_local global i32 0, align 4
@MENU_ENTRIES_CTL_SET_START = common dso_local global i32 0, align 4
@MENU_ANIMATION_CTL_CLEAR_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @stripes_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_render(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = call i32* (...) @config_get_ptr()
  store i32* %20, i32** %11, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %12, align 8
  %23 = call i32 (...) @menu_entries_get_size()
  store i32 %23, i32* %13, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  br label %113

27:                                               ; preds = %4
  %28 = call i32 @menu_input_get_pointer_state(%struct.TYPE_7__* %10)
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MENU_POINTER_DISABLED, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %100

33:                                               ; preds = %27
  %34 = call i64 (...) @menu_navigation_get_selection()
  store i64 %34, i64* %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %36 = load float, float* %35, align 8
  store float %36, float* %15, align 4
  store i32 0, i32* %16, align 4
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %17, align 4
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MENU_POINTER_MOUSE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %33
  %43 = load float, float* %15, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 2
  %48 = sitofp i32 %47 to float
  %49 = fadd float %43, %48
  br label %52

50:                                               ; preds = %33
  %51 = load float, float* %15, align 4
  br label %52

52:                                               ; preds = %50, %42
  %53 = phi float [ %49, %42 ], [ %51, %50 ]
  store float %53, float* %15, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i64, i64* %14, align 8
  %61 = call i32 @stripes_calculate_visible_range(%struct.TYPE_6__* %57, i32 %58, i32 %59, i64 %60, i32* %16, i32* %17)
  br label %62

62:                                               ; preds = %56, %52
  %63 = load i32, i32* %16, align 4
  %64 = zext i32 %63 to i64
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %96, %62
  %66 = load i64, i64* %9, align 8
  %67 = load i32, i32* %17, align 4
  %68 = zext i32 %67 to i64
  %69 = icmp ule i64 %66, %68
  br i1 %69, label %70, label %99

70:                                               ; preds = %65
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load float, float* %72, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %75 = load i64, i64* %9, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i64, i64* %14, align 8
  %78 = call float @stripes_item_y(%struct.TYPE_6__* %74, i32 %76, i64 %77)
  %79 = fadd float %73, %78
  store float %79, float* %18, align 4
  %80 = load float, float* %18, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load float, float* %82, align 4
  %84 = fadd float %80, %83
  store float %84, float* %19, align 4
  %85 = load float, float* %15, align 4
  %86 = load float, float* %18, align 4
  %87 = fcmp ogt float %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %70
  %89 = load float, float* %15, align 4
  %90 = load float, float* %19, align 4
  %91 = fcmp olt float %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @menu_input_set_pointer_selection(i64 %93)
  br label %95

95:                                               ; preds = %92, %88, %70
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %9, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %9, align 8
  br label %65

99:                                               ; preds = %65
  br label %100

100:                                              ; preds = %99, %27
  %101 = load i32, i32* @MENU_ENTRIES_CTL_START_GET, align 4
  %102 = call i32 @menu_entries_ctl(i32 %101, i64* %9)
  %103 = load i64, i64* %9, align 8
  %104 = load i32, i32* %13, align 4
  %105 = zext i32 %104 to i64
  %106 = icmp uge i64 %103, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  store i64 0, i64* %9, align 8
  %108 = load i32, i32* @MENU_ENTRIES_CTL_SET_START, align 4
  %109 = call i32 @menu_entries_ctl(i32 %108, i64* %9)
  br label %110

110:                                              ; preds = %107, %100
  %111 = load i32, i32* @MENU_ANIMATION_CTL_CLEAR_ACTIVE, align 4
  %112 = call i32 @menu_animation_ctl(i32 %111, i32* null)
  br label %113

113:                                              ; preds = %110, %26
  ret void
}

declare dso_local i32* @config_get_ptr(...) #1

declare dso_local i32 @menu_entries_get_size(...) #1

declare dso_local i32 @menu_input_get_pointer_state(%struct.TYPE_7__*) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @stripes_calculate_visible_range(%struct.TYPE_6__*, i32, i32, i64, i32*, i32*) #1

declare dso_local float @stripes_item_y(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @menu_input_set_pointer_selection(i64) #1

declare dso_local i32 @menu_entries_ctl(i32, i64*) #1

declare dso_local i32 @menu_animation_ctl(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
