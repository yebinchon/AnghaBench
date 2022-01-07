; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_title.c_action_get_title_generic.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_title.c_action_get_title_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i8*)* @action_get_title_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_get_title_generic(i8* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.string_list*, align 8
  %10 = alloca [255 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store %struct.string_list* null, %struct.string_list** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @string_is_empty(i8* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i8*, i8** %7, align 8
  %16 = call %struct.string_list* @string_split(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.string_list* %16, %struct.string_list** %9, align 8
  br label %17

17:                                               ; preds = %14, %4
  %18 = load %struct.string_list*, %struct.string_list** %9, align 8
  %19 = icmp ne %struct.string_list* %18, null
  br i1 %19, label %20, label %55

20:                                               ; preds = %17
  %21 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %21, align 16
  %22 = load %struct.string_list*, %struct.string_list** %9, align 8
  %23 = getelementptr inbounds %struct.string_list, %struct.string_list* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  %28 = load %struct.string_list*, %struct.string_list** %9, align 8
  %29 = getelementptr inbounds %struct.string_list, %struct.string_list* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strlcpy(i8* %27, i8* %33, i64 255)
  br label %35

35:                                               ; preds = %26, %20
  %36 = load %struct.string_list*, %struct.string_list** %9, align 8
  %37 = call i32 @string_list_free(%struct.string_list* %36)
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @strlcpy(i8* %38, i8* %39, i64 %40)
  %42 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  %43 = call i32 @string_is_empty(i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %35
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @strlcat(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  %51 = call i8* @path_basename(i8* %50)
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @strlcat(i8* %49, i8* %51, i64 %52)
  br label %54

54:                                               ; preds = %45, %35
  br label %61

55:                                               ; preds = %17
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* @MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE, align 4
  %58 = call i8* @msg_hash_to_str(i32 %57)
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @strlcpy(i8* %56, i8* %58, i64 %59)
  br label %61

61:                                               ; preds = %55, %54
  ret i32 0
}

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local %struct.string_list* @string_split(i8*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i8* @path_basename(i8*) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
