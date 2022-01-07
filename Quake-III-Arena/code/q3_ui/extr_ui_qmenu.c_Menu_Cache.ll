; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_qmenu.c_Menu_Cache.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_qmenu.c_Menu_Cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_3__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"gfx/2d/bigchars\00", align 1
@uis = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"menu/art/font1_prop.tga\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"menu/art/font1_prop_glo.tga\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"menu/art/font2_prop.tga\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"menu/art/3_cursor2\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"menu/art/switch_on\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"menu/art/switch_off\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@GLHW_RAGEPRO = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"menubackRagePro\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"menuback\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"menubacknologo\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"sound/misc/menu1.wav\00", align 1
@qfalse = common dso_local global i32 0, align 4
@menu_in_sound = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [21 x i8] c"sound/misc/menu2.wav\00", align 1
@menu_move_sound = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [21 x i8] c"sound/misc/menu3.wav\00", align 1
@menu_out_sound = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [21 x i8] c"sound/misc/menu4.wav\00", align 1
@menu_buzz_sound = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [25 x i8] c"sound/weapons/change.wav\00", align 1
@weaponChangeSound = common dso_local global i8* null, align 8
@menu_null_sound = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"menu/art/slider2\00", align 1
@sliderBar = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [22 x i8] c"menu/art/sliderbutt_0\00", align 1
@sliderButton_0 = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [22 x i8] c"menu/art/sliderbutt_1\00", align 1
@sliderButton_1 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Menu_Cache() #0 {
  %1 = call i8* @trap_R_RegisterShaderNoMip(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %1, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uis, i32 0, i32 10), align 8
  %2 = call i8* @trap_R_RegisterShaderNoMip(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i8* %2, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uis, i32 0, i32 9), align 8
  %3 = call i8* @trap_R_RegisterShaderNoMip(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uis, i32 0, i32 8), align 8
  %4 = call i8* @trap_R_RegisterShaderNoMip(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i8* %4, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uis, i32 0, i32 7), align 8
  %5 = call i8* @trap_R_RegisterShaderNoMip(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i8* %5, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uis, i32 0, i32 6), align 8
  %6 = call i8* @trap_R_RegisterShaderNoMip(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i8* %6, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uis, i32 0, i32 5), align 8
  %7 = call i8* @trap_R_RegisterShaderNoMip(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uis, i32 0, i32 4), align 8
  %8 = call i8* @trap_R_RegisterShaderNoMip(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  store i8* %8, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uis, i32 0, i32 3), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uis, i32 0, i32 2, i32 0), align 8
  %10 = load i64, i64* @GLHW_RAGEPRO, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i8* @trap_R_RegisterShaderNoMip(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uis, i32 0, i32 1), align 8
  br label %16

14:                                               ; preds = %0
  %15 = call i8* @trap_R_RegisterShaderNoMip(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uis, i32 0, i32 1), align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = call i8* @trap_R_RegisterShaderNoMip(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uis, i32 0, i32 0), align 8
  %18 = load i32, i32* @qfalse, align 4
  %19 = call i8* @trap_S_RegisterSound(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %18)
  store i8* %19, i8** @menu_in_sound, align 8
  %20 = load i32, i32* @qfalse, align 4
  %21 = call i8* @trap_S_RegisterSound(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %20)
  store i8* %21, i8** @menu_move_sound, align 8
  %22 = load i32, i32* @qfalse, align 4
  %23 = call i8* @trap_S_RegisterSound(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %22)
  store i8* %23, i8** @menu_out_sound, align 8
  %24 = load i32, i32* @qfalse, align 4
  %25 = call i8* @trap_S_RegisterSound(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %24)
  store i8* %25, i8** @menu_buzz_sound, align 8
  %26 = load i32, i32* @qfalse, align 4
  %27 = call i8* @trap_S_RegisterSound(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %26)
  store i8* %27, i8** @weaponChangeSound, align 8
  store i32 -1, i32* @menu_null_sound, align 4
  %28 = call i8* @trap_R_RegisterShaderNoMip(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  store i8* %28, i8** @sliderBar, align 8
  %29 = call i8* @trap_R_RegisterShaderNoMip(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  store i8* %29, i8** @sliderButton_0, align 8
  %30 = call i8* @trap_R_RegisterShaderNoMip(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  store i8* %30, i8** @sliderButton_1, align 8
  ret void
}

declare dso_local i8* @trap_R_RegisterShaderNoMip(i8*) #1

declare dso_local i8* @trap_S_RegisterSound(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
