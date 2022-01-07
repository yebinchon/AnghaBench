; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_entries.c_ozone_compute_entries_position.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_entries.c_ozone_compute_entries_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64*, i32, i32, i64, i64, %struct.TYPE_15__, i64, i64, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i64 }

@MENU_ENTRIES_CTL_START_GET = common dso_local global i32 0, align 4
@OZONE_ENTRIES_ICONS_TEXTURE_CORE_INFO = common dso_local global i64 0, align 8
@MENU_SUBLABEL_MAX_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ozone_compute_entries_position(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  store i32* null, i32** %8, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %19 = call i32 @ozone_get_entries_padding(%struct.TYPE_17__* %18, i32 0)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 9
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @font_driver_get_line_height(i32 %23, float 1.000000e+00)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @MENU_ENTRIES_CTL_START_GET, align 4
  %26 = call i32 @menu_entries_ctl(i32 %25, i64* %6)
  %27 = call i64 (...) @menu_entries_get_size()
  store i64 %27, i64* %7, align 8
  %28 = call i32* @menu_entries_get_selection_buf_ptr(i32 0)
  store i32* %28, i32** %8, align 8
  %29 = call i32 @video_driver_get_size(i32* %4, i32* %3)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  store i64 0, i64* %6, align 8
  br label %32

32:                                               ; preds = %183, %1
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %186

36:                                               ; preds = %32
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %12, align 8
  store i8* null, i8** %13, align 8
  %37 = call i32 @menu_entry_init(%struct.TYPE_18__* %11)
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 3
  store i32 0, i32* %41, align 4
  %42 = load i64, i64* %6, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @menu_entry_get(%struct.TYPE_18__* %11, i32 0, i32 %43, i32* null, i32 1)
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %36
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %50, 1
  br i1 %51, label %52, label %70

52:                                               ; preds = %49
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @ozone_entries_icon_get_texture(%struct.TYPE_17__* %53, i32 %55, i32 %57, i32 0)
  store i64 %58, i64* %14, align 8
  %59 = load i64, i64* %14, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* @OZONE_ENTRIES_ICONS_TEXTURE_CORE_INFO, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %59, %65
  %67 = zext i1 %66 to i32
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %73

70:                                               ; preds = %49, %36
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %52
  %74 = load i32*, i32** %8, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @file_list_get_userdata_at_offset(i32* %74, i64 %75)
  %77 = inttoptr i64 %76 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %77, %struct.TYPE_16__** %12, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %79 = icmp ne %struct.TYPE_16__* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  br label %183

81:                                               ; preds = %73
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = call i32 @menu_entry_get_sublabel(%struct.TYPE_18__* %11, i8** %13)
  %91 = load i8*, i8** %13, align 8
  %92 = call i32 @string_is_empty(i8* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %170, label %94

94:                                               ; preds = %81
  %95 = load i32, i32* @MENU_SUBLABEL_MAX_LENGTH, align 4
  %96 = zext i32 %95 to i64
  %97 = call i8* @llvm.stacksave()
  store i8* %97, i8** %16, align 8
  %98 = alloca i8, i64 %96, align 16
  store i64 %96, i64* %17, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  store i8 0, i8* %99, align 16
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 40
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, %104
  store i64 %108, i64* %106, align 8
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %9, align 4
  %111 = mul nsw i32 %110, 2
  %112 = sub i32 %109, %111
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 %116, 2
  %118 = sub i32 %112, %117
  store i32 %118, i32* %15, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %131

123:                                              ; preds = %94
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = load i32, i32* %15, align 4
  %130 = sub i32 %129, %128
  store i32 %130, i32* %15, align 4
  br label %131

131:                                              ; preds = %123, %94
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 7
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %131
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = sub nsw i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %15, align 4
  br label %145

145:                                              ; preds = %136, %131
  %146 = load i8*, i8** %13, align 8
  %147 = load i32, i32* %15, align 4
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = sdiv i32 %147, %150
  %152 = call i32 @word_wrap(i8* %98, i8* %146, i32 %151, i32 0, i32 0)
  %153 = call i32 @ozone_count_lines(i8* %98)
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = icmp ugt i32 %154, 1
  br i1 %155, label %156, label %168

156:                                              ; preds = %145
  %157 = load i32, i32* %5, align 4
  %158 = sub i32 %157, 1
  %159 = load i32, i32* %10, align 4
  %160 = mul i32 %158, %159
  %161 = zext i32 %160 to i64
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, %161
  store i64 %165, i64* %163, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  store i32 1, i32* %167, align 8
  br label %168

168:                                              ; preds = %156, %145
  %169 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %169)
  br label %170

170:                                              ; preds = %168, %81
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 5
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 2
  store i64 %173, i64* %175, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 5
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, %178
  store i64 %182, i64* %180, align 8
  br label %183

183:                                              ; preds = %170, %80
  %184 = load i64, i64* %6, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %6, align 8
  br label %32

186:                                              ; preds = %32
  %187 = call i64 (...) @menu_navigation_get_selection()
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 4
  store i64 %187, i64* %189, align 8
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %191 = load i32*, i32** %8, align 8
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = call i64 @file_list_get_userdata_at_offset(i32* %191, i64 %194)
  %196 = inttoptr i64 %195 to %struct.TYPE_16__*
  %197 = call i32 @ozone_update_scroll(%struct.TYPE_17__* %190, i32 0, %struct.TYPE_16__* %196)
  ret void
}

declare dso_local i32 @ozone_get_entries_padding(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @font_driver_get_line_height(i32, float) #1

declare dso_local i32 @menu_entries_ctl(i32, i64*) #1

declare dso_local i64 @menu_entries_get_size(...) #1

declare dso_local i32* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i32 @menu_entry_init(%struct.TYPE_18__*) #1

declare dso_local i32 @menu_entry_get(%struct.TYPE_18__*, i32, i32, i32*, i32) #1

declare dso_local i64 @ozone_entries_icon_get_texture(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i64 @file_list_get_userdata_at_offset(i32*, i64) #1

declare dso_local i32 @menu_entry_get_sublabel(%struct.TYPE_18__*, i8**) #1

declare dso_local i32 @string_is_empty(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @word_wrap(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @ozone_count_lines(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @ozone_update_scroll(%struct.TYPE_17__*, i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
