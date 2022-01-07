; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_draw_items.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_draw_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i64, i32* }
%struct.TYPE_17__ = type { i32 }

@MENU_ENTRIES_CTL_START_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_18__*, %struct.TYPE_20__*, i64, i64, float*, i32, i32)* @stripes_draw_items to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_draw_items(i32* %0, %struct.TYPE_18__* %1, %struct.TYPE_20__* %2, i64 %3, i64 %4, float* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_19__, align 8
  %22 = alloca %struct.TYPE_17__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_17__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store float* %5, float** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %22, align 8
  store i64 0, i64* %23, align 8
  %29 = call i8* @stripes_thumbnails_ident(i8 signext 82)
  store i8* %29, i8** %24, align 8
  %30 = call i8* @stripes_thumbnails_ident(i8 signext 76)
  store i8* %30, i8** %25, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %32 = icmp ne %struct.TYPE_20__* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %40 = icmp ne %struct.TYPE_18__* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38, %33, %8
  br label %139

42:                                               ; preds = %38
  %43 = load i64, i64* %13, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ugt i64 %43, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 1
  %55 = sub i64 %50, %54
  %56 = trunc i64 %55 to i32
  %57 = call %struct.TYPE_17__* @stripes_get_userdata_from_horizontal_list(%struct.TYPE_18__* %49, i32 %56)
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %22, align 8
  br label %58

58:                                               ; preds = %48, %42
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %60 = call i64 @file_list_get_size(%struct.TYPE_20__* %59)
  store i64 %60, i64* %23, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 5
  store i32* %20, i32** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 2
  store i32 1, i32* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 3
  store i32 1, i32* %66, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @menu_display_rotate_z(%struct.TYPE_19__* %21, i32* %67)
  %69 = load i32, i32* @MENU_ENTRIES_CTL_START_GET, align 4
  %70 = call i32 @menu_entries_ctl(i32 %69, i64* %17)
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %73, align 8
  %75 = icmp eq %struct.TYPE_20__* %71, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %58
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %78 = load i64, i64* %12, align 8
  %79 = call i64 @file_list_get_userdata_at_offset(%struct.TYPE_20__* %77, i64 %78)
  %80 = inttoptr i64 %79 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %80, %struct.TYPE_17__** %26, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %82 = icmp ne %struct.TYPE_17__* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 255, %86
  %88 = sext i32 %87 to i64
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %139

91:                                               ; preds = %83, %76
  store i64 0, i64* %17, align 8
  br label %92

92:                                               ; preds = %91, %58
  %93 = load i64, i64* %17, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %18, align 4
  %95 = load i64, i64* %23, align 8
  %96 = sub i64 %95, 1
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %19, align 4
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %99 = load i32, i32* %16, align 4
  %100 = load i64, i64* %23, align 8
  %101 = load i64, i64* %12, align 8
  %102 = call i32 @stripes_calculate_visible_range(%struct.TYPE_18__* %98, i32 %99, i64 %100, i64 %101, i32* %18, i32* %19)
  %103 = load i32*, i32** %9, align 8
  %104 = call i32 @menu_display_blend_begin(i32* %103)
  %105 = load i32, i32* %18, align 4
  %106 = zext i32 %105 to i64
  store i64 %106, i64* %17, align 8
  br label %107

107:                                              ; preds = %133, %92
  %108 = load i64, i64* %17, align 8
  %109 = load i32, i32* %19, align 4
  %110 = zext i32 %109 to i64
  %111 = icmp ule i64 %108, %110
  br i1 %111, label %112, label %136

112:                                              ; preds = %107
  %113 = call i32 @menu_entry_init(i32* %28)
  %114 = load i64, i64* %17, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %116 = call i32 @menu_entry_get(i32* %28, i32 0, i64 %114, %struct.TYPE_20__* %115, i32 1)
  %117 = load i32*, i32** %9, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %121 = load float*, float** %14, align 8
  %122 = load i8*, i8** %24, align 8
  %123 = load i8*, i8** %25, align 8
  %124 = load i64, i64* %17, align 8
  %125 = load i64, i64* %12, align 8
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %16, align 4
  %128 = call i32 @stripes_draw_item(i32* %117, i32* %28, i32* %20, %struct.TYPE_18__* %118, %struct.TYPE_17__* %119, %struct.TYPE_20__* %120, float* %121, i8* %122, i8* %123, i64 %124, i64 %125, i32 %126, i32 %127)
  store i32 %128, i32* %27, align 4
  %129 = load i32, i32* %27, align 4
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %132

131:                                              ; preds = %112
  br label %136

132:                                              ; preds = %112
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* %17, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %17, align 8
  br label %107

136:                                              ; preds = %131, %107
  %137 = load i32*, i32** %9, align 8
  %138 = call i32 @menu_display_blend_end(i32* %137)
  br label %139

139:                                              ; preds = %136, %90, %41
  ret void
}

declare dso_local i8* @stripes_thumbnails_ident(i8 signext) #1

declare dso_local %struct.TYPE_17__* @stripes_get_userdata_from_horizontal_list(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @file_list_get_size(%struct.TYPE_20__*) #1

declare dso_local i32 @menu_display_rotate_z(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @menu_entries_ctl(i32, i64*) #1

declare dso_local i64 @file_list_get_userdata_at_offset(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @stripes_calculate_visible_range(%struct.TYPE_18__*, i32, i64, i64, i32*, i32*) #1

declare dso_local i32 @menu_display_blend_begin(i32*) #1

declare dso_local i32 @menu_entry_init(i32*) #1

declare dso_local i32 @menu_entry_get(i32*, i32, i64, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @stripes_draw_item(i32*, i32*, i32*, %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_20__*, float*, i8*, i8*, i64, i64, i32, i32) #1

declare dso_local i32 @menu_display_blend_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
