; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_shader.c_menu_shader_manager_clear_pass_path.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_shader.c_menu_shader_manager_clear_pass_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_shader = type { %struct.video_shader_pass* }
%struct.video_shader_pass = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@menu_driver_shader_modified = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_shader_manager_clear_pass_path(%struct.video_shader* %0, i32 %1) #0 {
  %3 = alloca %struct.video_shader*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.video_shader_pass*, align 8
  store %struct.video_shader* %0, %struct.video_shader** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.video_shader*, %struct.video_shader** %3, align 8
  %7 = icmp ne %struct.video_shader* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.video_shader*, %struct.video_shader** %3, align 8
  %10 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %9, i32 0, i32 0
  %11 = load %struct.video_shader_pass*, %struct.video_shader_pass** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %11, i64 %13
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %8
  %17 = phi %struct.video_shader_pass* [ %14, %8 ], [ null, %15 ]
  store %struct.video_shader_pass* %17, %struct.video_shader_pass** %5, align 8
  %18 = load %struct.video_shader_pass*, %struct.video_shader_pass** %5, align 8
  %19 = icmp ne %struct.video_shader_pass* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.video_shader_pass*, %struct.video_shader_pass** %5, align 8
  %22 = getelementptr inbounds %struct.video_shader_pass, %struct.video_shader_pass* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8 0, i8* %24, align 1
  br label %25

25:                                               ; preds = %20, %16
  store i32 1, i32* @menu_driver_shader_modified, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
