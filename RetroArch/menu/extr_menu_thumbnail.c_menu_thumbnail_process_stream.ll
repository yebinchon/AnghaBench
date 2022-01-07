; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail.c_menu_thumbnail_process_stream.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail.c_menu_thumbnail_process_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@MENU_THUMBNAIL_STATUS_UNKNOWN = common dso_local global i64 0, align 8
@menu_thumbnail_stream_delay = common dso_local global i64 0, align 8
@MENU_THUMBNAIL_STATUS_MISSING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_thumbnail_process_stream(i32* %0, i32 %1, i32* %2, i64 %3, %struct.TYPE_5__* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  br label %77

16:                                               ; preds = %6
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %64

19:                                               ; preds = %16
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MENU_THUMBNAIL_STATUS_UNKNOWN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %63

25:                                               ; preds = %19
  %26 = call i64 (...) @menu_animation_get_delta_time()
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @menu_thumbnail_stream_delay, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %25
  %37 = load i32*, i32** %7, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %36
  br label %77

43:                                               ; preds = %39
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @menu_thumbnail_set_content_playlist(i32* %44, i32* %45, i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %51 = call i32 @menu_thumbnail_reset(%struct.TYPE_5__* %50)
  %52 = load i64, i64* @MENU_THUMBNAIL_STATUS_MISSING, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %77

55:                                               ; preds = %43
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %61 = call i32 @menu_thumbnail_request(i32* %56, i32 %57, i32* %58, i64 %59, %struct.TYPE_5__* %60)
  br label %62

62:                                               ; preds = %55, %25
  br label %63

63:                                               ; preds = %62, %19
  br label %77

64:                                               ; preds = %16
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MENU_THUMBNAIL_STATUS_UNKNOWN, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  br label %76

73:                                               ; preds = %64
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %75 = call i32 @menu_thumbnail_reset(%struct.TYPE_5__* %74)
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %15, %42, %49, %76, %63
  ret void
}

declare dso_local i64 @menu_animation_get_delta_time(...) #1

declare dso_local i32 @menu_thumbnail_set_content_playlist(i32*, i32*, i64) #1

declare dso_local i32 @menu_thumbnail_reset(%struct.TYPE_5__*) #1

declare dso_local i32 @menu_thumbnail_request(i32*, i32, i32*, i64, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
