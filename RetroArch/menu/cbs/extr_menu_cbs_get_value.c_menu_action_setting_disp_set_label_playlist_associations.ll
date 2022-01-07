; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_get_value.c_menu_action_setting_disp_set_label_playlist_associations.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_get_value.c_menu_action_setting_disp_set_label_playlist_associations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DETECT\00", align 1
@MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i8*, i8*, i64, i8*, i8*, i64)* @menu_action_setting_disp_set_label_playlist_associations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_action_setting_disp_set_label_playlist_associations(i32* %0, i32* %1, i32 %2, i32 %3, i8* %4, i8* %5, i64 %6, i8* %7, i8* %8, i64 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i64 %9, i64* %20, align 8
  %23 = call i32* (...) @playlist_get_cached()
  store i32* %23, i32** %21, align 8
  store i8* null, i8** %22, align 8
  %24 = load i8*, i8** %16, align 8
  store i8 0, i8* %24, align 1
  %25 = load i32*, i32** %12, align 8
  store i32 19, i32* %25, align 4
  %26 = load i8*, i8** %19, align 8
  %27 = load i8*, i8** %18, align 8
  %28 = load i64, i64* %20, align 8
  %29 = call i32 @strlcpy(i8* %26, i8* %27, i64 %28)
  %30 = load i32*, i32** %21, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %10
  br label %54

33:                                               ; preds = %10
  %34 = load i32*, i32** %21, align 8
  %35 = call i8* @playlist_get_default_core_name(i32* %34)
  store i8* %35, i8** %22, align 8
  %36 = load i8*, i8** %22, align 8
  %37 = call i32 @string_is_empty(i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %33
  %40 = load i8*, i8** %22, align 8
  %41 = call i32 @string_is_equal(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %16, align 8
  %45 = load i8*, i8** %22, align 8
  %46 = load i64, i64* %17, align 8
  %47 = call i32 @strlcpy(i8* %44, i8* %45, i64 %46)
  br label %54

48:                                               ; preds = %39, %33
  %49 = load i8*, i8** %16, align 8
  %50 = load i32, i32* @MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE, align 4
  %51 = call i8* @msg_hash_to_str(i32 %50)
  %52 = load i64, i64* %17, align 8
  %53 = call i32 @strlcpy(i8* %49, i8* %51, i64 %52)
  br label %54

54:                                               ; preds = %32, %48, %43
  ret void
}

declare dso_local i32* @playlist_get_cached(...) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i8* @playlist_get_default_core_name(i32*) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @string_is_equal(i8*, i8*) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
