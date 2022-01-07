; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_refresh_thumbnail_image.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_refresh_thumbnail_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64, i64 }

@MENU_THUMBNAIL_RIGHT = common dso_local global i32 0, align 4
@MENU_THUMBNAIL_LEFT = common dso_local global i32 0, align 4
@MENU_LIST_PLAIN = common dso_local global i32 0, align 4
@XMB_SYSTEM_TAB_SETTINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @xmb_refresh_thumbnail_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_refresh_thumbnail_image(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %89

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MENU_THUMBNAIL_RIGHT, align 4
  %18 = call i64 @menu_thumbnail_is_enabled(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MENU_THUMBNAIL_LEFT, align 4
  %25 = call i64 @menu_thumbnail_is_enabled(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %89

27:                                               ; preds = %20, %13
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = load i32, i32* @MENU_LIST_PLAIN, align 4
  %30 = call i64 @xmb_list_get_size(%struct.TYPE_6__* %28, i32 %29)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @xmb_get_system_tab(%struct.TYPE_6__* %32, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @XMB_SYSTEM_TAB_SETTINGS, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %51, label %44

44:                                               ; preds = %41, %27
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @XMB_SYSTEM_TAB_SETTINGS, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %79

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %51, label %79

51:                                               ; preds = %48, %41
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %51
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MENU_THUMBNAIL_RIGHT, align 4
  %61 = call i64 @menu_thumbnail_is_enabled(i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = call i32 @xmb_update_thumbnail_path(%struct.TYPE_6__* %64, i32 0, i8 signext 82)
  br label %66

66:                                               ; preds = %63, %56
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @MENU_THUMBNAIL_LEFT, align 4
  %71 = call i64 @menu_thumbnail_is_enabled(i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = call i32 @xmb_update_thumbnail_path(%struct.TYPE_6__* %74, i32 0, i8 signext 76)
  br label %76

76:                                               ; preds = %73, %66
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = call i32 @xmb_update_thumbnail_image(%struct.TYPE_6__* %77)
  br label %88

79:                                               ; preds = %51, %48, %44
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = call i32 @xmb_update_thumbnail_image(%struct.TYPE_6__* %85)
  br label %87

87:                                               ; preds = %84, %79
  br label %88

88:                                               ; preds = %87, %76
  br label %89

89:                                               ; preds = %12, %88, %20
  ret void
}

declare dso_local i64 @menu_thumbnail_is_enabled(i32, i32) #1

declare dso_local i64 @xmb_list_get_size(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @xmb_get_system_tab(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @xmb_update_thumbnail_path(%struct.TYPE_6__*, i32, i8 signext) #1

declare dso_local i32 @xmb_update_thumbnail_image(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
