; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_selection_pointer_changed.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_selection_pointer_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, float, float, float }
%struct.TYPE_7__ = type { float, float, float, float }
%struct.TYPE_9__ = type { float, float*, i64, i32*, i32, i32 }

@MENU_ENTRIES_CTL_LIST_GET = common dso_local global i32 0, align 4
@MENU_ENTRIES_CTL_SET_START = common dso_local global i32 0, align 4
@STRIPES_DELAY = common dso_local global i32 0, align 4
@EASING_OUT_QUAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32)* @stripes_selection_pointer_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_selection_pointer_changed(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca %struct.TYPE_7__*, align 8
  %22 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %23 = call i32* @menu_entries_get_selection_buf_ptr(i32 0)
  store i32* %23, i32** %13, align 8
  %24 = call i64 (...) @menu_navigation_get_selection()
  store i64 %24, i64* %14, align 8
  %25 = call i8* @stripes_thumbnails_ident(i8 signext 82)
  store i8* %25, i8** %15, align 8
  %26 = call i8* @stripes_thumbnails_ident(i8 signext 76)
  store i8* %26, i8** %16, align 8
  %27 = load i32, i32* @MENU_ENTRIES_CTL_LIST_GET, align 4
  %28 = bitcast i32** %12 to i64*
  %29 = call i32 @menu_entries_ctl(i32 %27, i64* %28)
  %30 = call i32 @menu_entry_init(i32* %9)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = icmp ne %struct.TYPE_8__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  br label %138

34:                                               ; preds = %2
  %35 = load i64, i64* %14, align 8
  %36 = call i32 @menu_entry_get(i32* %9, i32 0, i64 %35, i32* null, i32 1)
  %37 = call i64 (...) @menu_entries_get_size()
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 10
  store i32 %42, i32* %11, align 4
  %43 = call i32 @video_driver_get_size(i32* null, i32* %7)
  %44 = load i32*, i32** %13, align 8
  %45 = ptrtoint i32* %44 to i64
  store i64 %45, i64* %8, align 8
  %46 = call i32 @menu_animation_kill_by_tag(i64* %8)
  %47 = load i32, i32* @MENU_ENTRIES_CTL_SET_START, align 4
  %48 = call i32 @menu_entries_ctl(i32 %47, i64* %10)
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %135, %34
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %138

53:                                               ; preds = %49
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load float, float* %55, align 4
  store float %56, float* %19, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load float, float* %58, align 4
  store float %59, float* %20, align 4
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @file_list_get_userdata_at_offset(i32* %60, i32 %61)
  %63 = inttoptr i64 %62 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %21, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %65 = icmp ne %struct.TYPE_7__* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %53
  br label %135

67:                                               ; preds = %53
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i64, i64* %14, align 8
  %71 = call float @stripes_item_y(%struct.TYPE_8__* %68, i32 %69, i64 %70)
  store float %71, float* %17, align 4
  %72 = load float, float* %17, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load float, float* %74, align 4
  %76 = fadd float %72, %75
  store float %76, float* %18, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %67
  %80 = load float, float* %18, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 0, %81
  %83 = sitofp i32 %82 to float
  %84 = fcmp olt float %80, %83
  br i1 %84, label %92, label %85

85:                                               ; preds = %79
  %86 = load float, float* %18, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add i32 %87, %88
  %90 = uitofp i32 %89 to float
  %91 = fcmp ogt float %86, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %85, %79, %67
  %93 = load float, float* %19, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  store float %93, float* %95, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store float %93, float* %97, align 4
  %98 = load float, float* %17, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  store float %98, float* %100, align 4
  %101 = load float, float* %20, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  store float %101, float* %103, align 4
  br label %134

104:                                              ; preds = %85
  %105 = load i32, i32* @STRIPES_DELAY, align 4
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 5
  store i32 %105, i32* %106, align 4
  %107 = load float, float* %19, align 4
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store float %107, float* %108, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  store float* %110, float** %111, align 8
  %112 = load i32, i32* @EASING_OUT_QUAD, align 4
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 4
  store i32 %112, i32* %113, align 8
  %114 = load i64, i64* %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  store i64 %114, i64* %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  store i32* null, i32** %116, align 8
  %117 = call i32 @menu_animation_push(%struct.TYPE_9__* %22)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  store float* %119, float** %120, align 8
  %121 = call i32 @menu_animation_push(%struct.TYPE_9__* %22)
  %122 = load float, float* %20, align 4
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store float %122, float* %123, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  store float* %125, float** %126, align 8
  %127 = call i32 @menu_animation_push(%struct.TYPE_9__* %22)
  %128 = load float, float* %17, align 4
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store float %128, float* %129, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  store float* %131, float** %132, align 8
  %133 = call i32 @menu_animation_push(%struct.TYPE_9__* %22)
  br label %134

134:                                              ; preds = %104, %92
  br label %135

135:                                              ; preds = %134, %66
  %136 = load i32, i32* %5, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %5, align 4
  br label %49

138:                                              ; preds = %33, %49
  ret void
}

declare dso_local i32* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i8* @stripes_thumbnails_ident(i8 signext) #1

declare dso_local i32 @menu_entries_ctl(i32, i64*) #1

declare dso_local i32 @menu_entry_init(i32*) #1

declare dso_local i32 @menu_entry_get(i32*, i32, i64, i32*, i32) #1

declare dso_local i64 @menu_entries_get_size(...) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i32 @menu_animation_kill_by_tag(i64*) #1

declare dso_local i64 @file_list_get_userdata_at_offset(i32*, i32) #1

declare dso_local float @stripes_item_y(%struct.TYPE_8__*, i32, i64) #1

declare dso_local i32 @menu_animation_push(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
