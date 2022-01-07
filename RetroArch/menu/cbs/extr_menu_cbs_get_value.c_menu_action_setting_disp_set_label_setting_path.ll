; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_get_value.c_menu_action_setting_disp_set_label_setting_path.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_get_value.c_menu_action_setting_disp_set_label_setting_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32*, i32, i32, i8*, i8*, i64, i8*, i8*, i64)* @menu_action_setting_disp_set_label_setting_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_action_setting_disp_set_label_setting_path(%struct.TYPE_12__* %0, i32* %1, i32 %2, i32 %3, i8* %4, i8* %5, i64 %6, i8* %7, i8* %8, i64 %9) #0 {
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_11__*, align 8
  %22 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i64 %9, i64* %20, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load i32, i32* %14, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_11__* @menu_setting_find(i32 %30)
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %21, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %33 = icmp ne %struct.TYPE_11__* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %10
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @path_basename(i32 %39)
  br label %42

41:                                               ; preds = %10
  br label %42

42:                                               ; preds = %41, %34
  %43 = phi i8* [ %40, %34 ], [ null, %41 ]
  store i8* %43, i8** %22, align 8
  %44 = load i32*, i32** %12, align 8
  store i32 19, i32* %44, align 4
  %45 = load i8*, i8** %22, align 8
  %46 = call i32 @string_is_empty(i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** %16, align 8
  %50 = load i8*, i8** %22, align 8
  %51 = load i64, i64* %17, align 8
  %52 = call i32 @strlcpy(i8* %49, i8* %50, i64 %51)
  br label %53

53:                                               ; preds = %48, %42
  %54 = load i8*, i8** %19, align 8
  %55 = load i8*, i8** %18, align 8
  %56 = load i64, i64* %20, align 8
  %57 = call i32 @strlcpy(i8* %54, i8* %55, i64 %56)
  ret void
}

declare dso_local %struct.TYPE_11__* @menu_setting_find(i32) #1

declare dso_local i8* @path_basename(i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
