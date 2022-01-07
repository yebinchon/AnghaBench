; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_deferred_push.c_menu_cbs_init_bind_deferred_push.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_deferred_push.c_menu_cbs_init_bind_deferred_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@deferred_push_default = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_PLAYLIST_ENTRY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_cbs_init_bind_deferred_push(%struct.TYPE_6__* %0, i8* %1, i8* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %40

17:                                               ; preds = %6
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = load i32, i32* @deferred_push_default, align 4
  %20 = call i32 @BIND_ACTION_DEFERRED_PUSH(%struct.TYPE_6__* %18, i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MENU_ENUM_LABEL_PLAYLIST_ENTRY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i64 @menu_cbs_init_bind_deferred_push_compare_label(%struct.TYPE_6__* %27, i8* %28, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %40

33:                                               ; preds = %26, %17
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @menu_cbs_init_bind_deferred_push_compare_type(%struct.TYPE_6__* %34, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %40

39:                                               ; preds = %33
  store i32 -1, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %38, %32, %16
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @BIND_ACTION_DEFERRED_PUSH(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @menu_cbs_init_bind_deferred_push_compare_label(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i64 @menu_cbs_init_bind_deferred_push_compare_type(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
