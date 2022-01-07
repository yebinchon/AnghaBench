; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_draw_items.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_draw_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i64, i32* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32 }

@MENU_ENTRIES_CTL_START_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_22__*, %struct.TYPE_25__*, i64, i64, float*, i32, i32)* @xmb_draw_items to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_draw_items(i32* %0, %struct.TYPE_22__* %1, %struct.TYPE_25__* %2, i64 %3, i64 %4, float* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_24__, align 8
  %22 = alloca %struct.TYPE_21__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_21__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_23__, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store float* %5, float** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %22, align 8
  store i64 0, i64* %23, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %28 = icmp ne %struct.TYPE_25__* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %36 = icmp ne %struct.TYPE_22__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34, %29, %8
  br label %140

38:                                               ; preds = %34
  %39 = load i64, i64* %13, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ugt i64 %39, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 1
  %51 = sub i64 %46, %50
  %52 = trunc i64 %51 to i32
  %53 = call %struct.TYPE_21__* @xmb_get_userdata_from_horizontal_list(%struct.TYPE_22__* %45, i32 %52)
  store %struct.TYPE_21__* %53, %struct.TYPE_21__** %22, align 8
  br label %54

54:                                               ; preds = %44, %38
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %56 = call i64 @file_list_get_size(%struct.TYPE_25__* %55)
  store i64 %56, i64* %23, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 5
  store i32* %20, i32** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 2
  store i32 1, i32* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 3
  store i32 1, i32* %62, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @menu_display_rotate_z(%struct.TYPE_24__* %21, i32* %63)
  %65 = load i32, i32* @MENU_ENTRIES_CTL_START_GET, align 4
  %66 = call i32 @menu_entries_ctl(i32 %65, i64* %17)
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %69, align 8
  %71 = icmp eq %struct.TYPE_25__* %67, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %54
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %74 = load i64, i64* %12, align 8
  %75 = call i64 @file_list_get_userdata_at_offset(%struct.TYPE_25__* %73, i64 %74)
  %76 = inttoptr i64 %75 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %76, %struct.TYPE_21__** %24, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %78 = icmp ne %struct.TYPE_21__* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 255, %82
  %84 = sext i32 %83 to i64
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %140

87:                                               ; preds = %79, %72
  store i64 0, i64* %17, align 8
  br label %88

88:                                               ; preds = %87, %54
  %89 = load i64, i64* %17, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %18, align 4
  %91 = load i64, i64* %23, align 8
  %92 = sub i64 %91, 1
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %19, align 4
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load i64, i64* %23, align 8
  %97 = load i64, i64* %12, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @xmb_calculate_visible_range(%struct.TYPE_22__* %94, i32 %95, i64 %96, i32 %98, i32* %18, i32* %19)
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @menu_display_blend_begin(i32* %100)
  %102 = load i32, i32* %18, align 4
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %17, align 8
  br label %104

104:                                              ; preds = %134, %88
  %105 = load i64, i64* %17, align 8
  %106 = load i32, i32* %19, align 4
  %107 = zext i32 %106 to i64
  %108 = icmp ule i64 %105, %107
  br i1 %108, label %109, label %137

109:                                              ; preds = %104
  %110 = call i32 @menu_entry_init(%struct.TYPE_23__* %26)
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  store i32 0, i32* %111, align 4
  %112 = load i64, i64* %17, align 8
  %113 = load i64, i64* %12, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 1
  store i32 %115, i32* %116, align 4
  %117 = load i64, i64* %17, align 8
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %119 = call i32 @menu_entry_get(%struct.TYPE_23__* %26, i32 0, i64 %117, %struct.TYPE_25__* %118, i32 1)
  %120 = load i32*, i32** %9, align 8
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %124 = load float*, float** %14, align 8
  %125 = load i64, i64* %17, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @xmb_draw_item(i32* %120, %struct.TYPE_23__* %26, i32* %20, %struct.TYPE_22__* %121, %struct.TYPE_21__* %122, %struct.TYPE_25__* %123, float* %124, i64 %125, i64 %126, i32 %127, i32 %128)
  store i32 %129, i32* %25, align 4
  %130 = load i32, i32* %25, align 4
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %133

132:                                              ; preds = %109
  br label %137

133:                                              ; preds = %109
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %17, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %17, align 8
  br label %104

137:                                              ; preds = %132, %104
  %138 = load i32*, i32** %9, align 8
  %139 = call i32 @menu_display_blend_end(i32* %138)
  br label %140

140:                                              ; preds = %137, %86, %37
  ret void
}

declare dso_local %struct.TYPE_21__* @xmb_get_userdata_from_horizontal_list(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @file_list_get_size(%struct.TYPE_25__*) #1

declare dso_local i32 @menu_display_rotate_z(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @menu_entries_ctl(i32, i64*) #1

declare dso_local i64 @file_list_get_userdata_at_offset(%struct.TYPE_25__*, i64) #1

declare dso_local i32 @xmb_calculate_visible_range(%struct.TYPE_22__*, i32, i64, i32, i32*, i32*) #1

declare dso_local i32 @menu_display_blend_begin(i32*) #1

declare dso_local i32 @menu_entry_init(%struct.TYPE_23__*) #1

declare dso_local i32 @menu_entry_get(%struct.TYPE_23__*, i32, i64, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @xmb_draw_item(i32*, %struct.TYPE_23__*, i32*, %struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_25__*, float*, i64, i64, i32, i32) #1

declare dso_local i32 @menu_display_blend_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
