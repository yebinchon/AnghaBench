; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_left.c_playlist_association_left.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_left.c_playlist_association_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@CORE_INFO_LIST_SORT_DISPLAY_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @playlist_association_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @playlist_association_left(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  store i64 0, i64* %12, align 8
  %21 = call i32* (...) @playlist_get_cached()
  store i32* %21, i32** %13, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %15, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %22, align 16
  %23 = load i32*, i32** %13, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %120

26:                                               ; preds = %3
  %27 = call i32 @core_info_get_list(%struct.TYPE_8__** %14)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = call i32 (...) @menu_cbs_exit()
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %120

32:                                               ; preds = %26
  %33 = load i32*, i32** %13, align 8
  %34 = call i32 @playlist_get_default_core_path(i32* %33)
  %35 = call i64 @string_is_empty(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 68, i8* %38, align 16
  %39 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 69, i8* %39, align 1
  %40 = getelementptr inbounds i8, i8* %20, i64 2
  store i8 84, i8* %40, align 2
  %41 = getelementptr inbounds i8, i8* %20, i64 3
  store i8 69, i8* %41, align 1
  %42 = getelementptr inbounds i8, i8* %20, i64 4
  store i8 67, i8* %42, align 4
  %43 = getelementptr inbounds i8, i8* %20, i64 5
  store i8 84, i8* %43, align 1
  %44 = getelementptr inbounds i8, i8* %20, i64 6
  store i8 0, i8* %44, align 2
  br label %50

45:                                               ; preds = %32
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @playlist_get_default_core_path(i32* %46)
  %48 = trunc i64 %18 to i32
  %49 = call i32 @strlcpy(i8* %20, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %37
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %52 = load i32, i32* @CORE_INFO_LIST_SORT_DISPLAY_NAME, align 4
  %53 = call i32 @core_info_qsort(%struct.TYPE_8__* %51, i32 %52)
  store i64 0, i64* %10, align 8
  br label %54

54:                                               ; preds = %76, %50
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %54
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %15, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call %struct.TYPE_7__* @core_info_get(%struct.TYPE_8__* %61, i64 %62)
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %15, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %65 = icmp ne %struct.TYPE_7__* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %120

67:                                               ; preds = %60
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @string_is_equal(i32 %70, i8* %20)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i64, i64* %10, align 8
  store i64 %74, i64* %12, align 8
  br label %75

75:                                               ; preds = %73, %67
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %10, align 8
  br label %54

79:                                               ; preds = %54
  %80 = load i64, i64* %12, align 8
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i64, i64* %12, align 8
  %84 = sub i64 %83, 1
  store i64 %84, i64* %11, align 8
  br label %100

85:                                               ; preds = %79
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ugt i64 %91, 1
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = sub i64 %96, 1
  store i64 %97, i64* %11, align 8
  br label %99

98:                                               ; preds = %88, %85
  store i64 0, i64* %11, align 8
  br label %99

99:                                               ; preds = %98, %93
  br label %100

100:                                              ; preds = %99, %82
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %15, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %102 = load i64, i64* %11, align 8
  %103 = call %struct.TYPE_7__* @core_info_get(%struct.TYPE_8__* %101, i64 %102)
  store %struct.TYPE_7__* %103, %struct.TYPE_7__** %15, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %105 = icmp ne %struct.TYPE_7__* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %120

107:                                              ; preds = %100
  %108 = load i32*, i32** %13, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @playlist_set_default_core_path(i32* %108, i32 %111)
  %113 = load i32*, i32** %13, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @playlist_set_default_core_name(i32* %113, i32 %116)
  %118 = load i32*, i32** %13, align 8
  %119 = call i32 @playlist_write_file(i32* %118)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %120

120:                                              ; preds = %107, %106, %66, %30, %25
  %121 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @playlist_get_cached(...) #2

declare dso_local i32 @core_info_get_list(%struct.TYPE_8__**) #2

declare dso_local i32 @menu_cbs_exit(...) #2

declare dso_local i64 @string_is_empty(i32) #2

declare dso_local i32 @playlist_get_default_core_path(i32*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @core_info_qsort(%struct.TYPE_8__*, i32) #2

declare dso_local %struct.TYPE_7__* @core_info_get(%struct.TYPE_8__*, i64) #2

declare dso_local i64 @string_is_equal(i32, i8*) #2

declare dso_local i32 @playlist_set_default_core_path(i32*, i32) #2

declare dso_local i32 @playlist_set_default_core_name(i32*, i32) #2

declare dso_local i32 @playlist_write_file(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
