; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_push_dropdown_item_playlist_default_core.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_push_dropdown_item_playlist_default_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i8*, i8* }

@MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DETECT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_push_dropdown_item_playlist_default_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_push_dropdown_item_playlist_default_core(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %12, align 8
  %18 = call i32* (...) @playlist_get_cached()
  store i32* %18, i32** %13, align 8
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %14, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @core_info_get_list(%struct.TYPE_7__** %12)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32*, i32** %13, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %5
  store i32 -1, i32* %6, align 4
  br label %95

31:                                               ; preds = %27
  %32 = load i8*, i8** %14, align 8
  %33 = call i64 @string_is_empty(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %14, align 8
  %37 = load i32, i32* @MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE, align 4
  %38 = call i8* @msg_hash_to_str(i32 %37)
  %39 = call i64 @string_is_equal(i8* %36, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35, %31
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @playlist_set_default_core_path(i32* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @playlist_set_default_core_name(i32* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %91

46:                                               ; preds = %35
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %15, align 8
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  br label %47

47:                                               ; preds = %79, %46
  %48 = load i64, i64* %17, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %82

53:                                               ; preds = %47
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %15, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %55 = load i64, i64* %17, align 8
  %56 = call %struct.TYPE_6__* @core_info_get(%struct.TYPE_7__* %54, i64 %55)
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %15, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %58 = icmp ne %struct.TYPE_6__* %57, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %53
  %60 = load i8*, i8** %14, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @string_is_equal(i8* %60, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %59
  %67 = load i32*, i32** %13, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @playlist_set_default_core_path(i32* %67, i8* %70)
  %72 = load i32*, i32** %13, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @playlist_set_default_core_name(i32* %72, i8* %75)
  store i32 1, i32* %16, align 4
  br label %82

77:                                               ; preds = %59
  br label %78

78:                                               ; preds = %77, %53
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %17, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %17, align 8
  br label %47

82:                                               ; preds = %66, %47
  %83 = load i32, i32* %16, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = load i32*, i32** %13, align 8
  %87 = call i32 @playlist_set_default_core_path(i32* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 @playlist_set_default_core_name(i32* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %85, %82
  br label %91

91:                                               ; preds = %90, %41
  %92 = load i32*, i32** %13, align 8
  %93 = call i32 @playlist_write_file(i32* %92)
  %94 = call i32 @action_cancel_pop_default(i32* null, i32* null, i32 0, i32 0)
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %91, %30
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32* @playlist_get_cached(...) #1

declare dso_local i32 @core_info_get_list(%struct.TYPE_7__**) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @playlist_set_default_core_path(i32*, i8*) #1

declare dso_local i32 @playlist_set_default_core_name(i32*, i8*) #1

declare dso_local %struct.TYPE_6__* @core_info_get(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @playlist_write_file(i32*) #1

declare dso_local i32 @action_cancel_pop_default(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
