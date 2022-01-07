; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_update_dialog_widgets.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_update_dialog_widgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"FileFormat\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Import\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SubtitleTrackName\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Track\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"SubtitleTrack\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"subtitle_track_label\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"subtitle_import_grid\00", align 1
@IMPORTSRT = common dso_local global i32 0, align 4
@IMPORTSSA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"srt_code_label\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"SrtCodeset\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"subtitle_import_switch_box\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"SubtitleSsaEnable\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"SubtitleSrtEnable\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Language\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"ImportLanguage\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Codeset\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Filename\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"ImportFile\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"ImportOffset\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"SubtitleImportDisable\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"SubtitleBurned\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"SubtitleForced\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"SubtitleDefaultTrack\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"Burn\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"Forced\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*)* @subtitle_update_dialog_widgets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subtitle_update_dialog_widgets(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %272

16:                                               ; preds = %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @ghb_dict_get_string(i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = call %struct.TYPE_7__* @ghb_lookup_container_by_name(i8* %21)
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %13, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32* @ghb_dict_get(i32* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32* %24, i32** %7, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @get_sub_source(i32 %27, i32* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call i32* @ghb_dict_get_value(i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %16
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @ghb_ui_update(%struct.TYPE_6__* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %36)
  br label %42

38:                                               ; preds = %16
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = call i32* @ghb_string_value(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %41 = call i32 @ghb_ui_update(%struct.TYPE_6__* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i32*, i32** %4, align 8
  %44 = call i32* @ghb_dict_get(i32* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32* %44, i32** %6, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %112

47:                                               ; preds = %42
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @ghb_ui_update(%struct.TYPE_6__* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32* %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32* @GHB_WIDGET(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  store i32* %54, i32** %5, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = icmp eq i32* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @gtk_widget_set_visible(i32* %55, i32 %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32* @GHB_WIDGET(i32 %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i32* %63, i32** %5, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = icmp eq i32* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i32 @gtk_widget_set_visible(i32* %64, i32 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32* @GHB_WIDGET(i32 %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store i32* %72, i32** %5, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @IMPORTSRT, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %47
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @IMPORTSSA, align 4
  %80 = icmp eq i32 %78, %79
  br label %81

81:                                               ; preds = %77, %47
  %82 = phi i1 [ true, %47 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @gtk_widget_set_visible(i32* %73, i32 %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32* @GHB_WIDGET(i32 %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  store i32* %88, i32** %5, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @IMPORTSRT, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @gtk_widget_set_visible(i32* %89, i32 %93)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32* @GHB_WIDGET(i32 %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  store i32* %98, i32** %5, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @IMPORTSRT, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @gtk_widget_set_visible(i32* %99, i32 %103)
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32* @GHB_WIDGET(i32 %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  store i32* %108, i32** %5, align 8
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* @TRUE, align 4
  %111 = call i32 @gtk_widget_set_visible(i32* %109, i32 %110)
  br label %141

112:                                              ; preds = %42
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32* @GHB_WIDGET(i32 %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  store i32* %116, i32** %5, align 8
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* @FALSE, align 4
  %119 = call i32 @gtk_widget_set_visible(i32* %117, i32 %118)
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32* @GHB_WIDGET(i32 %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i32* %123, i32** %5, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* @FALSE, align 4
  %126 = call i32 @gtk_widget_set_visible(i32* %124, i32 %125)
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32* @GHB_WIDGET(i32 %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store i32* %130, i32** %5, align 8
  %131 = load i32*, i32** %5, align 8
  %132 = load i32, i32* @FALSE, align 4
  %133 = call i32 @gtk_widget_set_visible(i32* %131, i32 %132)
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32* @GHB_WIDGET(i32 %136, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  store i32* %137, i32** %5, align 8
  %138 = load i32*, i32** %5, align 8
  %139 = load i32, i32* @FALSE, align 4
  %140 = call i32 @gtk_widget_set_visible(i32* %138, i32 %139)
  br label %141

141:                                              ; preds = %112, %81
  %142 = load i32*, i32** %7, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %179

144:                                              ; preds = %141
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @IMPORTSSA, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %150 = load i32, i32* @TRUE, align 4
  %151 = call i32* @ghb_boolean_value(i32 %150)
  %152 = call i32 @ghb_ui_update(%struct.TYPE_6__* %149, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32* %151)
  br label %158

153:                                              ; preds = %144
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %155 = load i32, i32* @TRUE, align 4
  %156 = call i32* @ghb_boolean_value(i32 %155)
  %157 = call i32 @ghb_ui_update(%struct.TYPE_6__* %154, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32* %156)
  br label %158

158:                                              ; preds = %153, %148
  %159 = load i32*, i32** %7, align 8
  %160 = call i32* @ghb_dict_get(i32* %159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  store i32* %160, i32** %6, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %162 = load i32*, i32** %6, align 8
  %163 = call i32 @ghb_ui_update(%struct.TYPE_6__* %161, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32* %162)
  %164 = load i32*, i32** %7, align 8
  %165 = call i32* @ghb_dict_get(i32* %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  store i32* %165, i32** %6, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %167 = load i32*, i32** %6, align 8
  %168 = call i32 @ghb_ui_update(%struct.TYPE_6__* %166, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32* %167)
  %169 = load i32*, i32** %7, align 8
  %170 = call i32* @ghb_dict_get(i32* %169, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  store i32* %170, i32** %6, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %172 = load i32*, i32** %6, align 8
  %173 = call i32 @ghb_ui_update(%struct.TYPE_6__* %171, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32* %172)
  %174 = load i32*, i32** %4, align 8
  %175 = call i32* @ghb_dict_get(i32* %174, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  store i32* %175, i32** %6, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %177 = load i32*, i32** %6, align 8
  %178 = call i32 @ghb_ui_update(%struct.TYPE_6__* %176, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i32* %177)
  br label %184

179:                                              ; preds = %141
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %181 = load i32, i32* @TRUE, align 4
  %182 = call i32* @ghb_boolean_value(i32 %181)
  %183 = call i32 @ghb_ui_update(%struct.TYPE_6__* %180, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i32* %182)
  br label %184

184:                                              ; preds = %179, %158
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32* @GHB_WIDGET(i32 %187, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  store i32* %188, i32** %5, align 8
  %189 = load i32*, i32** %5, align 8
  %190 = load i32, i32* %11, align 4
  %191 = call i64 @hb_subtitle_can_burn(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %184
  %194 = load i32, i32* %11, align 4
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @hb_subtitle_can_pass(i32 %194, i32 %197)
  %199 = icmp ne i32 %198, 0
  br label %200

200:                                              ; preds = %193, %184
  %201 = phi i1 [ false, %184 ], [ %199, %193 ]
  %202 = zext i1 %201 to i32
  %203 = call i32 @gtk_widget_set_sensitive(i32* %189, i32 %202)
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32* @GHB_WIDGET(i32 %206, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  store i32* %207, i32** %5, align 8
  %208 = load i32*, i32** %5, align 8
  %209 = load i32, i32* %11, align 4
  %210 = call i32 @hb_subtitle_can_force(i32 %209)
  %211 = call i32 @gtk_widget_set_sensitive(i32* %208, i32 %210)
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32* @GHB_WIDGET(i32 %214, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0))
  store i32* %215, i32** %5, align 8
  %216 = load i32*, i32** %5, align 8
  %217 = load i32, i32* %11, align 4
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @hb_subtitle_can_pass(i32 %217, i32 %220)
  %222 = call i32 @gtk_widget_set_sensitive(i32* %216, i32 %221)
  %223 = load i32*, i32** %4, align 8
  %224 = call i32 @ghb_dict_get_bool(i32* %223, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  store i32 %224, i32* %8, align 4
  %225 = load i32*, i32** %4, align 8
  %226 = call i32 @ghb_dict_get_bool(i32* %225, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  store i32 %226, i32* %9, align 4
  %227 = load i32*, i32** %4, align 8
  %228 = call i32 @ghb_dict_get_bool(i32* %227, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0))
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %11, align 4
  %230 = call i64 @hb_subtitle_can_burn(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %200
  %233 = load i32, i32* @FALSE, align 4
  store i32 %233, i32* %8, align 4
  br label %234

234:                                              ; preds = %232, %200
  %235 = load i32, i32* %11, align 4
  %236 = call i32 @hb_subtitle_can_force(i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %234
  %239 = load i32, i32* @FALSE, align 4
  store i32 %239, i32* %9, align 4
  br label %240

240:                                              ; preds = %238, %234
  %241 = load i32, i32* %11, align 4
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @hb_subtitle_can_pass(i32 %241, i32 %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %240
  %248 = load i32, i32* @FALSE, align 4
  store i32 %248, i32* %10, align 4
  %249 = load i32, i32* @TRUE, align 4
  store i32 %249, i32* %8, align 4
  br label %250

250:                                              ; preds = %247, %240
  %251 = load i32*, i32** %4, align 8
  %252 = load i32, i32* %8, align 4
  %253 = call i32 @ghb_dict_set_bool(i32* %251, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 %252)
  %254 = load i32*, i32** %4, align 8
  %255 = load i32, i32* %9, align 4
  %256 = call i32 @ghb_dict_set_bool(i32* %254, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i32 %255)
  %257 = load i32*, i32** %4, align 8
  %258 = load i32, i32* %10, align 4
  %259 = call i32 @ghb_dict_set_bool(i32* %257, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i32 %258)
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %261 = load i32, i32* %8, align 4
  %262 = call i32* @ghb_boolean_value(i32 %261)
  %263 = call i32 @ghb_ui_update(%struct.TYPE_6__* %260, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32* %262)
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %265 = load i32, i32* %9, align 4
  %266 = call i32* @ghb_boolean_value(i32 %265)
  %267 = call i32 @ghb_ui_update(%struct.TYPE_6__* %264, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32* %266)
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %269 = load i32, i32* %10, align 4
  %270 = call i32* @ghb_boolean_value(i32 %269)
  %271 = call i32 @ghb_ui_update(%struct.TYPE_6__* %268, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32* %270)
  br label %294

272:                                              ; preds = %2
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32* @GHB_WIDGET(i32 %275, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store i32* %276, i32** %5, align 8
  %277 = load i32*, i32** %5, align 8
  %278 = load i32, i32* @FALSE, align 4
  %279 = call i32 @gtk_widget_set_visible(i32* %277, i32 %278)
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32* @GHB_WIDGET(i32 %282, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  store i32* %283, i32** %5, align 8
  %284 = load i32*, i32** %5, align 8
  %285 = load i32, i32* @TRUE, align 4
  %286 = call i32 @gtk_widget_set_visible(i32* %284, i32 %285)
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call i32* @GHB_WIDGET(i32 %289, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i32* %290, i32** %5, align 8
  %291 = load i32*, i32** %5, align 8
  %292 = load i32, i32* @TRUE, align 4
  %293 = call i32 @gtk_widget_set_visible(i32* %291, i32 %292)
  br label %294

294:                                              ; preds = %272, %250
  ret void
}

declare dso_local i8* @ghb_dict_get_string(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @ghb_lookup_container_by_name(i8*) #1

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i32 @get_sub_source(i32, i32*) #1

declare dso_local i32* @ghb_dict_get_value(i32*, i8*) #1

declare dso_local i32 @ghb_ui_update(%struct.TYPE_6__*, i8*, i32*) #1

declare dso_local i32* @ghb_string_value(i8*) #1

declare dso_local i32* @GHB_WIDGET(i32, i8*) #1

declare dso_local i32 @gtk_widget_set_visible(i32*, i32) #1

declare dso_local i32* @ghb_boolean_value(i32) #1

declare dso_local i32 @gtk_widget_set_sensitive(i32*, i32) #1

declare dso_local i64 @hb_subtitle_can_burn(i32) #1

declare dso_local i32 @hb_subtitle_can_pass(i32, i32) #1

declare dso_local i32 @hb_subtitle_can_force(i32) #1

declare dso_local i32 @ghb_dict_get_bool(i32*, i8*) #1

declare dso_local i32 @ghb_dict_set_bool(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
