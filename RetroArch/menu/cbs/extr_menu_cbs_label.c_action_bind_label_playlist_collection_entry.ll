; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_label.c_action_bind_label_playlist_collection_entry.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_label.c_action_bind_label_playlist_collection_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"lpl\00", align 1
@FILE_PATH_CONTENT_HISTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_HISTORY_TAB = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_FAVORITES = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_FAVORITES_TAB = common dso_local global i32 0, align 4
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i8*, i8*, i64)* @action_bind_label_playlist_collection_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_bind_label_playlist_collection_entry(i32* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i8* null, i8** %16, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = call i64 @string_is_empty(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %80

23:                                               ; preds = %7
  %24 = load i8*, i8** %13, align 8
  %25 = call i8* @path_basename(i8* %24)
  store i8* %25, i8** %16, align 8
  %26 = load i8*, i8** %16, align 8
  %27 = call i64 @string_is_empty(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %80

30:                                               ; preds = %23
  %31 = load i8*, i8** %16, align 8
  %32 = call i32 @path_get_extension(i8* %31)
  %33 = call i64 @string_is_equal_noncase(i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %74

35:                                               ; preds = %30
  %36 = load i8*, i8** %16, align 8
  %37 = load i32, i32* @FILE_PATH_CONTENT_HISTORY, align 4
  %38 = call i32 @file_path_str(i32 %37)
  %39 = call i64 @string_is_equal(i8* %36, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i8*, i8** %14, align 8
  %43 = load i32, i32* @MENU_ENUM_LABEL_VALUE_HISTORY_TAB, align 4
  %44 = call i8* @msg_hash_to_str(i32 %43)
  %45 = load i64, i64* %15, align 8
  %46 = call i32 @strlcpy(i8* %42, i8* %44, i64 %45)
  br label %73

47:                                               ; preds = %35
  %48 = load i8*, i8** %16, align 8
  %49 = load i32, i32* @FILE_PATH_CONTENT_FAVORITES, align 4
  %50 = call i32 @file_path_str(i32 %49)
  %51 = call i64 @string_is_equal(i8* %48, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i8*, i8** %14, align 8
  %55 = load i32, i32* @MENU_ENUM_LABEL_VALUE_FAVORITES_TAB, align 4
  %56 = call i8* @msg_hash_to_str(i32 %55)
  %57 = load i64, i64* %15, align 8
  %58 = call i32 @strlcpy(i8* %54, i8* %56, i64 %57)
  br label %72

59:                                               ; preds = %47
  %60 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %61 = zext i32 %60 to i64
  %62 = call i8* @llvm.stacksave()
  store i8* %62, i8** %17, align 8
  %63 = alloca i8, i64 %61, align 16
  store i64 %61, i64* %18, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 0, i8* %64, align 16
  %65 = load i8*, i8** %16, align 8
  %66 = call i32 @strlcpy(i8* %63, i8* %65, i64 %61)
  %67 = call i32 @path_remove_extension(i8* %63)
  %68 = load i8*, i8** %14, align 8
  %69 = load i64, i64* %15, align 8
  %70 = call i32 @strlcpy(i8* %68, i8* %63, i64 %69)
  %71 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %71)
  br label %72

72:                                               ; preds = %59, %53
  br label %73

73:                                               ; preds = %72, %41
  br label %79

74:                                               ; preds = %30
  %75 = load i8*, i8** %14, align 8
  %76 = load i8*, i8** %16, align 8
  %77 = load i64, i64* %15, align 8
  %78 = call i32 @strlcpy(i8* %75, i8* %76, i64 %77)
  br label %79

79:                                               ; preds = %74, %73
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %79, %29, %22
  %81 = load i32, i32* %8, align 4
  ret i32 %81
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
