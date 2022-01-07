; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuitransfer.c_yui_transfer_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuitransfer.c_yui_transfer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__* }

@.str = private unnamed_addr constant [14 x i8] c"File transfer\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"File\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@yui_transfer_check = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"Browse\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@yui_transfer_browse = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Load as executable\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@yui_transfer_load_exec = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"Load\00", align 1
@yui_transfer_load = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"Store\00", align 1
@yui_transfer_store = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"From\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"To\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Transfer\00", align 1
@yui_transfer_exec = common dso_local global i32 0, align 4
@GTK_CAN_DEFAULT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@gtk_widget_destroy = common dso_local global i32 0, align 4
@YUI_TRANSFER_LOAD_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*)* @yui_transfer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_transfer_init(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  store i32* null, i32** %12, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %18 = call i32 @GTK_WINDOW(%struct.TYPE_23__* %17)
  %19 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @gtk_window_set_title(i32 %18, i8* %19)
  %21 = load i32, i32* @FALSE, align 4
  %22 = call %struct.TYPE_23__* @gtk_vbox_new(i32 %21, i32 0)
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %3, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %24 = call i32 @GTK_CONTAINER(%struct.TYPE_23__* %23)
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %26 = call i32 @gtk_container_add(i32 %24, %struct.TYPE_23__* %25)
  %27 = load i32, i32* @FALSE, align 4
  %28 = call %struct.TYPE_23__* @gtk_hbox_new(i32 %27, i32 10)
  store %struct.TYPE_23__* %28, %struct.TYPE_23__** %4, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %30 = call i32 @GTK_BOX(%struct.TYPE_23__* %29)
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %32 = load i32, i32* @FALSE, align 4
  %33 = load i32, i32* @TRUE, align 4
  %34 = call i32 @gtk_box_pack_start(i32 %30, %struct.TYPE_23__* %31, i32 %32, i32 %33, i32 0)
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %36 = call i32 @GTK_CONTAINER(%struct.TYPE_23__* %35)
  %37 = call i32 @gtk_container_set_border_width(i32 %36, i32 10)
  %38 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %38, i8** %16, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = call i8* @gtk_label_new(i8* %39)
  %41 = bitcast i8* %40 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %41, %struct.TYPE_23__** %5, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %43 = call i32 @GTK_BOX(%struct.TYPE_23__* %42)
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %45 = load i32, i32* @FALSE, align 4
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i32 @gtk_box_pack_start(i32 %43, %struct.TYPE_23__* %44, i32 %45, i32 %46, i32 0)
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %49 = call i32 @GTK_MISC(%struct.TYPE_23__* %48)
  %50 = call i32 @gtk_misc_set_alignment(i32 %49, i32 0, double 5.000000e-01)
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %52 = call i32 @GTK_LABEL(%struct.TYPE_23__* %51)
  %53 = load i8*, i8** %16, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = call i32 @gtk_label_set_width_chars(i32 %52, i32 %54)
  %56 = call i8* (...) @gtk_entry_new()
  %57 = bitcast i8* %56 to %struct.TYPE_23__*
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 5
  store %struct.TYPE_23__* %57, %struct.TYPE_23__** %59, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 5
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %61, align 8
  %63 = load i32, i32* @yui_transfer_check, align 4
  %64 = call i32 @G_CALLBACK(i32 %63)
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %66 = call i32 @g_signal_connect_swapped(%struct.TYPE_23__* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %64, %struct.TYPE_23__* %65)
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %68 = call i32 @GTK_BOX(%struct.TYPE_23__* %67)
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 5
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %70, align 8
  %72 = load i32, i32* @TRUE, align 4
  %73 = load i32, i32* @TRUE, align 4
  %74 = call i32 @gtk_box_pack_start(i32 %68, %struct.TYPE_23__* %71, i32 %72, i32 %73, i32 0)
  %75 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %76 = call i8* @gtk_button_new_with_mnemonic(i8* %75)
  %77 = bitcast i8* %76 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %77, %struct.TYPE_23__** %6, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %79 = load i32, i32* @yui_transfer_browse, align 4
  %80 = call i32 @G_CALLBACK(i32 %79)
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %82, align 8
  %84 = call i32 @g_signal_connect(%struct.TYPE_23__* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %80, %struct.TYPE_23__* %83)
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %86 = call i32 @GTK_BOX(%struct.TYPE_23__* %85)
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %88 = load i32, i32* @FALSE, align 4
  %89 = load i32, i32* @FALSE, align 4
  %90 = call i32 @gtk_box_pack_start(i32 %86, %struct.TYPE_23__* %87, i32 %88, i32 %89, i32 0)
  %91 = load i32, i32* @FALSE, align 4
  %92 = call %struct.TYPE_23__* @gtk_hbox_new(i32 %91, i32 10)
  store %struct.TYPE_23__* %92, %struct.TYPE_23__** %11, align 8
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %94 = call i32 @GTK_BOX(%struct.TYPE_23__* %93)
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %96 = load i32, i32* @FALSE, align 4
  %97 = load i32, i32* @FALSE, align 4
  %98 = call i32 @gtk_box_pack_start(i32 %94, %struct.TYPE_23__* %95, i32 %96, i32 %97, i32 0)
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %100 = call i32 @GTK_CONTAINER(%struct.TYPE_23__* %99)
  %101 = call i32 @gtk_container_set_border_width(i32 %100, i32 10)
  %102 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %103 = call %struct.TYPE_23__* @gtk_radio_button_new_with_mnemonic(i32* null, i8* %102)
  store %struct.TYPE_23__* %103, %struct.TYPE_23__** %13, align 8
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %105 = load i32, i32* @yui_transfer_load_exec, align 4
  %106 = call i32 @G_CALLBACK(i32 %105)
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %108 = call i32 @g_signal_connect(%struct.TYPE_23__* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %106, %struct.TYPE_23__* %107)
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %110 = call i32 @GTK_BOX(%struct.TYPE_23__* %109)
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %112 = load i32, i32* @FALSE, align 4
  %113 = load i32, i32* @FALSE, align 4
  %114 = call i32 @gtk_box_pack_start(i32 %110, %struct.TYPE_23__* %111, i32 %112, i32 %113, i32 0)
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %116 = call i32 @GTK_RADIO_BUTTON(%struct.TYPE_23__* %115)
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @gtk_radio_button_set_group(i32 %116, i32* %117)
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %120 = call i32 @GTK_RADIO_BUTTON(%struct.TYPE_23__* %119)
  %121 = call i32* @gtk_radio_button_get_group(i32 %120)
  store i32* %121, i32** %12, align 8
  %122 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %123 = call %struct.TYPE_23__* @gtk_radio_button_new_with_mnemonic(i32* null, i8* %122)
  store %struct.TYPE_23__* %123, %struct.TYPE_23__** %14, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %125 = load i32, i32* @yui_transfer_load, align 4
  %126 = call i32 @G_CALLBACK(i32 %125)
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %128 = call i32 @g_signal_connect(%struct.TYPE_23__* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %126, %struct.TYPE_23__* %127)
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %130 = call i32 @GTK_BOX(%struct.TYPE_23__* %129)
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %132 = load i32, i32* @FALSE, align 4
  %133 = load i32, i32* @FALSE, align 4
  %134 = call i32 @gtk_box_pack_start(i32 %130, %struct.TYPE_23__* %131, i32 %132, i32 %133, i32 0)
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %136 = call i32 @GTK_RADIO_BUTTON(%struct.TYPE_23__* %135)
  %137 = load i32*, i32** %12, align 8
  %138 = call i32 @gtk_radio_button_set_group(i32 %136, i32* %137)
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %140 = call i32 @GTK_RADIO_BUTTON(%struct.TYPE_23__* %139)
  %141 = call i32* @gtk_radio_button_get_group(i32 %140)
  store i32* %141, i32** %12, align 8
  %142 = call i8* @_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %143 = call %struct.TYPE_23__* @gtk_radio_button_new_with_mnemonic(i32* null, i8* %142)
  store %struct.TYPE_23__* %143, %struct.TYPE_23__** %15, align 8
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %145 = load i32, i32* @yui_transfer_store, align 4
  %146 = call i32 @G_CALLBACK(i32 %145)
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %148 = call i32 @g_signal_connect(%struct.TYPE_23__* %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %146, %struct.TYPE_23__* %147)
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %150 = call i32 @GTK_BOX(%struct.TYPE_23__* %149)
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %152 = load i32, i32* @FALSE, align 4
  %153 = load i32, i32* @FALSE, align 4
  %154 = call i32 @gtk_box_pack_start(i32 %150, %struct.TYPE_23__* %151, i32 %152, i32 %153, i32 0)
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %156 = call i32 @GTK_RADIO_BUTTON(%struct.TYPE_23__* %155)
  %157 = load i32*, i32** %12, align 8
  %158 = call i32 @gtk_radio_button_set_group(i32 %156, i32* %157)
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %160 = call i32 @GTK_RADIO_BUTTON(%struct.TYPE_23__* %159)
  %161 = call i32* @gtk_radio_button_get_group(i32 %160)
  store i32* %161, i32** %12, align 8
  %162 = load i32, i32* @FALSE, align 4
  %163 = call %struct.TYPE_23__* @gtk_hbox_new(i32 %162, i32 10)
  store %struct.TYPE_23__* %163, %struct.TYPE_23__** %7, align 8
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %165 = call i32 @GTK_BOX(%struct.TYPE_23__* %164)
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %167 = load i32, i32* @FALSE, align 4
  %168 = load i32, i32* @TRUE, align 4
  %169 = call i32 @gtk_box_pack_start(i32 %165, %struct.TYPE_23__* %166, i32 %167, i32 %168, i32 0)
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %171 = call i32 @GTK_CONTAINER(%struct.TYPE_23__* %170)
  %172 = call i32 @gtk_container_set_border_width(i32 %171, i32 10)
  %173 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store i8* %173, i8** %16, align 8
  %174 = load i8*, i8** %16, align 8
  %175 = call i8* @gtk_label_new(i8* %174)
  %176 = bitcast i8* %175 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %176, %struct.TYPE_23__** %8, align 8
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %178 = call i32 @GTK_BOX(%struct.TYPE_23__* %177)
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %180 = load i32, i32* @FALSE, align 4
  %181 = load i32, i32* @FALSE, align 4
  %182 = call i32 @gtk_box_pack_start(i32 %178, %struct.TYPE_23__* %179, i32 %180, i32 %181, i32 0)
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %184 = call i32 @GTK_MISC(%struct.TYPE_23__* %183)
  %185 = call i32 @gtk_misc_set_alignment(i32 %184, i32 0, double 5.000000e-01)
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %187 = call i32 @GTK_LABEL(%struct.TYPE_23__* %186)
  %188 = load i8*, i8** %16, align 8
  %189 = call i32 @strlen(i8* %188)
  %190 = call i32 @gtk_label_set_width_chars(i32 %187, i32 %189)
  %191 = call i8* (...) @gtk_entry_new()
  %192 = bitcast i8* %191 to %struct.TYPE_23__*
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 4
  store %struct.TYPE_23__* %192, %struct.TYPE_23__** %194, align 8
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 4
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %196, align 8
  %198 = load i32, i32* @yui_transfer_check, align 4
  %199 = call i32 @G_CALLBACK(i32 %198)
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %201 = call i32 @g_signal_connect_swapped(%struct.TYPE_23__* %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %199, %struct.TYPE_23__* %200)
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %203 = call i32 @GTK_BOX(%struct.TYPE_23__* %202)
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 4
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %205, align 8
  %207 = load i32, i32* @TRUE, align 4
  %208 = load i32, i32* @TRUE, align 4
  %209 = call i32 @gtk_box_pack_start(i32 %203, %struct.TYPE_23__* %206, i32 %207, i32 %208, i32 0)
  %210 = call i8* @_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i8* %210, i8** %16, align 8
  %211 = load i8*, i8** %16, align 8
  %212 = call i8* @gtk_label_new(i8* %211)
  %213 = bitcast i8* %212 to %struct.TYPE_23__*
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 2
  store %struct.TYPE_23__* %213, %struct.TYPE_23__** %215, align 8
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %217 = call i32 @GTK_BOX(%struct.TYPE_23__* %216)
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %219, align 8
  %221 = load i32, i32* @FALSE, align 4
  %222 = load i32, i32* @FALSE, align 4
  %223 = call i32 @gtk_box_pack_start(i32 %217, %struct.TYPE_23__* %220, i32 %221, i32 %222, i32 0)
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %225, align 8
  %227 = call i32 @GTK_MISC(%struct.TYPE_23__* %226)
  %228 = call i32 @gtk_misc_set_alignment(i32 %227, i32 0, double 5.000000e-01)
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %230, align 8
  %232 = call i32 @GTK_LABEL(%struct.TYPE_23__* %231)
  %233 = load i8*, i8** %16, align 8
  %234 = call i32 @strlen(i8* %233)
  %235 = call i32 @gtk_label_set_width_chars(i32 %232, i32 %234)
  %236 = call i8* (...) @gtk_entry_new()
  %237 = bitcast i8* %236 to %struct.TYPE_23__*
  %238 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %238, i32 0, i32 1
  store %struct.TYPE_23__* %237, %struct.TYPE_23__** %239, align 8
  %240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %241, align 8
  %243 = load i32, i32* @yui_transfer_check, align 4
  %244 = call i32 @G_CALLBACK(i32 %243)
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %246 = call i32 @g_signal_connect_swapped(%struct.TYPE_23__* %242, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %244, %struct.TYPE_23__* %245)
  %247 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %248 = call i32 @GTK_BOX(%struct.TYPE_23__* %247)
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %250, align 8
  %252 = load i32, i32* @TRUE, align 4
  %253 = load i32, i32* @TRUE, align 4
  %254 = call i32 @gtk_box_pack_start(i32 %248, %struct.TYPE_23__* %251, i32 %252, i32 %253, i32 0)
  %255 = call %struct.TYPE_23__* (...) @gtk_hbutton_box_new()
  store %struct.TYPE_23__* %255, %struct.TYPE_23__** %9, align 8
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %257 = call i32 @GTK_BOX(%struct.TYPE_23__* %256)
  %258 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %259 = load i32, i32* @FALSE, align 4
  %260 = load i32, i32* @TRUE, align 4
  %261 = call i32 @gtk_box_pack_start(i32 %257, %struct.TYPE_23__* %258, i32 %259, i32 %260, i32 0)
  %262 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %263 = call i32 @GTK_CONTAINER(%struct.TYPE_23__* %262)
  %264 = call i32 @gtk_container_set_border_width(i32 %263, i32 10)
  %265 = call i8* @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %266 = call i8* @gtk_button_new_with_mnemonic(i8* %265)
  %267 = bitcast i8* %266 to %struct.TYPE_23__*
  %268 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 3
  store %struct.TYPE_23__* %267, %struct.TYPE_23__** %269, align 8
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %271 = call i32 @GTK_CONTAINER(%struct.TYPE_23__* %270)
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %272, i32 0, i32 3
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %273, align 8
  %275 = call i32 @gtk_container_add(i32 %271, %struct.TYPE_23__* %274)
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 3
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %277, align 8
  %279 = load i32, i32* @yui_transfer_exec, align 4
  %280 = call i32 @G_CALLBACK(i32 %279)
  %281 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %282 = call i32 @g_signal_connect(%struct.TYPE_23__* %278, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %280, %struct.TYPE_23__* %281)
  %283 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %283, i32 0, i32 3
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %284, align 8
  %286 = load i32, i32* @GTK_CAN_DEFAULT, align 4
  %287 = call i32 @GTK_WIDGET_SET_FLAGS(%struct.TYPE_23__* %285, i32 %286)
  %288 = call %struct.TYPE_23__* @gtk_button_new_from_stock(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  store %struct.TYPE_23__* %288, %struct.TYPE_23__** %10, align 8
  %289 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %290 = call i32 @GTK_CONTAINER(%struct.TYPE_23__* %289)
  %291 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %292 = call i32 @gtk_container_add(i32 %290, %struct.TYPE_23__* %291)
  %293 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %294 = load i32, i32* @gtk_widget_destroy, align 4
  %295 = call i32 @G_CALLBACK(i32 %294)
  %296 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %297 = call i32 @g_signal_connect_swapped(%struct.TYPE_23__* %293, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %295, %struct.TYPE_23__* %296)
  %298 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %299 = load i32, i32* @GTK_CAN_DEFAULT, align 4
  %300 = call i32 @GTK_WIDGET_SET_FLAGS(%struct.TYPE_23__* %298, i32 %299)
  %301 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %302 = call i32 @GTK_WIDGET(%struct.TYPE_23__* %301)
  %303 = call i32 @gtk_widget_show_all(i32 %302)
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i32 0, i32 2
  %306 = load %struct.TYPE_23__*, %struct.TYPE_23__** %305, align 8
  %307 = call i32 @GTK_WIDGET(%struct.TYPE_23__* %306)
  %308 = load i32, i32* @FALSE, align 4
  %309 = call i32 @gtk_widget_set_sensitive(i32 %307, i32 %308)
  %310 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %310, i32 0, i32 1
  %312 = load %struct.TYPE_23__*, %struct.TYPE_23__** %311, align 8
  %313 = call i32 @GTK_WIDGET(%struct.TYPE_23__* %312)
  %314 = load i32, i32* @FALSE, align 4
  %315 = call i32 @gtk_widget_set_sensitive(i32 %313, i32 %314)
  %316 = load i32, i32* @YUI_TRANSFER_LOAD_EXEC, align 4
  %317 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %317, i32 0, i32 0
  store i32 %316, i32* %318, align 8
  ret void
}

declare dso_local i32 @gtk_window_set_title(i32, i8*) #1

declare dso_local i32 @GTK_WINDOW(%struct.TYPE_23__*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local %struct.TYPE_23__* @gtk_vbox_new(i32, i32) #1

declare dso_local i32 @gtk_container_add(i32, %struct.TYPE_23__*) #1

declare dso_local i32 @GTK_CONTAINER(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @gtk_hbox_new(i32, i32) #1

declare dso_local i32 @gtk_box_pack_start(i32, %struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @GTK_BOX(%struct.TYPE_23__*) #1

declare dso_local i32 @gtk_container_set_border_width(i32, i32) #1

declare dso_local i8* @gtk_label_new(i8*) #1

declare dso_local i32 @gtk_misc_set_alignment(i32, i32, double) #1

declare dso_local i32 @GTK_MISC(%struct.TYPE_23__*) #1

declare dso_local i32 @gtk_label_set_width_chars(i32, i32) #1

declare dso_local i32 @GTK_LABEL(%struct.TYPE_23__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @gtk_entry_new(...) #1

declare dso_local i32 @g_signal_connect_swapped(%struct.TYPE_23__*, i8*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

declare dso_local i8* @gtk_button_new_with_mnemonic(i8*) #1

declare dso_local i32 @g_signal_connect(%struct.TYPE_23__*, i8*, i32, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @gtk_radio_button_new_with_mnemonic(i32*, i8*) #1

declare dso_local i32 @gtk_radio_button_set_group(i32, i32*) #1

declare dso_local i32 @GTK_RADIO_BUTTON(%struct.TYPE_23__*) #1

declare dso_local i32* @gtk_radio_button_get_group(i32) #1

declare dso_local %struct.TYPE_23__* @gtk_hbutton_box_new(...) #1

declare dso_local i32 @GTK_WIDGET_SET_FLAGS(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_23__* @gtk_button_new_from_stock(i8*) #1

declare dso_local i32 @gtk_widget_show_all(i32) #1

declare dso_local i32 @GTK_WIDGET(%struct.TYPE_23__*) #1

declare dso_local i32 @gtk_widget_set_sensitive(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
