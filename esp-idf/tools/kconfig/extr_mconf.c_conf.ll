; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_mconf.c_conf.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_mconf.c_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.TYPE_4__*, i8*, %struct.symbol* }
%struct.TYPE_4__ = type { i32 }
%struct.symbol = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.subtitle_part = type { i32, i32* }

@rootmenu = common dso_local global %struct.menu zeroinitializer, align 8
@trail = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@current_menu = common dso_local global %struct.menu* null, align 8
@child_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Main Menu\00", align 1
@menu_instructions = common dso_local global i8* null, align 8
@KEY_ESC = common dso_local global i32 0, align 4
@ERRDISPLAYTOOSMALL = common dso_local global i32 0, align 4
@single_menu_mode = common dso_local global i32 0, align 4
@yes = common dso_local global i32 0, align 4
@P_MENU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"README\00", align 1
@mconf_readme = common dso_local global i8* null, align 8
@mod = common dso_local global i32 0, align 4
@setmod_text = common dso_local global i32 0, align 4
@no = common dso_local global i32 0, align 4
@show_all_options = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.menu*, %struct.menu*)* @conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conf(%struct.menu* %0, %struct.menu* %1) #0 {
  %3 = alloca %struct.menu*, align 8
  %4 = alloca %struct.menu*, align 8
  %5 = alloca %struct.menu*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.subtitle_part, align 8
  %8 = alloca %struct.symbol*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.menu* %0, %struct.menu** %3, align 8
  store %struct.menu* %1, %struct.menu** %4, align 8
  %11 = load %struct.menu*, %struct.menu** %3, align 8
  %12 = call i8* @menu_get_prompt(%struct.menu* %11)
  store i8* %12, i8** %6, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.menu*, %struct.menu** %3, align 8
  %14 = icmp ne %struct.menu* %13, @rootmenu
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.menu*, %struct.menu** %3, align 8
  %17 = call i8* @menu_get_prompt(%struct.menu* %16)
  %18 = bitcast i8* %17 to i32*
  %19 = getelementptr inbounds %struct.subtitle_part, %struct.subtitle_part* %7, i32 0, i32 1
  store i32* %18, i32** %19, align 8
  br label %22

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.subtitle_part, %struct.subtitle_part* %7, i32 0, i32 1
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %20, %15
  %23 = getelementptr inbounds %struct.subtitle_part, %struct.subtitle_part* %7, i32 0, i32 0
  %24 = call i32 @list_add_tail(i32* %23, %struct.TYPE_5__* @trail)
  br label %25

25:                                               ; preds = %22, %67, %71, %206
  %26 = call i32 (...) @item_reset()
  %27 = load %struct.menu*, %struct.menu** %3, align 8
  store %struct.menu* %27, %struct.menu** @current_menu, align 8
  %28 = load %struct.menu*, %struct.menu** %3, align 8
  %29 = call i32 @build_conf(%struct.menu* %28)
  %30 = load i32, i32* @child_count, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %207

33:                                               ; preds = %25
  %34 = call i32 (...) @set_subtitle()
  %35 = call i32 (...) @dialog_clear()
  %36 = load i8*, i8** %6, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @_(i8* %39)
  br label %43

41:                                               ; preds = %33
  %42 = call i32 @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %38
  %44 = phi i32 [ %40, %38 ], [ %42, %41 ]
  %45 = load i8*, i8** @menu_instructions, align 8
  %46 = call i32 @_(i8* %45)
  %47 = load %struct.menu*, %struct.menu** %4, align 8
  %48 = call i32 @dialog_menu(i32 %44, i32 %46, %struct.menu* %47, i32* %10)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %60, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @KEY_ESC, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @ERRDISPLAYTOOSMALL, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %51, %43
  br label %207

61:                                               ; preds = %55
  %62 = call i64 (...) @item_count()
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = call i32 (...) @item_activate_selected()
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  br label %25

