; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_init_horizontal_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_init_horizontal_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i8*, i32, i8*, i32, i8*, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"lpl\00", align 1
@FILE_TYPE_PLAIN = common dso_local global i32 0, align 4
@DISPLAYLIST_DATABASE_PLAYLISTS_HORIZONTAL = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CONTENT_COLLECTION_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @stripes_init_horizontal_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_init_horizontal_list(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_17__, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %6 = call %struct.TYPE_16__* (...) @config_get_ptr()
  store %struct.TYPE_16__* %6, %struct.TYPE_16__** %4, align 8
  %7 = call i32 @menu_displaylist_info_init(%struct.TYPE_17__* %3)
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 5
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %11, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i8* @strdup(i8* %15)
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* @FILE_TYPE_PLAIN, align 4
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @string_is_empty(i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %50, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @DISPLAYLIST_DATABASE_PLAYLISTS_HORIZONTAL, align 4
  %28 = call i64 @menu_displaylist_ctl(i32 %27, %struct.TYPE_17__* %3)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  store i64 0, i64* %5, align 8
  br label %31

31:                                               ; preds = %44, %30
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %32, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %41 = load i64, i64* %5, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @stripes_node_allocate_userdata(%struct.TYPE_15__* %40, i32 %42)
  br label %44

44:                                               ; preds = %39
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %31

47:                                               ; preds = %31
  %48 = call i32 @menu_displaylist_process(%struct.TYPE_17__* %3)
  br label %49

49:                                               ; preds = %47, %26
  br label %50

50:                                               ; preds = %49, %1
  %51 = call i32 @menu_displaylist_info_free(%struct.TYPE_17__* %3)
  ret void
}

declare dso_local %struct.TYPE_16__* @config_get_ptr(...) #1

declare dso_local i32 @menu_displaylist_info_init(%struct.TYPE_17__*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i64 @menu_displaylist_ctl(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @stripes_node_allocate_userdata(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @menu_displaylist_process(%struct.TYPE_17__*) #1

declare dso_local i32 @menu_displaylist_info_free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
