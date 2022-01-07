; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_yui_sh_mbp_popup.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_yui_sh_mbp_popup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@GDK_BUTTON_PRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@GTK_TYPE_CHECK_MENU_ITEM = common dso_local global i32 0, align 4
@G_SIGNAL_MATCH_DATA = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yui_sh_mbp_popup(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %10, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @g_return_val_if_fail(i32 %23, i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = icmp ne %struct.TYPE_9__* %26, null
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i32 @g_return_val_if_fail(i32 %28, i32 %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i32* @GTK_TREE_VIEW(i32* %33)
  store i32* %34, i32** %11, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32* @GTK_MENU(i32 %37)
  store i32* %38, i32** %8, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @GDK_BUTTON_PRESS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %216

44:                                               ; preds = %3
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %9, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %215

50:                                               ; preds = %44
  %51 = load i32*, i32** %11, align 8
  %52 = call i32* @gtk_tree_view_get_selection(i32* %51)
  store i32* %52, i32** %12, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32* @GTK_TREE_VIEW(i32* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @gtk_tree_view_get_path_at_pos(i32* %54, i32 %57, i32 %60, i32** %19, i32* null, i32* null, i32* null)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %50
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @gtk_tree_selection_unselect_all(i32* %64)
  %66 = load i32*, i32** %12, align 8
  %67 = load i32*, i32** %19, align 8
  %68 = call i32 @gtk_tree_selection_select_path(i32* %66, i32* %67)
  %69 = load i32*, i32** %19, align 8
  %70 = call i32 @gtk_tree_path_free(i32* %69)
  br label %71

71:                                               ; preds = %63, %50
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @gtk_tree_selection_get_selected(i32* %72, i32** %14, i32* %13)
  %74 = load i32*, i32** %12, align 8
  %75 = call i64 @gtk_tree_selection_count_selected_rows(i32* %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %4, align 4
  br label %218

79:                                               ; preds = %71
  %80 = load i32*, i32** %14, align 8
  %81 = call i32 @gtk_tree_model_get(i32* %80, i32* %13, i32 1, i8** %15, i32 -1)
  %82 = load i32, i32* @GTK_TYPE_CHECK_MENU_ITEM, align 4
  %83 = call i32 @g_signal_lookup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %82)
  store i32 %83, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %84

84:                                               ; preds = %99, %79
  %85 = load i32, i32* %17, align 4
  %86 = icmp slt i32 %85, 6
  br i1 %86, label %87, label %102

87:                                               ; preds = %84
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @G_SIGNAL_MATCH_DATA, align 4
  %96 = load i32, i32* %18, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %98 = call i32 @g_signal_handlers_block_matched(i32 %94, i32 %95, i32 %96, i32 0, i32* null, i32* null, %struct.TYPE_8__* %97)
  br label %99

99:                                               ; preds = %87
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %17, align 4
  br label %84

102:                                              ; preds = %84
  store i32 0, i32* %17, align 4
  br label %103

103:                                              ; preds = %117, %102
  %104 = load i32, i32* %17, align 4
  %105 = icmp slt i32 %104, 6
  br i1 %105, label %106, label %120

106:                                              ; preds = %103
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @GTK_CHECK_MENU_ITEM(i32 %113)
  %115 = load i32, i32* @FALSE, align 4
  %116 = call i32 @gtk_check_menu_item_set_active(i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %106
  %118 = load i32, i32* %17, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %17, align 4
  br label %103

120:                                              ; preds = %103
  %121 = load i8*, i8** %15, align 8
  store i8* %121, i8** %16, align 8
  br label %122

122:                                              ; preds = %184, %120
  %123 = load i8*, i8** %16, align 8
  %124 = load i8, i8* %123, align 1
  %125 = icmp ne i8 %124, 0
  br i1 %125, label %126, label %187

126:                                              ; preds = %122
  %127 = load i8*, i8** %16, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  switch i32 %129, label %184 [
    i32 98, label %130
    i32 119, label %139
    i32 108, label %148
    i32 66, label %157
    i32 87, label %166
    i32 76, label %175
  ]

130:                                              ; preds = %126
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @GTK_CHECK_MENU_ITEM(i32 %135)
  %137 = load i32, i32* @TRUE, align 4
  %138 = call i32 @gtk_check_menu_item_set_active(i32 %136, i32 %137)
  br label %184

139:                                              ; preds = %126
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @GTK_CHECK_MENU_ITEM(i32 %144)
  %146 = load i32, i32* @TRUE, align 4
  %147 = call i32 @gtk_check_menu_item_set_active(i32 %145, i32 %146)
  br label %184

148:                                              ; preds = %126
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 2
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @GTK_CHECK_MENU_ITEM(i32 %153)
  %155 = load i32, i32* @TRUE, align 4
  %156 = call i32 @gtk_check_menu_item_set_active(i32 %154, i32 %155)
  br label %184

157:                                              ; preds = %126
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 3
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @GTK_CHECK_MENU_ITEM(i32 %162)
  %164 = load i32, i32* @TRUE, align 4
  %165 = call i32 @gtk_check_menu_item_set_active(i32 %163, i32 %164)
  br label %184

166:                                              ; preds = %126
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 4
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @GTK_CHECK_MENU_ITEM(i32 %171)
  %173 = load i32, i32* @TRUE, align 4
  %174 = call i32 @gtk_check_menu_item_set_active(i32 %172, i32 %173)
  br label %184

175:                                              ; preds = %126
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 5
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @GTK_CHECK_MENU_ITEM(i32 %180)
  %182 = load i32, i32* @TRUE, align 4
  %183 = call i32 @gtk_check_menu_item_set_active(i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %126, %175, %166, %157, %148, %139, %130
  %185 = load i8*, i8** %16, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %16, align 8
  br label %122

187:                                              ; preds = %122
  store i32 0, i32* %17, align 4
  br label %188

188:                                              ; preds = %203, %187
  %189 = load i32, i32* %17, align 4
  %190 = icmp slt i32 %189, 6
  br i1 %190, label %191, label %206

191:                                              ; preds = %188
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %17, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @G_SIGNAL_MATCH_DATA, align 4
  %200 = load i32, i32* %18, align 4
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %202 = call i32 @g_signal_handlers_unblock_matched(i32 %198, i32 %199, i32 %200, i32 0, i32* null, i32* null, %struct.TYPE_8__* %201)
  br label %203

203:                                              ; preds = %191
  %204 = load i32, i32* %17, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %17, align 4
  br label %188

206:                                              ; preds = %188
  %207 = load i32*, i32** %8, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @gtk_menu_popup(i32* %207, i32* null, i32* null, i32* null, i32* null, i32 %210, i32 %213)
  br label %215

215:                                              ; preds = %206, %44
  br label %216

216:                                              ; preds = %215, %3
  %217 = load i32, i32* @FALSE, align 4
  store i32 %217, i32* %4, align 4
  br label %218

218:                                              ; preds = %216, %77
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i32 @g_return_val_if_fail(i32, i32) #1

declare dso_local i32* @GTK_TREE_VIEW(i32*) #1

declare dso_local i32* @GTK_MENU(i32) #1

declare dso_local i32* @gtk_tree_view_get_selection(i32*) #1

declare dso_local i64 @gtk_tree_view_get_path_at_pos(i32*, i32, i32, i32**, i32*, i32*, i32*) #1

declare dso_local i32 @gtk_tree_selection_unselect_all(i32*) #1

declare dso_local i32 @gtk_tree_selection_select_path(i32*, i32*) #1

declare dso_local i32 @gtk_tree_path_free(i32*) #1

declare dso_local i32 @gtk_tree_selection_get_selected(i32*, i32**, i32*) #1

declare dso_local i64 @gtk_tree_selection_count_selected_rows(i32*) #1

declare dso_local i32 @gtk_tree_model_get(i32*, i32*, i32, i8**, i32) #1

declare dso_local i32 @g_signal_lookup(i8*, i32) #1

declare dso_local i32 @g_signal_handlers_block_matched(i32, i32, i32, i32, i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @gtk_check_menu_item_set_active(i32, i32) #1

declare dso_local i32 @GTK_CHECK_MENU_ITEM(i32) #1

declare dso_local i32 @g_signal_handlers_unblock_matched(i32, i32, i32, i32, i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @gtk_menu_popup(i32*, i32*, i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