68:                                               ; preds = %64
  %69 = call i64 (...) @item_tag()
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  br label %25

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %61
  %74 = call %struct.menu* (...) @item_data()
  store %struct.menu* %74, %struct.menu** %5, align 8
  %75 = call %struct.menu* (...) @item_data()
  store %struct.menu* %75, %struct.menu** %4, align 8
  %76 = load %struct.menu*, %struct.menu** %5, align 8
  %77 = icmp ne %struct.menu* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.menu*, %struct.menu** %5, align 8
  %80 = getelementptr inbounds %struct.menu, %struct.menu* %79, i32 0, i32 2
  %81 = load %struct.symbol*, %struct.symbol** %80, align 8
  store %struct.symbol* %81, %struct.symbol** %8, align 8
  br label %83

82:                                               ; preds = %73
  store %struct.symbol* null, %struct.symbol** %8, align 8
  br label %83

83:                                               ; preds = %82, %78
  %84 = load i32, i32* %9, align 4
  switch i32 %84, label %206 [
    i32 0, label %85
    i32 2, label %132
    i32 3, label %145
    i32 4, label %148
    i32 5, label %151
    i32 6, label %170
    i32 7, label %178
    i32 8, label %186
    i32 9, label %199
    i32 10, label %201
  ]

85:                                               ; preds = %83
  %86 = call i64 (...) @item_tag()
  switch i64 %86, label %131 [
    i64 109, label %87
    i64 116, label %104
    i64 115, label %128
  ]

87:                                               ; preds = %85
  %88 = load i32, i32* @single_menu_mode, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load %struct.menu*, %struct.menu** %5, align 8
  %92 = getelementptr inbounds %struct.menu, %struct.menu* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.menu*, %struct.menu** %5, align 8
  %100 = getelementptr inbounds %struct.menu, %struct.menu* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  br label %103

101:                                              ; preds = %87
  %102 = load %struct.menu*, %struct.menu** %5, align 8
  call void @conf(%struct.menu* %102, %struct.menu* null)
  br label %103

103:                                              ; preds = %101, %90
  br label %131

