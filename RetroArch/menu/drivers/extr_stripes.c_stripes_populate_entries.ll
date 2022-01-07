; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_populate_entries.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_populate_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }

@RARCH_MENU_CTL_IS_PREVENT_POPULATE = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_UNSET_PREVENT_POPULATE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32)* @stripes_populate_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_populate_entries(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %9, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %60

15:                                               ; preds = %4
  %16 = load i32, i32* @RARCH_MENU_CTL_IS_PREVENT_POPULATE, align 4
  %17 = call i64 @menu_driver_ctl(i32 %16, i32* null)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %21 = call i32 @stripes_selection_pointer_changed(%struct.TYPE_8__* %20, i32 0)
  %22 = load i32, i32* @RARCH_MENU_CTL_UNSET_PREVENT_POPULATE, align 4
  %23 = call i64 @menu_driver_ctl(i32 %22, i32* null)
  %24 = call i32 @stripes_thumbnails_ident(i8 signext 82)
  %25 = load i32, i32* @MENU_ENUM_LABEL_VALUE_OFF, align 4
  %26 = call i32 @msg_hash_to_str(i32 %25)
  %27 = call i32 @string_is_equal(i32 %24, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = call i32 @stripes_update_thumbnail_image(%struct.TYPE_8__* %30)
  br label %32

32:                                               ; preds = %29, %19
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = call i32 @stripes_update_savestate_thumbnail_image(%struct.TYPE_8__* %33)
  %35 = call i32 @stripes_thumbnails_ident(i8 signext 76)
  %36 = load i32, i32* @MENU_ENUM_LABEL_VALUE_OFF, align 4
  %37 = call i32 @msg_hash_to_str(i32 %36)
  %38 = call i32 @string_is_equal(i32 %35, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %42 = call i32 @stripes_update_thumbnail_image(%struct.TYPE_8__* %41)
  br label %43

43:                                               ; preds = %40, %32
  br label %60

44:                                               ; preds = %15
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %46 = call i32 @stripes_set_title(%struct.TYPE_8__* %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %56 = call i32 @stripes_list_switch(%struct.TYPE_8__* %55)
  br label %60

57:                                               ; preds = %44
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = call i32 @stripes_list_open(%struct.TYPE_8__* %58)
  br label %60

60:                                               ; preds = %14, %43, %57, %54
  ret void
}

declare dso_local i64 @menu_driver_ctl(i32, i32*) #1

declare dso_local i32 @stripes_selection_pointer_changed(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @string_is_equal(i32, i32) #1

declare dso_local i32 @stripes_thumbnails_ident(i8 signext) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @stripes_update_thumbnail_image(%struct.TYPE_8__*) #1

declare dso_local i32 @stripes_update_savestate_thumbnail_image(%struct.TYPE_8__*) #1

declare dso_local i32 @stripes_set_title(%struct.TYPE_8__*) #1

declare dso_local i32 @stripes_list_switch(%struct.TYPE_8__*) #1

declare dso_local i32 @stripes_list_open(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
