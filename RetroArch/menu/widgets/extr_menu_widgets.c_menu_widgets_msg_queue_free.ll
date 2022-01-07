; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_msg_queue_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_msg_queue_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i64, i32, i64, i32, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32* }

@msg_queue_tasks_count = common dso_local global i32 0, align 4
@current_msgs = common dso_local global %struct.TYPE_8__* null, align 8
@msg_queue_kill = common dso_local global i64 0, align 8
@widgets_moving = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @menu_widgets_msg_queue_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_widgets_msg_queue_free(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = ptrtoint %struct.TYPE_7__* %7 to i64
  store i64 %8, i64* %6, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %13
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %28, %23, %18, %13
  %34 = load i32, i32* @msg_queue_tasks_count, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* @msg_queue_tasks_count, align 4
  br label %36

36:                                               ; preds = %33, %2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = call i32 @menu_timer_kill(i32* %38)
  %40 = call i32 @menu_animation_kill_by_tag(i64* %6)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = call i32 @menu_timer_kill(i32* %47)
  br label %49

49:                                               ; preds = %45, %36
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @free(i64 %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %96

62:                                               ; preds = %59
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current_msgs, align 8
  %64 = load i64, i64* @msg_queue_kill, align 8
  %65 = call i32 @file_list_free_userdata(%struct.TYPE_8__* %63, i64 %64)
  %66 = load i64, i64* @msg_queue_kill, align 8
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %88, %62
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current_msgs, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = icmp ult i64 %68, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %67
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current_msgs, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* %5, align 8
  %80 = add i64 %79, 1
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current_msgs, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 %82, i32* %87, align 4
  br label %88

88:                                               ; preds = %75
  %89 = load i64, i64* %5, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %5, align 8
  br label %67

91:                                               ; preds = %67
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current_msgs, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %91, %59
  store i32 0, i32* @widgets_moving, align 4
  ret void
}

declare dso_local i32 @menu_timer_kill(i32*) #1

declare dso_local i32 @menu_animation_kill_by_tag(i64*) #1

declare dso_local i32 @free(i64) #1

declare dso_local i32 @file_list_free_userdata(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
