; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail_path.c_menu_thumbnail_set_system.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail_path.c_menu_thumbnail_set_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8* }

@PLAYLIST_THUMBNAIL_MODE_DEFAULT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"MAME\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"history\00", align 1
@FILE_PATH_CONTENT_HISTORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"favorites\00", align 1
@FILE_PATH_CONTENT_FAVORITES = common dso_local global i32 0, align 4
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@PLAYLIST_THUMBNAIL_RIGHT = common dso_local global i32 0, align 4
@PLAYLIST_THUMBNAIL_LEFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_thumbnail_set_system(%struct.TYPE_3__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %129

17:                                               ; preds = %3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %21, align 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %25, align 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %29, align 1
  %30 = load i8*, i8** @PLAYLIST_THUMBNAIL_MODE_DEFAULT, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @PLAYLIST_THUMBNAIL_MODE_DEFAULT, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @string_is_empty(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %129

40:                                               ; preds = %17
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @strncmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strlcpy(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 8)
  br label %55

49:                                               ; preds = %40
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @strlcpy(i8* %52, i8* %53, i32 8)
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32*, i32** %7, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %128

58:                                               ; preds = %55
  %59 = load i32*, i32** %7, align 8
  %60 = call i8* @playlist_get_conf_path(i32* %59)
  store i8* %60, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = call i64 @string_is_empty(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 1, i32* %4, align 4
  br label %129

65:                                               ; preds = %58
  %66 = load i8*, i8** %8, align 8
  %67 = call i8* @path_basename(i8* %66)
  store i8* %67, i8** %9, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i64 @string_is_empty(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %129

72:                                               ; preds = %65
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @string_is_equal(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* @FILE_PATH_CONTENT_HISTORY, align 4
  %79 = call i8* @file_path_str(i32 %78)
  %80 = call i32 @string_is_equal(i8* %77, i8* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %76, %72
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @string_is_equal(i8* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* @FILE_PATH_CONTENT_FAVORITES, align 4
  %89 = call i8* @file_path_str(i32 %88)
  %90 = call i32 @string_is_equal(i8* %87, i8* %89)
  %91 = icmp ne i32 %90, 0
  br label %92

92:                                               ; preds = %86, %82
  %93 = phi i1 [ false, %82 ], [ %91, %86 ]
  br label %94

94:                                               ; preds = %92, %76
  %95 = phi i1 [ true, %76 ], [ %93, %92 ]
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %113, label %99

99:                                               ; preds = %94
  store i8* null, i8** %11, align 8
  %100 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %101 = zext i32 %100 to i64
  %102 = call i8* @llvm.stacksave()
  store i8* %102, i8** %12, align 8
  %103 = alloca i8, i64 %101, align 16
  store i64 %101, i64* %13, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  store i8 0, i8* %104, align 16
  %105 = load i8*, i8** %9, align 8
  %106 = trunc i64 %101 to i32
  %107 = call i32 @strlcpy(i8* %103, i8* %105, i32 %106)
  %108 = call i8* @path_remove_extension(i8* %103)
  store i8* %108, i8** %11, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = call i32 @string_is_equal(i8* %109, i8* %110)
  store i32 %111, i32* %10, align 4
  %112 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %112)
  br label %113

113:                                              ; preds = %99, %94
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* @PLAYLIST_THUMBNAIL_RIGHT, align 4
  %119 = call i8* @playlist_get_thumbnail_mode(i32* %117, i32 %118)
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 4
  store i8* %119, i8** %121, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* @PLAYLIST_THUMBNAIL_LEFT, align 4
  %124 = call i8* @playlist_get_thumbnail_mode(i32* %122, i32 %123)
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %116, %113
  br label %128

128:                                              ; preds = %127, %55
  store i32 1, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %71, %64, %39, %16
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @playlist_get_conf_path(i32*) #1

declare dso_local i8* @path_basename(i8*) #1

declare dso_local i32 @string_is_equal(i8*, i8*) #1

declare dso_local i8* @file_path_str(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @path_remove_extension(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @playlist_get_thumbnail_mode(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
