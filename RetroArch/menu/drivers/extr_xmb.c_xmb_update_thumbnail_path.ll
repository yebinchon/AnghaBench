; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_update_thumbnail_path.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_update_thumbnail_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"imageviewer\00", align 1
@MENU_THUMBNAIL_RIGHT = common dso_local global i32 0, align 4
@MENU_THUMBNAIL_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8)* @xmb_update_thumbnail_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_update_thumbnail_path(i8* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %7, align 8
  store i8* null, i8** %8, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %66

14:                                               ; preds = %3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @menu_thumbnail_get_core_name(i32 %17, i8** %8)
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @string_is_equal(i8* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %14
  %23 = load i8, i8* %6, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 82
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = load i8, i8* %6, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 76
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MENU_THUMBNAIL_RIGHT, align 4
  %35 = call i32 @menu_thumbnail_is_enabled(i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %30, %22
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8, i8* %6, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 82
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @MENU_THUMBNAIL_RIGHT, align 4
  br label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @MENU_THUMBNAIL_LEFT, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = call i32 @menu_thumbnail_update_path(i32 %40, i32 %49)
  br label %51

51:                                               ; preds = %48, %30, %26
  br label %66

52:                                               ; preds = %14
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8, i8* %6, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 82
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @MENU_THUMBNAIL_RIGHT, align 4
  br label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @MENU_THUMBNAIL_LEFT, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = call i32 @menu_thumbnail_update_path(i32 %55, i32 %64)
  br label %66

66:                                               ; preds = %13, %63, %51
  ret void
}

declare dso_local i32 @menu_thumbnail_get_core_name(i32, i8**) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i32 @menu_thumbnail_is_enabled(i32, i32) #1

declare dso_local i32 @menu_thumbnail_update_path(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
