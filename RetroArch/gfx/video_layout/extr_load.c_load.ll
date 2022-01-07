; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_load.c_load.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_load.c_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"mamelayout\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"video_layout: invalid MAME Layout file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.TYPE_6__* @rxml_root_node(i32* %10)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %9, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @strcmp(i32 %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = call i32 @rxml_node_attrib(%struct.TYPE_6__* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i64 @strcmp(i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %2
  %23 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %45

24:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  %25 = call i32 @scope_init(i32* %7)
  %26 = call i32 @init_device_params(i32* %7)
  %27 = call i32 @init_screen_params(i32* %7, i32 0)
  %28 = call i32 @init_screen_params(i32* %7, i32 1)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = call i32 @load_top_level(i32* %7, i32* %8, %struct.TYPE_6__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %24
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @view_array_init(i32* %34, i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %39 = call i32 @load_views(i32* %7, i32* %37, %struct.TYPE_6__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %33
  %43 = call i32 @scope_deinit(i32* %7)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %22
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_6__* @rxml_root_node(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @rxml_node_attrib(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @RARCH_LOG(i8*) #1

declare dso_local i32 @scope_init(i32*) #1

declare dso_local i32 @init_device_params(i32*) #1

declare dso_local i32 @init_screen_params(i32*, i32) #1

declare dso_local i32 @load_top_level(i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @view_array_init(i32*, i32) #1

declare dso_local i32 @load_views(i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @scope_deinit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
