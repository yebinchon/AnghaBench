; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_populate_entries.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_populate_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, float, i32, i32, i32, i64, i32*, i32 }

@MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_CORE_UPDATER_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SCAN_DIRECTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SCAN_FILE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_IMAGES_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_MUSIC_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_LOAD_CONTENT_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_FAVORITES = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_SPECIAL = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_RESOLUTION = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_DEFAULT_CORE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LABEL_DISPLAY_MODE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_RIGHT_THUMBNAIL_MODE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LEFT_THUMBNAIL_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32)* @materialui_populate_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materialui_populate_entries(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %9, align 8
  %13 = call i32* (...) @config_get_ptr()
  store i32* %13, i32** %10, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32*, i32** %10, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %4
  br label %188

20:                                               ; preds = %16
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @menu_entries_get_title(i32 %23, i32 4)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  store i32 0, i32* %30, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST, align 4
  %33 = call i32 @msg_hash_to_str(i32 %32)
  %34 = call i64 @string_is_equal(i8* %31, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %20
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* @MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY, align 4
  %39 = call i32 @msg_hash_to_str(i32 %38)
  %40 = call i64 @string_is_equal(i8* %37, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST, align 4
  %45 = call i32 @msg_hash_to_str(i32 %44)
  %46 = call i64 @string_is_equal(i8* %43, i32 %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %42, %36, %20
  %49 = phi i1 [ true, %36 ], [ true, %20 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %156, label %57

57:                                               ; preds = %48
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_CORE_UPDATER_LIST, align 4
  %60 = call i32 @msg_hash_to_str(i32 %59)
  %61 = call i64 @string_is_equal(i8* %58, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %99, label %63

63:                                               ; preds = %57
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* @MENU_ENUM_LABEL_SCAN_DIRECTORY, align 4
  %66 = call i32 @msg_hash_to_str(i32 %65)
  %67 = call i64 @string_is_equal(i8* %64, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %99, label %69

69:                                               ; preds = %63
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* @MENU_ENUM_LABEL_SCAN_FILE, align 4
  %72 = call i32 @msg_hash_to_str(i32 %71)
  %73 = call i64 @string_is_equal(i8* %70, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %99, label %75

75:                                               ; preds = %69
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_IMAGES_LIST, align 4
  %78 = call i32 @msg_hash_to_str(i32 %77)
  %79 = call i64 @string_is_equal(i8* %76, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %75
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_MUSIC_LIST, align 4
  %84 = call i32 @msg_hash_to_str(i32 %83)
  %85 = call i64 @string_is_equal(i8* %82, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %81
  %88 = load i8*, i8** %7, align 8
  %89 = load i32, i32* @MENU_ENUM_LABEL_LOAD_CONTENT_LIST, align 4
  %90 = call i32 @msg_hash_to_str(i32 %89)
  %91 = call i64 @string_is_equal(i8* %88, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* @MENU_ENUM_LABEL_FAVORITES, align 4
  %96 = call i32 @msg_hash_to_str(i32 %95)
  %97 = call i64 @string_is_equal(i8* %94, i32 %96)
  %98 = icmp ne i64 %97, 0
  br label %99

99:                                               ; preds = %93, %87, %81, %75, %69, %63, %57
  %100 = phi i1 [ true, %87 ], [ true, %81 ], [ true, %75 ], [ true, %69 ], [ true, %63 ], [ true, %57 ], [ %98, %93 ]
  %101 = zext i1 %100 to i32
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %155, label %108

108:                                              ; preds = %99
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST, align 4
  %111 = call i32 @msg_hash_to_str(i32 %110)
  %112 = call i64 @string_is_equal(i8* %109, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %150, label %114

114:                                              ; preds = %108
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_SPECIAL, align 4
  %117 = call i32 @msg_hash_to_str(i32 %116)
  %118 = call i64 @string_is_equal(i8* %115, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %150, label %120

120:                                              ; preds = %114
  %121 = load i8*, i8** %7, align 8
  %122 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_RESOLUTION, align 4
  %123 = call i32 @msg_hash_to_str(i32 %122)
  %124 = call i64 @string_is_equal(i8* %121, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %150, label %126

126:                                              ; preds = %120
  %127 = load i8*, i8** %7, align 8
  %128 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_DEFAULT_CORE, align 4
  %129 = call i32 @msg_hash_to_str(i32 %128)
  %130 = call i64 @string_is_equal(i8* %127, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %150, label %132

132:                                              ; preds = %126
  %133 = load i8*, i8** %7, align 8
  %134 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LABEL_DISPLAY_MODE, align 4
  %135 = call i32 @msg_hash_to_str(i32 %134)
  %136 = call i64 @string_is_equal(i8* %133, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %150, label %138

138:                                              ; preds = %132
  %139 = load i8*, i8** %7, align 8
  %140 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_RIGHT_THUMBNAIL_MODE, align 4
  %141 = call i32 @msg_hash_to_str(i32 %140)
  %142 = call i64 @string_is_equal(i8* %139, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %138
  %145 = load i8*, i8** %7, align 8
  %146 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LEFT_THUMBNAIL_MODE, align 4
  %147 = call i32 @msg_hash_to_str(i32 %146)
  %148 = call i64 @string_is_equal(i8* %145, i32 %147)
  %149 = icmp ne i64 %148, 0
  br label %150

150:                                              ; preds = %144, %138, %132, %126, %120, %114, %108
  %151 = phi i1 [ true, %138 ], [ true, %132 ], [ true, %126 ], [ true, %120 ], [ true, %114 ], [ true, %108 ], [ %149, %144 ]
  %152 = zext i1 %151 to i32
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %150, %99
  br label %156

156:                                              ; preds = %155, %48
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = call i32* (...) @playlist_get_cached()
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 8
  store i32* %162, i32** %164, align 8
  br label %168

165:                                              ; preds = %156
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 8
  store i32* null, i32** %167, align 8
  br label %168

168:                                              ; preds = %165, %161
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %170 = load i8*, i8** %7, align 8
  %171 = load i32*, i32** %10, align 8
  %172 = call i32 @materialui_populate_nav_bar(%struct.TYPE_5__* %169, i8* %170, i32* %171)
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %174 = call i32 @materialui_update_list_view(%struct.TYPE_5__* %173)
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 7
  store i64 0, i64* %176, align 8
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 3
  store float 0.000000e+00, float* %178, align 4
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 4
  store i32 0, i32* %180, align 8
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %182 = load i32*, i32** %10, align 8
  %183 = call i32 @materialui_init_transition_animation(%struct.TYPE_5__* %181, i32* %182)
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 5
  store i32 0, i32* %185, align 4
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 6
  store i32 1, i32* %187, align 8
  br label %188

188:                                              ; preds = %168, %19
  ret void
}

declare dso_local i32* @config_get_ptr(...) #1

declare dso_local i32 @menu_entries_get_title(i32, i32) #1

declare dso_local i64 @string_is_equal(i8*, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32* @playlist_get_cached(...) #1

declare dso_local i32 @materialui_populate_nav_bar(%struct.TYPE_5__*, i8*, i32*) #1

declare dso_local i32 @materialui_update_list_view(%struct.TYPE_5__*) #1

declare dso_local i32 @materialui_init_transition_animation(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
