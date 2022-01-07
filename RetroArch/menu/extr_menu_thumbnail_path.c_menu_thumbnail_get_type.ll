; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail_path.c_menu_thumbnail_get_type.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail_path.c_menu_thumbnail_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@MENU_ENUM_LABEL_VALUE_OFF = common dso_local global i32 0, align 4
@PLAYLIST_THUMBNAIL_MODE_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Named_Snaps\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Named_Titles\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Named_Boxarts\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @menu_thumbnail_get_type(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @MENU_ENUM_LABEL_VALUE_OFF, align 4
  %16 = call i8* @msg_hash_to_str(i32 %15)
  store i8* %16, i8** %3, align 8
  br label %66

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %53 [
    i32 128, label %19
    i32 129, label %36
  ]

19:                                               ; preds = %17
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PLAYLIST_THUMBNAIL_MODE_DEFAULT, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %35

30:                                               ; preds = %19
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %30, %25
  br label %56

36:                                               ; preds = %17
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PLAYLIST_THUMBNAIL_MODE_DEFAULT, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %52

47:                                               ; preds = %36
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %47, %42
  br label %56

53:                                               ; preds = %17
  %54 = load i32, i32* @MENU_ENUM_LABEL_VALUE_OFF, align 4
  %55 = call i8* @msg_hash_to_str(i32 %54)
  store i8* %55, i8** %3, align 8
  br label %66

56:                                               ; preds = %52, %35
  %57 = load i32, i32* %7, align 4
  switch i32 %57, label %62 [
    i32 1, label %58
    i32 2, label %59
    i32 3, label %60
    i32 0, label %61
  ]

58:                                               ; preds = %56
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %66

59:                                               ; preds = %56
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %66

60:                                               ; preds = %56
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %66

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %56, %61
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* @MENU_ENUM_LABEL_VALUE_OFF, align 4
  %65 = call i8* @msg_hash_to_str(i32 %64)
  store i8* %65, i8** %3, align 8
  br label %66

66:                                               ; preds = %63, %60, %59, %58, %53, %14
  %67 = load i8*, i8** %3, align 8
  ret i8* %67
}

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
