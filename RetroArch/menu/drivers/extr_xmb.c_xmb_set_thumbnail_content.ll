; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_set_thumbnail_content.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_set_thumbnail_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i8* }
%struct.TYPE_6__ = type { i8* }

@.str = private unnamed_addr constant [12 x i8] c"imageviewer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @xmb_set_thumbnail_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_set_thumbnail_content(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = call i64 (...) @menu_navigation_get_selection()
  store i64 %11, i64* %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %119

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @string_is_empty(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (...) @playlist_get_cached()
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @menu_thumbnail_set_content_playlist(i32 %29, i32 %30, i64 %31)
  br label %33

33:                                               ; preds = %26, %22
  br label %119

34:                                               ; preds = %17
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %34
  %40 = load i8*, i8** %4, align 8
  %41 = call i64 @string_is_empty(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = call i32 @menu_entry_init(%struct.TYPE_8__* %7)
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  store i32 0, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  store i32 0, i32* %48, align 4
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @menu_entry_get(%struct.TYPE_8__* %7, i32 0, i64 %49, i32* null, i32 1)
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 4
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @string_is_empty(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %43
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 4
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @menu_thumbnail_set_content(i32 %58, i8* %60)
  br label %62

62:                                               ; preds = %55, %43
  br label %63

63:                                               ; preds = %62, %39
  br label %118

64:                                               ; preds = %34
  %65 = load i8*, i8** %4, align 8
  %66 = call i64 @string_is_equal(i8* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %106

68:                                               ; preds = %64
  %69 = call i32* @menu_entries_get_selection_buf_ptr(i32 0)
  store i32* %69, i32** %9, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i64 @file_list_get_userdata_at_offset(i32* %70, i64 %71)
  %73 = inttoptr i64 %72 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %73, %struct.TYPE_6__** %10, align 8
  %74 = call i32 @menu_entry_init(%struct.TYPE_8__* %8)
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 0, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i32 0, i32* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  store i32 0, i32* %78, align 4
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @menu_entry_get(%struct.TYPE_8__* %8, i32 0, i64 %79, i32* null, i32 1)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %82 = icmp ne %struct.TYPE_6__* %81, null
  br i1 %82, label %83, label %105

83:                                               ; preds = %68
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @string_is_empty(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @string_is_empty(i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %88
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @menu_thumbnail_set_content_image(i32 %97, i8* %100, i8* %102)
  br label %104

104:                                              ; preds = %94, %88, %83
  br label %105

105:                                              ; preds = %104, %68
  br label %117

106:                                              ; preds = %64
  %107 = load i8*, i8** %4, align 8
  %108 = call i64 @string_is_empty(i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %106
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i8*, i8** %4, align 8
  %115 = call i32 @menu_thumbnail_set_content(i32 %113, i8* %114)
  br label %116

116:                                              ; preds = %110, %106
  br label %117

117:                                              ; preds = %116, %105
  br label %118

118:                                              ; preds = %117, %63
  br label %119

119:                                              ; preds = %16, %118, %33
  ret void
}

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @menu_thumbnail_set_content_playlist(i32, i32, i64) #1

declare dso_local i32 @playlist_get_cached(...) #1

declare dso_local i32 @menu_entry_init(%struct.TYPE_8__*) #1

declare dso_local i32 @menu_entry_get(%struct.TYPE_8__*, i32, i64, i32*, i32) #1

declare dso_local i32 @menu_thumbnail_set_content(i32, i8*) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i32* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i64 @file_list_get_userdata_at_offset(i32*, i64) #1

declare dso_local i32 @menu_thumbnail_set_content_image(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
