; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_sidebar.c_ozone_init_horizontal_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_sidebar.c_ozone_init_horizontal_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i8*, i32, i32, i8*, i8*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i8* }

@MENU_ENUM_LABEL_PLAYLISTS_TAB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lpl\00", align 1
@FILE_TYPE_PLAIN = common dso_local global i32 0, align 4
@DISPLAYLIST_DATABASE_PLAYLISTS_HORIZONTAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ozone_init_horizontal_list(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %5 = call %struct.TYPE_14__* (...) @config_get_ptr()
  store %struct.TYPE_14__* %5, %struct.TYPE_14__** %4, align 8
  %6 = call i32 @menu_displaylist_info_init(%struct.TYPE_16__* %3)
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 5
  store i32 %9, i32* %10, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i8* @strdup(i8* %14)
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* @MENU_ENUM_LABEL_PLAYLISTS_TAB, align 4
  %18 = call i8* @msg_hash_to_str(i32 %17)
  %19 = call i8* @strdup(i8* %18)
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 4
  store i8* %19, i8** %20, align 8
  %21 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 3
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* @FILE_TYPE_PLAIN, align 4
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @MENU_ENUM_LABEL_PLAYLISTS_TAB, align 4
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @string_is_empty(i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @DISPLAYLIST_DATABASE_PLAYLISTS_HORIZONTAL, align 4
  %39 = call i64 @menu_displaylist_ctl(i32 %38, %struct.TYPE_16__* %3)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @menu_displaylist_process(%struct.TYPE_16__* %3)
  br label %43

43:                                               ; preds = %41, %37
  br label %44

44:                                               ; preds = %43, %32, %1
  %45 = call i32 @menu_displaylist_info_free(%struct.TYPE_16__* %3)
  ret void
}

declare dso_local %struct.TYPE_14__* @config_get_ptr(...) #1

declare dso_local i32 @menu_displaylist_info_init(%struct.TYPE_16__*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i64 @menu_displaylist_ctl(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @menu_displaylist_process(%struct.TYPE_16__*) #1

declare dso_local i32 @menu_displaylist_info_free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
