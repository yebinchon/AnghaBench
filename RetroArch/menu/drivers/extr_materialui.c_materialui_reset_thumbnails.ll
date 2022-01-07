; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_reset_thumbnails.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_reset_thumbnails.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @materialui_reset_thumbnails to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materialui_reset_thumbnails() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = call %struct.TYPE_8__* @menu_entries_get_selection_buf_ptr(i32 0)
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %1, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %6 = icmp ne %struct.TYPE_8__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %35

8:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %32, %8
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %9
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @file_list_get_userdata_at_offset(%struct.TYPE_8__* %16, i32 %17)
  %19 = inttoptr i64 %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %3, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %32

23:                                               ; preds = %15
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = call i32 @menu_thumbnail_reset(i32* %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = call i32 @menu_thumbnail_reset(i32* %30)
  br label %32

32:                                               ; preds = %23, %22
  %33 = load i32, i32* %2, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %9

35:                                               ; preds = %7, %9
  ret void
}

declare dso_local %struct.TYPE_8__* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i64 @file_list_get_userdata_at_offset(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @menu_thumbnail_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
