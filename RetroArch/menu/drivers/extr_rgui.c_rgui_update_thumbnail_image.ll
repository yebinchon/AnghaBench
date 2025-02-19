; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_update_thumbnail_image.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_update_thumbnail_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8*, i64, i64 }
%struct.TYPE_12__ = type { i32, i8*, i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@mini_thumbnail = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@fs_thumbnail = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rgui_update_thumbnail_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgui_update_thumbnail_image(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %3, align 8
  %7 = call %struct.TYPE_9__* (...) @config_get_ptr()
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %4, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = icmp ne %struct.TYPE_10__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %1
  br label %43

14:                                               ; preds = %10
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %14
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mini_thumbnail, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mini_thumbnail, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mini_thumbnail, i32 0, i32 0), align 8
  %34 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mini_thumbnail, i32 0, i32 1), align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 0, i8* %35, align 1
  br label %39

36:                                               ; preds = %28
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fs_thumbnail, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fs_thumbnail, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fs_thumbnail, i32 0, i32 0), align 8
  %37 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fs_thumbnail, i32 0, i32 1), align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %14
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = call i32 @rgui_scan_selected_entry_thumbnail(%struct.TYPE_10__* %41, i32 1)
  br label %43

43:                                               ; preds = %40, %13
  ret void
}

declare dso_local %struct.TYPE_9__* @config_get_ptr(...) #1

declare dso_local i32 @rgui_scan_selected_entry_thumbnail(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
