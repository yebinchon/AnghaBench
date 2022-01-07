; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_context_reset_textures.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_context_reset_textures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@APPLICATION_SPECIAL_DIRECTORY_ASSETS_MATERIALUI_ICONS = common dso_local global i32 0, align 4
@MUI_TEXTURE_LAST = common dso_local global i32 0, align 4
@TEXTURE_FILTER_MIPMAP_LINEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"[GLUI] Asset missing: %s%s%s\0A\00", align 1
@MSG_MISSING_ASSETS = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @materialui_context_reset_textures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materialui_context_reset_textures(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 1, i32* %3, align 4
  %7 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 0, i8* %11, align 16
  %12 = trunc i64 %8 to i32
  %13 = load i32, i32* @APPLICATION_SPECIAL_DIRECTORY_ASSETS_MATERIALUI_ICONS, align 4
  %14 = call i32 @fill_pathname_application_special(i8* %10, i32 %12, i32 %13)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %38, %1
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MUI_TEXTURE_LAST, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @materialui_texture_path(i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* @TEXTURE_FILTER_MIPMAP_LINEAR, align 4
  %30 = call i32 @menu_display_reset_textures_list(i32 %21, i8* %10, i32* %28, i32 %29, i32* null, i32* null)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %19
  %33 = call i32 (...) @path_default_slash()
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @materialui_texture_path(i32 %34)
  %36 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %33, i32 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %19
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %15

41:                                               ; preds = %15
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @MSG_MISSING_ASSETS, align 4
  %46 = call i32 @msg_hash_to_str(i32 %45)
  %47 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %48 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %49 = call i32 @runloop_msg_queue_push(i32 %46, i32 1, i32 256, i32 0, i32* null, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %44, %41
  %51 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %51)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fill_pathname_application_special(i8*, i32, i32) #2

declare dso_local i32 @menu_display_reset_textures_list(i32, i8*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @materialui_texture_path(i32) #2

declare dso_local i32 @RARCH_WARN(i8*, i8*, i32, i32) #2

declare dso_local i32 @path_default_slash(...) #2

declare dso_local i32 @runloop_msg_queue_push(i32, i32, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @msg_hash_to_str(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
