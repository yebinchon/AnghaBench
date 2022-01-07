; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_mh_saveloadcfg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_mh_saveloadcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PBTN_LEFT = common dso_local global i32 0, align 4
@PBTN_RIGHT = common dso_local global i32 0, align 4
@config_slot = common dso_local global i32 0, align 4
@e_menu_options = common dso_local global i32 0, align 4
@config_slot_current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"config saved\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to write config\00", align 1
@rom_fname_loaded = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"config loaded\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"failed to load config\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mh_saveloadcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mh_saveloadcfg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @PBTN_LEFT, align 4
  %9 = load i32, i32* @PBTN_RIGHT, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %7, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PBTN_LEFT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 -1, i32 1
  %20 = load i32, i32* @config_slot, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* @config_slot, align 4
  %22 = load i32, i32* @config_slot, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store i32 9, i32* @config_slot, align 4
  br label %30

25:                                               ; preds = %13
  %26 = load i32, i32* @config_slot, align 4
  %27 = icmp sgt i32 %26, 9
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* @config_slot, align 4
  br label %29

29:                                               ; preds = %28, %25
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i32, i32* @e_menu_options, align 4
  %32 = load i32, i32* @config_slot, align 4
  %33 = load i32, i32* @config_slot_current, align 4
  %34 = icmp ne i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @me_enable(i32 %31, i32 130, i32 %35)
  store i32 0, i32* %3, align 4
  br label %68

37:                                               ; preds = %2
  %38 = load i32, i32* %4, align 4
  switch i32 %38, label %66 [
    i32 129, label %39
    i32 128, label %39
    i32 130, label %51
  ]

39:                                               ; preds = %37, %37
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 128
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  %44 = call i32 @emu_write_config(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = call i32 @menu_update_msg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %50

48:                                               ; preds = %39
  %49 = call i32 @menu_update_msg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %46
  br label %67

51:                                               ; preds = %37
  %52 = load i32*, i32** @rom_fname_loaded, align 8
  %53 = call i32 @emu_read_config(i32* %52, i32 1)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = call i32 @emu_read_config(i32* null, i32 1)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %51
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @menu_update_msg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %65

63:                                               ; preds = %58
  %64 = call i32 @menu_update_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %61
  br label %67

66:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %68

67:                                               ; preds = %65, %50
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %66, %30
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @me_enable(i32, i32, i32) #1

declare dso_local i32 @emu_write_config(i32) #1

declare dso_local i32 @menu_update_msg(i8*) #1

declare dso_local i32 @emu_read_config(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
