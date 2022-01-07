; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_init_horizontal_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_init_horizontal_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i8*, i32, i32, i8*, i8*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i8* }

@MENU_ENUM_LABEL_PLAYLISTS_TAB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lpl\00", align 1
@FILE_TYPE_PLAIN = common dso_local global i32 0, align 4
@DISPLAYLIST_DATABASE_PLAYLISTS_HORIZONTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @xmb_init_horizontal_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_init_horizontal_list(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_19__, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %6 = call %struct.TYPE_18__* (...) @config_get_ptr()
  store %struct.TYPE_18__* %6, %struct.TYPE_18__** %4, align 8
  %7 = call i32 @menu_displaylist_info_init(%struct.TYPE_19__* %3)
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 5
  store %struct.TYPE_16__* %10, %struct.TYPE_16__** %11, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i8* @strdup(i8* %15)
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* @MENU_ENUM_LABEL_PLAYLISTS_TAB, align 4
  %19 = call i8* @msg_hash_to_str(i32 %18)
  %20 = call i8* @strdup(i8* %19)
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 4
  store i8* %20, i8** %21, align 8
  %22 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 3
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* @FILE_TYPE_PLAIN, align 4
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @MENU_ENUM_LABEL_PLAYLISTS_TAB, align 4
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @string_is_empty(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %62, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @DISPLAYLIST_DATABASE_PLAYLISTS_HORIZONTAL, align 4
  %40 = call i64 @menu_displaylist_ctl(i32 %39, %struct.TYPE_19__* %3)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  store i64 0, i64* %5, align 8
  br label %43

43:                                               ; preds = %56, %42
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %44, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %53 = load i64, i64* %5, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @xmb_node_allocate_userdata(%struct.TYPE_17__* %52, i32 %54)
  br label %56

56:                                               ; preds = %51
  %57 = load i64, i64* %5, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %5, align 8
  br label %43

59:                                               ; preds = %43
  %60 = call i32 @menu_displaylist_process(%struct.TYPE_19__* %3)
  br label %61

61:                                               ; preds = %59, %38
  br label %62

62:                                               ; preds = %61, %33, %1
  %63 = call i32 @menu_displaylist_info_free(%struct.TYPE_19__* %3)
  ret void
}

declare dso_local %struct.TYPE_18__* @config_get_ptr(...) #1

declare dso_local i32 @menu_displaylist_info_init(%struct.TYPE_19__*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i64 @menu_displaylist_ctl(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @xmb_node_allocate_userdata(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @menu_displaylist_process(%struct.TYPE_19__*) #1

declare dso_local i32 @menu_displaylist_info_free(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
