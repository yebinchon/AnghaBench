; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_driver_init_internal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_driver_init_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.TYPE_11__*)*, i32, i64 (i32*, i32)* }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@menu_driver_ctx = common dso_local global %struct.TYPE_12__* null, align 8
@menu_userdata = common dso_local global i32 0, align 4
@menu_driver_data = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @menu_driver_init_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_driver_init_internal(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** @menu_driver_ctx, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  %7 = load i64 (i32*, i32)*, i64 (i32*, i32)** %6, align 8
  %8 = icmp ne i64 (i32*, i32)* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** @menu_driver_ctx, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %12 = load i64 (i32*, i32)*, i64 (i32*, i32)** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 %12(i32* @menu_userdata, i32 %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** @menu_driver_data, align 8
  %16 = load i32, i32* @menu_userdata, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @menu_driver_data, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** @menu_driver_ctx, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** @menu_driver_data, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %21, align 8
  br label %22

22:                                               ; preds = %9, %1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** @menu_driver_data, align 8
  %24 = icmp ne %struct.TYPE_11__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** @menu_driver_data, align 8
  %27 = call i32 @menu_init(%struct.TYPE_11__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %22
  store i32 0, i32* %2, align 4
  br label %54

30:                                               ; preds = %25
  %31 = call %struct.TYPE_10__* (...) @config_get_ptr()
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %4, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** @menu_driver_ctx, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @strlcpy(i32 %35, i32 %38, i32 4)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** @menu_driver_ctx, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %41, align 8
  %43 = icmp ne i32 (%struct.TYPE_11__*)* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %30
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** @menu_driver_ctx, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %46, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** @menu_driver_data, align 8
  %49 = call i32 %47(%struct.TYPE_11__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %54

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %30
  store i32 1, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %51, %29
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @menu_init(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @config_get_ptr(...) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