104:                                              ; preds = %85
  %105 = load %struct.symbol*, %struct.symbol** %8, align 8
  %106 = call i32 @sym_is_choice(%struct.symbol* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = load %struct.symbol*, %struct.symbol** %8, align 8
  %110 = call i32 @sym_get_tristate_value(%struct.symbol* %109)
  %111 = load i32, i32* @yes, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.menu*, %struct.menu** %5, align 8
  %115 = call i32 @conf_choice(%struct.menu* %114)
  br label %127

116:                                              ; preds = %108, %104
  %117 = load %struct.menu*, %struct.menu** %5, align 8
  %118 = getelementptr inbounds %struct.menu, %struct.menu* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @P_MENU, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = load %struct.menu*, %struct.menu** %5, align 8
  call void @conf(%struct.menu* %125, %struct.menu* null)
  br label %126

126:                                              ; preds = %124, %116
  br label %127

127:                                              ; preds = %126, %113
  br label %131

128:                                              ; preds = %85
  %129 = load %struct.menu*, %struct.menu** %5, align 8
  %130 = call i32 @conf_string(%struct.menu* %129)
  br label %131

131:                                              ; preds = %85, %128, %127, %103
  br label %206

132:                                              ; preds = %83
  %133 = load %struct.symbol*, %struct.symbol** %8, align 8
  %134 = icmp ne %struct.symbol* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.menu*, %struct.menu** %5, align 8
  %137 = call i32 @show_help(%struct.menu* %136)
  br label %144

138:                                              ; preds = %132
  %139 = call i32 (...) @reset_subtitle()
  %140 = call i32 @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %141 = load i8*, i8** @mconf_readme, align 8
  %142 = call i32 @_(i8* %141)
  %143 = call i32 @show_helptext(i32 %140, i32 %142)
  br label %144

144:                                              ; preds = %138, %135
  br label %206

145:                                              ; preds = %83
  %146 = call i32 (...) @reset_subtitle()
  %147 = call i32 (...) @conf_save()
  br label %206

148:                                              ; preds = %83
  %149 = call i32 (...) @reset_subtitle()
  %150 = call i32 (...) @conf_load()
  br label %206

151:                                              ; preds = %83
  %152 = call i32 @item_is_tag(i8 signext 116)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %169

154:                                              ; preds = %151
  %155 = load %struct.symbol*, %struct.symbol** %8, align 8
  %156 = load i32, i32* @yes, align 4
  %157 = call i32 @sym_set_tristate_value(%struct.symbol* %155, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %206

160:                                              ; preds = %154
  %161 = load %struct.symbol*, %struct.symbol** %8, align 8
  %162 = load i32, i32* @mod, align 4
  %163 = call i32 @sym_set_tristate_value(%struct.symbol* %161, i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i32, i32* @setmod_text, align 4
  %167 = call i32 @show_textbox(i32* null, i32 %166, i32 6, i32 74)
  br label %168

168:                                              ; preds = %165, %160
  br label %169

169:                                              ; preds = %168, %151
  br label %206

170:                                              ; preds = %83
  %171 = call i32 @item_is_tag(i8 signext 116)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = load %struct.symbol*, %struct.symbol** %8, align 8
  %175 = load i32, i32* @no, align 4
  %176 = call i32 @sym_set_tristate_value(%struct.symbol* %174, i32 %175)
  br label %177

177:                                              ; preds = %173, %170
  br label %206

178:                                              ; preds = %83
  %179 = call i32 @item_is_tag(i8 signext 116)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load %struct.symbol*, %struct.symbol** %8, align 8
  %183 = load i32, i32* @mod, align 4
  %184 = call i32 @sym_set_tristate_value(%struct.symbol* %182, i32 %183)
  br label %185

185:                                              ; preds = %181, %178
  br label %206

186:                                              ; preds = %83
  %187 = call i32 @item_is_tag(i8 signext 116)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load %struct.symbol*, %struct.symbol** %8, align 8
  %191 = call i32 @sym_toggle_tristate_value(%struct.symbol* %190)
  br label %198

192:                                              ; preds = %186
  %193 = call i32 @item_is_tag(i8 signext 109)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = load %struct.menu*, %struct.menu** %5, align 8
  call void @conf(%struct.menu* %196, %struct.menu* null)
  br label %197

197:                                              ; preds = %195, %192
  br label %198

198:                                              ; preds = %197, %189
  br label %206

199:                                              ; preds = %83
  %200 = call i32 (...) @search_conf()
  br label %206

201:                                              ; preds = %83
  %202 = load i32, i32* @show_all_options, align 4
  %203 = icmp ne i32 %202, 0
  %204 = xor i1 %203, true
  %205 = zext i1 %204 to i32
  store i32 %205, i32* @show_all_options, align 4
  br label %206

206:                                              ; preds = %83, %201, %199, %198, %185, %177, %169, %159, %148, %145, %144, %131
  br label %25

207:                                              ; preds = %60, %32
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @trail, i32 0, i32 0), align 4
  %209 = call i32 @list_del(i32 %208)
  ret void
}

declare dso_local i8* @menu_get_prompt(%struct.menu*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @item_reset(...) #1

declare dso_local i32 @build_conf(%struct.menu*) #1

declare dso_local i32 @set_subtitle(...) #1

declare dso_local i32 @dialog_clear(...) #1

declare dso_local i32 @dialog_menu(i32, i32, %struct.menu*, i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @item_count(...) #1

declare dso_local i32 @item_activate_selected(...) #1

declare dso_local i64 @item_tag(...) #1

declare dso_local %struct.menu* @item_data(...) #1

declare dso_local i32 @sym_is_choice(%struct.symbol*) #1

declare dso_local i32 @sym_get_tristate_value(%struct.symbol*) #1

declare dso_local i32 @conf_choice(%struct.menu*) #1

declare dso_local i32 @conf_string(%struct.menu*) #1

declare dso_local i32 @show_help(%struct.menu*) #1

declare dso_local i32 @reset_subtitle(...) #1

declare dso_local i32 @show_helptext(i32, i32) #1

declare dso_local i32 @conf_save(...) #1

declare dso_local i32 @conf_load(...) #1

declare dso_local i32 @item_is_tag(i8 signext) #1

declare dso_local i32 @sym_set_tristate_value(%struct.symbol*, i32) #1

declare dso_local i32 @show_textbox(i32*, i32, i32, i32) #1

declare dso_local i32 @sym_toggle_tristate_value(%struct.symbol*) #1

declare dso_local i32 @search_conf(...) #1

declare dso_local i32 @list_del(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
