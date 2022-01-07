; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_title.c_action_get_title_deferred_playlist_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_title.c_action_get_title_deferred_playlist_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"lpl\00", align 1
@FILE_PATH_CONTENT_HISTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_HISTORY_TAB = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_FAVORITES = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_FAVORITES_TAB = common dso_local global i32 0, align 4
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8*, i64)* @action_get_title_deferred_playlist_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_get_title_deferred_playlist_list(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* null, i8** %12, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @string_is_empty(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %76

19:                                               ; preds = %5
  %20 = load i8*, i8** %7, align 8
  %21 = call i8* @path_basename(i8* %20)
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = call i64 @string_is_empty(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %76

26:                                               ; preds = %19
  %27 = load i8*, i8** %12, align 8
  %28 = call i32 @path_get_extension(i8* %27)
  %29 = call i64 @string_is_equal_noncase(i32 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %26
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* @FILE_PATH_CONTENT_HISTORY, align 4
  %34 = call i32 @file_path_str(i32 %33)
  %35 = call i64 @string_is_equal(i8* %32, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* @MENU_ENUM_LABEL_VALUE_HISTORY_TAB, align 4
  %40 = call i8* @msg_hash_to_str(i32 %39)
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @strlcpy(i8* %38, i8* %40, i64 %41)
  br label %69

43:                                               ; preds = %31
  %44 = load i8*, i8** %12, align 8
  %45 = load i32, i32* @FILE_PATH_CONTENT_FAVORITES, align 4
  %46 = call i32 @file_path_str(i32 %45)
  %47 = call i64 @string_is_equal(i8* %44, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* @MENU_ENUM_LABEL_VALUE_FAVORITES_TAB, align 4
  %52 = call i8* @msg_hash_to_str(i32 %51)
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @strlcpy(i8* %50, i8* %52, i64 %53)
  br label %68

55:                                               ; preds = %43
  %56 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %57 = zext i32 %56 to i64
  %58 = call i8* @llvm.stacksave()
  store i8* %58, i8** %13, align 8
  %59 = alloca i8, i64 %57, align 16
  store i64 %57, i64* %14, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  store i8 0, i8* %60, align 16
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @strlcpy(i8* %59, i8* %61, i64 %57)
  %63 = call i32 @path_remove_extension(i8* %59)
  %64 = load i8*, i8** %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @strlcpy(i8* %64, i8* %59, i64 %65)
  %67 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %67)
  br label %68

68:                                               ; preds = %55, %49
  br label %69

69:                                               ; preds = %68, %37
  br label %75

70:                                               ; preds = %26
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @strlcpy(i8* %71, i8* %72, i64 %73)
  br label %75

75:                                               ; preds = %70, %69
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %25, %18
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i8* @path_basename(i8*) #1

declare dso_local i64 @string_is_equal_noncase(i32, i8*) #1

declare dso_local i32 @path_get_extension(i8*) #1

declare dso_local i64 @string_is_equal(i8*, i32) #1

declare dso_local i32 @file_path_str(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @path_remove_extension(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
