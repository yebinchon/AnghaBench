; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_history_needs_navigation_clear.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_history_needs_navigation_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.playlist_entry = type { i32 }

@RARCH_CTL_IS_DUMMY_CORE = common dso_local global i32 0, align 4
@RARCH_PATH_CONTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @history_needs_navigation_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @history_needs_navigation_clear(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.playlist_entry*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

10:                                               ; preds = %2
  %11 = load i32, i32* @RARCH_CTL_IS_DUMMY_CORE, align 4
  %12 = call i32 @rarch_ctl(i32 %11, i32* null)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RARCH_PATH_CONTENT, align 4
  %19 = call i32 @path_get(i32 %18)
  %20 = call i32 @string_is_equal(i32 %17, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %10
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %49

25:                                               ; preds = %21
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @playlist_size(i32* %29)
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %25
  store %struct.playlist_entry* null, %struct.playlist_entry** %6, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @playlist_get_index(i32* %33, i64 %36, %struct.playlist_entry** %6)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %42 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @string_is_equal(i32 %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %32, %24, %14, %9
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @rarch_ctl(i32, i32*) #1

declare dso_local i32 @string_is_equal(i32, i32) #1

declare dso_local i32 @path_get(i32) #1

declare dso_local i64 @playlist_size(i32*) #1

declare dso_local i32 @playlist_get_index(i32*, i64, %struct.playlist_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
