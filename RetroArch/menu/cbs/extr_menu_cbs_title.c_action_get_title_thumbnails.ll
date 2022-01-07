; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_title.c_action_get_title_thumbnails.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_title.c_action_get_title_thumbnails.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"rgui\00", align 1
@MENU_ENUM_LABEL_VALUE_THUMBNAILS_RGUI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"glui\00", align 1
@MENU_ENUM_LABEL_VALUE_THUMBNAILS_MATERIALUI = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_THUMBNAILS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8*, i64)* @action_get_title_thumbnails to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_get_title_thumbnails(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = call %struct.TYPE_5__* (...) @config_get_ptr()
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %12, align 8
  store i8* null, i8** %13, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @string_is_equal(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @MENU_ENUM_LABEL_VALUE_THUMBNAILS_RGUI, align 4
  store i32 %23, i32* %14, align 4
  br label %36

24:                                               ; preds = %5
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @string_is_equal(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @MENU_ENUM_LABEL_VALUE_THUMBNAILS_MATERIALUI, align 4
  store i32 %32, i32* %14, align 4
  br label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @MENU_ENUM_LABEL_VALUE_THUMBNAILS, align 4
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %33, %31
  br label %36

36:                                               ; preds = %35, %22
  %37 = load i32, i32* %14, align 4
  %38 = call i8* @msg_hash_to_str(i32 %37)
  store i8* %38, i8** %13, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 @string_is_empty(i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %10, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @sanitize_to_string(i8* %46, i8* %47, i64 %48)
  store i32 1, i32* %6, align 4
  br label %51

50:                                               ; preds = %41, %36
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %45
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_5__* @config_get_ptr(...) #1

declare dso_local i64 @string_is_equal(i32, i8*) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @sanitize_to_string(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
