; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_render_menu_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_render_menu_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { float, i64, i64, i64, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32*, i32, i32, i32)* @materialui_render_menu_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materialui_render_menu_list(%struct.TYPE_16__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32* null, i32** %14, align 8
  %23 = call i64 (...) @menu_entries_get_size()
  store i64 %23, i64* %15, align 8
  %24 = call i32 (...) @menu_display_get_header_height()
  store i32 %24, i32* %16, align 4
  %25 = call i64 (...) @menu_navigation_get_selection()
  store i64 %25, i64* %17, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %5
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load float, float* %33, align 8
  %35 = fcmp oge float %34, 5.000000e-01
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 (...) @menu_input_get_pointer_selection()
  %41 = icmp eq i64 %39, %40
  br label %42

42:                                               ; preds = %36, %31, %5
  %43 = phi i1 [ false, %31 ], [ false, %5 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %18, align 4
  %45 = call i32* @menu_entries_get_selection_buf_ptr(i32 0)
  store i32* %45, i32** %14, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %168

49:                                               ; preds = %42
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %15, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  br label %61

59:                                               ; preds = %49
  %60 = load i64, i64* %15, align 8
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi i64 [ %58, %55 ], [ %60, %59 ]
  store i64 %62, i64* %12, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %15, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  br label %74

72:                                               ; preds = %61
  %73 = load i64, i64* %15, align 8
  br label %74

74:                                               ; preds = %72, %68
  %75 = phi i64 [ %71, %68 ], [ %73, %72 ]
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %12, align 8
  store i64 %76, i64* %11, align 8
  br label %77

77:                                               ; preds = %159, %74
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %13, align 8
  %80 = icmp ule i64 %78, %79
  br i1 %80, label %81, label %162

81:                                               ; preds = %77
  %82 = load i64, i64* %17, align 8
  %83 = load i64, i64* %11, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp eq i64 %91, %92
  br label %94

94:                                               ; preds = %88, %81
  %95 = phi i1 [ false, %81 ], [ %93, %88 ]
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %20, align 4
  %97 = load i32*, i32** %14, align 8
  %98 = load i64, i64* %11, align 8
  %99 = call i64 @file_list_get_userdata_at_offset(i32* %97, i64 %98)
  %100 = inttoptr i64 %99 to i32*
  store i32* %100, i32** %21, align 8
  %101 = load i32*, i32** %21, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %94
  br label %162

104:                                              ; preds = %94
  %105 = call i32 @menu_entry_init(%struct.TYPE_15__* %22)
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  store i32 0, i32* %106, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 133
  %111 = zext i1 %110 to i32
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  store i32 %111, i32* %112, align 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 131
  %117 = zext i1 %116 to i32
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  store i32 %117, i32* %118, align 4
  %119 = load i64, i64* %11, align 8
  %120 = call i32 @menu_entry_get(%struct.TYPE_15__* %22, i32 0, i64 %119, i32* null, i32 1)
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  switch i32 %123, label %147 [
    i32 132, label %124
    i32 128, label %124
    i32 129, label %124
    i32 130, label %124
    i32 131, label %135
    i32 133, label %146
  ]

124:                                              ; preds = %104, %104, %104, %104
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = load i32*, i32** %21, align 8
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @materialui_render_menu_entry_playlist_list(%struct.TYPE_16__* %125, i32* %126, i32* %127, %struct.TYPE_15__* %22, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133)
  br label %158

135:                                              ; preds = %104
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = load i32*, i32** %21, align 8
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @materialui_render_menu_entry_playlist_dual_icon(%struct.TYPE_16__* %136, i32* %137, i32* %138, %struct.TYPE_15__* %22, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144)
  br label %158

146:                                              ; preds = %104
  br label %147

147:                                              ; preds = %104, %146
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %149 = load i32*, i32** %7, align 8
  %150 = load i32*, i32** %21, align 8
  %151 = load i32, i32* %19, align 4
  %152 = load i32, i32* %20, align 4
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @materialui_render_menu_entry_default(%struct.TYPE_16__* %148, i32* %149, i32* %150, %struct.TYPE_15__* %22, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %147, %135, %124
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %11, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %11, align 8
  br label %77

162:                                              ; preds = %103, %77
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %164 = load i32*, i32** %7, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @materialui_render_scrollbar(%struct.TYPE_16__* %163, i32* %164, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %162, %48
  ret void
}

declare dso_local i64 @menu_entries_get_size(...) #1

declare dso_local i32 @menu_display_get_header_height(...) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i64 @menu_input_get_pointer_selection(...) #1

declare dso_local i32* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i64 @file_list_get_userdata_at_offset(i32*, i64) #1

declare dso_local i32 @menu_entry_init(%struct.TYPE_15__*) #1

declare dso_local i32 @menu_entry_get(%struct.TYPE_15__*, i32, i64, i32*, i32) #1

declare dso_local i32 @materialui_render_menu_entry_playlist_list(%struct.TYPE_16__*, i32*, i32*, %struct.TYPE_15__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @materialui_render_menu_entry_playlist_dual_icon(%struct.TYPE_16__*, i32*, i32*, %struct.TYPE_15__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @materialui_render_menu_entry_default(%struct.TYPE_16__*, i32*, i32*, %struct.TYPE_15__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @materialui_render_scrollbar(%struct.TYPE_16__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
