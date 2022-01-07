; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_set_new_playlist.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_set_new_playlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@COLLECTION_SIZE = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_MUSIC_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_VIDEO_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_IMAGE_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_FAVORITES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*)* @menu_displaylist_set_new_playlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_displaylist_set_new_playlist(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @COLLECTION_SIZE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @path_basename(i8* %9)
  store i8* %10, i8** %6, align 8
  %11 = call %struct.TYPE_9__* (...) @config_get_ptr()
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %15, align 1
  %16 = call i64 (...) @playlist_get_cached()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 (...) @playlist_free_cached()
  br label %20

20:                                               ; preds = %18, %2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %77

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @string_is_empty(i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %77, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* @FILE_PATH_CONTENT_HISTORY, align 4
  %30 = call i32 @file_path_str(i32 %29)
  %31 = call i64 @string_is_equal(i8* %28, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @FILE_PATH_CONTENT_MUSIC_HISTORY, align 4
  %36 = call i32 @file_path_str(i32 %35)
  %37 = call i64 @string_is_equal(i8* %34, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %33
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* @FILE_PATH_CONTENT_VIDEO_HISTORY, align 4
  %42 = call i32 @file_path_str(i32 %41)
  %43 = call i64 @string_is_equal(i8* %40, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @FILE_PATH_CONTENT_IMAGE_HISTORY, align 4
  %48 = call i32 @file_path_str(i32 %47)
  %49 = call i64 @string_is_equal(i8* %46, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45, %39, %33, %27
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %5, align 4
  br label %76

56:                                               ; preds = %45
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* @FILE_PATH_CONTENT_FAVORITES, align 4
  %59 = call i32 @file_path_str(i32 %58)
  %60 = call i64 @string_is_equal(i8* %57, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %68, %62
  br label %75

75:                                               ; preds = %74, %56
  br label %76

76:                                               ; preds = %75, %51
  br label %77

77:                                               ; preds = %76, %23, %20
  %78 = load i8*, i8** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i64 @playlist_init_cached(i8* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @strlcpy(i8* %85, i8* %86, i32 8)
  br label %88

88:                                               ; preds = %82, %77
  ret void
}

declare dso_local i8* @path_basename(i8*) #1

declare dso_local %struct.TYPE_9__* @config_get_ptr(...) #1

declare dso_local i64 @playlist_get_cached(...) #1

declare dso_local i32 @playlist_free_cached(...) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i64 @string_is_equal(i8*, i32) #1

declare dso_local i32 @file_path_str(i32) #1

declare dso_local i64 @playlist_init_cached(i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
