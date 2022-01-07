; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_sublabel.c_action_bind_sublabel_subsystem_add.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_sublabel.c_action_bind_sublabel_subsystem_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_subsystem_info = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.retro_subsystem_info* }

@MENU_SETTINGS_SUBSYSTEM_ADD = common dso_local global i32 0, align 4
@subsystem_data = common dso_local global %struct.retro_subsystem_info* null, align 8
@subsystem_current_count = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c" Current Content: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i8*, i8*, i64)* @action_bind_sublabel_subsystem_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_bind_sublabel_subsystem_add(i32* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca %struct.retro_subsystem_info*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %17 = call %struct.TYPE_7__* (...) @runloop_get_system_info()
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %15, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %20, align 8
  %22 = icmp ne %struct.retro_subsystem_info* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %7
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @MENU_SETTINGS_SUBSYSTEM_ADD, align 4
  %30 = sub i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %27, i64 %31
  store %struct.retro_subsystem_info* %32, %struct.retro_subsystem_info** %16, align 8
  br label %40

33:                                               ; preds = %7
  %34 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** @subsystem_data, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @MENU_SETTINGS_SUBSYSTEM_ADD, align 4
  %37 = sub i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %34, i64 %38
  store %struct.retro_subsystem_info* %39, %struct.retro_subsystem_info** %16, align 8
  br label %40

40:                                               ; preds = %33, %23
  %41 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %16, align 8
  %42 = icmp ne %struct.retro_subsystem_info* %41, null
  br i1 %42, label %43, label %79

43:                                               ; preds = %40
  %44 = load i64, i64* @subsystem_current_count, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %79

46:                                               ; preds = %43
  %47 = call i64 (...) @content_get_subsystem_rom_id()
  %48 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %16, align 8
  %49 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %46
  %53 = load i8*, i8** %13, align 8
  %54 = load i64, i64* %14, align 8
  %55 = call i32 (...) @content_get_subsystem()
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @MENU_SETTINGS_SUBSYSTEM_ADD, align 4
  %58 = sub i32 %56, %57
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %52
  %61 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %16, align 8
  %62 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i64 (...) @content_get_subsystem_rom_id()
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  br label %75

68:                                               ; preds = %52
  %69 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %16, align 8
  %70 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  br label %75

75:                                               ; preds = %68, %60
  %76 = phi i8* [ %67, %60 ], [ %74, %68 ]
  %77 = call i32 @snprintf(i8* %53, i64 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %75, %46
  br label %79

79:                                               ; preds = %78, %43, %40
  ret i32 0
}

declare dso_local %struct.TYPE_7__* @runloop_get_system_info(...) #1

declare dso_local i64 @content_get_subsystem_rom_id(...) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @content_get_subsystem(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
