; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_sidebar.c_ozone_refresh_horizontal_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_sidebar.c_ozone_refresh_horizontal_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@RARCH_MENU_CTL_SET_PREVENT_POPULATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ozone_refresh_horizontal_list(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = call i32 @ozone_context_destroy_horizontal_list(%struct.TYPE_6__* %3)
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @ozone_free_list_nodes(i32* %12, i32 0)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @file_list_free(i32* %16)
  br label %18

18:                                               ; preds = %9, %1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* @RARCH_MENU_CTL_SET_PREVENT_POPULATE, align 4
  %22 = call i32 @menu_driver_ctl(i32 %21, i32* null)
  %23 = call i64 @calloc(i32 1, i32 4)
  %24 = inttoptr i64 %23 to i32*
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = call i32 @ozone_init_horizontal_list(%struct.TYPE_6__* %32)
  br label %34

34:                                               ; preds = %31, %18
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = call i32 @ozone_context_reset_horizontal_list(%struct.TYPE_6__* %35)
  ret void
}

declare dso_local i32 @ozone_context_destroy_horizontal_list(%struct.TYPE_6__*) #1

declare dso_local i32 @ozone_free_list_nodes(i32*, i32) #1

declare dso_local i32 @file_list_free(i32*) #1

declare dso_local i32 @menu_driver_ctl(i32, i32*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @ozone_init_horizontal_list(%struct.TYPE_6__*) #1

declare dso_local i32 @ozone_context_reset_horizontal_list(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
