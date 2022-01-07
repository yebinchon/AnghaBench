; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_menu_action_handle_setting.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_menu_action_handle_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8*, i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)*, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_21__ = type { i32, i64, i32*, i8*, i8* }

@DISPLAYLIST_GENERIC = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_PATH = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_IMAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_action_handle_setting(%struct.TYPE_20__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %16 = icmp ne %struct.TYPE_20__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %170

18:                                               ; preds = %4
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %20 = call i32 @setting_get_type(%struct.TYPE_20__* %19)
  switch i32 %20, label %168 [
    i32 132, label %21
    i32 137, label %54
    i32 133, label %54
    i32 128, label %54
    i32 131, label %54
    i32 134, label %54
    i32 135, label %54
    i32 130, label %54
    i32 129, label %54
    i32 136, label %54
    i32 138, label %54
    i32 139, label %54
  ]

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 144
  br i1 %23, label %24, label %53

24:                                               ; preds = %21
  %25 = call i32* @menu_entries_get_menu_stack_ptr(i32 0)
  store i32* %25, i32** %11, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %12, align 8
  %29 = call i64 (...) @menu_navigation_get_selection()
  store i64 %29, i64* %13, align 8
  %30 = call i32 @menu_displaylist_info_init(%struct.TYPE_21__* %10)
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 9
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @strdup(i8* %34)
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 4
  store i8* %35, i8** %36, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = call i8* @strdup(i8* %37)
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 3
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 2
  store i32* %44, i32** %45, align 8
  %46 = load i32, i32* @DISPLAYLIST_GENERIC, align 4
  %47 = call i32 @menu_displaylist_ctl(i32 %46, %struct.TYPE_21__* %10)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %24
  %50 = call i32 @menu_displaylist_process(%struct.TYPE_21__* %10)
  br label %51

51:                                               ; preds = %49, %24
  %52 = call i32 @menu_displaylist_info_free(%struct.TYPE_21__* %10)
  br label %53

53:                                               ; preds = %51, %21
  br label %54

54:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %53
  store i32 -1, i32* %14, align 4
  %55 = load i32, i32* %8, align 4
  switch i32 %55, label %160 [
    i32 140, label %56
    i32 146, label %68
    i32 145, label %80
    i32 143, label %96
    i32 142, label %112
    i32 144, label %124
    i32 147, label %136
    i32 141, label %148
  ]

56:                                               ; preds = %54
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %58, align 8
  %60 = icmp ne i32 (%struct.TYPE_20__*)* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 1
  %64 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %63, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %66 = call i32 %64(%struct.TYPE_20__* %65)
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %61, %56
  br label %160

68:                                               ; preds = %54
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 2
  %71 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %70, align 8
  %72 = icmp ne i32 (%struct.TYPE_20__*)* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 2
  %76 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %75, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %78 = call i32 %76(%struct.TYPE_20__* %77)
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %73, %68
  br label %160

80:                                               ; preds = %54
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 3
  %83 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %82, align 8
  %84 = icmp ne i32 (%struct.TYPE_20__*, i32)* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 3
  %88 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %87, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %90 = call i32 %88(%struct.TYPE_20__* %89, i32 0)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* @RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_PATH, align 4
  %92 = call i32 @menu_driver_ctl(i32 %91, i32* null)
  %93 = load i32, i32* @RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_IMAGE, align 4
  %94 = call i32 @menu_driver_ctl(i32 %93, i32* null)
  br label %95

95:                                               ; preds = %85, %80
  br label %160

96:                                               ; preds = %54
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 4
  %99 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %98, align 8
  %100 = icmp ne i32 (%struct.TYPE_20__*, i32)* %99, null
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 4
  %104 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %103, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %106 = call i32 %104(%struct.TYPE_20__* %105, i32 0)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* @RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_PATH, align 4
  %108 = call i32 @menu_driver_ctl(i32 %107, i32* null)
  %109 = load i32, i32* @RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_IMAGE, align 4
  %110 = call i32 @menu_driver_ctl(i32 %109, i32* null)
  br label %111

111:                                              ; preds = %101, %96
  br label %160

112:                                              ; preds = %54
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 5
  %115 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %114, align 8
  %116 = icmp ne i32 (%struct.TYPE_20__*, i32)* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 5
  %120 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %119, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %122 = call i32 %120(%struct.TYPE_20__* %121, i32 1)
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %117, %112
  br label %160

124:                                              ; preds = %54
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 6
  %127 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %126, align 8
  %128 = icmp ne i32 (%struct.TYPE_20__*, i32)* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 6
  %132 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %131, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %134 = call i32 %132(%struct.TYPE_20__* %133, i32 0)
  store i32 %134, i32* %14, align 4
  br label %135

135:                                              ; preds = %129, %124
  br label %160

136:                                              ; preds = %54
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 7
  %139 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %138, align 8
  %140 = icmp ne i32 (%struct.TYPE_20__*)* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 7
  %144 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %143, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %146 = call i32 %144(%struct.TYPE_20__* %145)
  store i32 %146, i32* %14, align 4
  br label %147

147:                                              ; preds = %141, %136
  br label %160

148:                                              ; preds = %54
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 8
  %151 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %150, align 8
  %152 = icmp ne i32 (%struct.TYPE_20__*)* %151, null
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 8
  %156 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %155, align 8
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %158 = call i32 %156(%struct.TYPE_20__* %157)
  store i32 %158, i32* %14, align 4
  br label %159

159:                                              ; preds = %153, %148
  br label %160

160:                                              ; preds = %54, %159, %147, %135, %123, %111, %95, %79, %67
  %161 = load i32, i32* %14, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @menu_setting_generic(%struct.TYPE_20__* %164, i32 %165)
  store i32 %166, i32* %5, align 4
  br label %170

167:                                              ; preds = %160
  br label %169

168:                                              ; preds = %18
  br label %169

169:                                              ; preds = %168, %167
  store i32 -1, i32* %5, align 4
  br label %170

170:                                              ; preds = %169, %163, %17
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @setting_get_type(%struct.TYPE_20__*) #1

declare dso_local i32* @menu_entries_get_menu_stack_ptr(i32) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @menu_displaylist_info_init(%struct.TYPE_21__*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @menu_displaylist_ctl(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @menu_displaylist_process(%struct.TYPE_21__*) #1

declare dso_local i32 @menu_displaylist_info_free(%struct.TYPE_21__*) #1

declare dso_local i32 @menu_driver_ctl(i32, i32*) #1

declare dso_local i32 @menu_setting_generic(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
