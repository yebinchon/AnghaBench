; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail_path.c_menu_thumbnail_set_content_playlist.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail_path.c_menu_thumbnail_set_content_playlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.playlist_entry = type { i8*, i8*, i8*, i8* }

@PLAYLIST_THUMBNAIL_MODE_DEFAULT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"MAME\00", align 1
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@PLAYLIST_THUMBNAIL_RIGHT = common dso_local global i32 0, align 4
@PLAYLIST_THUMBNAIL_LEFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_thumbnail_set_content_playlist(%struct.TYPE_4__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.playlist_entry*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store %struct.playlist_entry* null, %struct.playlist_entry** %12, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %174

19:                                               ; preds = %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %23, align 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %27, align 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %31, align 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 0, i8* %35, align 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 0, i8* %39, align 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 5
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 0, i8* %43, align 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 6
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** @PLAYLIST_THUMBNAIL_MODE_DEFAULT, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 8
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @PLAYLIST_THUMBNAIL_MODE_DEFAULT, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 7
  store i8* %51, i8** %53, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %174

57:                                               ; preds = %19
  %58 = load i64, i64* %7, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i64 @playlist_get_size(i32* %59)
  %61 = icmp uge i64 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %174

63:                                               ; preds = %57
  %64 = load i32*, i32** %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @playlist_get_index(i32* %64, i64 %65, %struct.playlist_entry** %12)
  %67 = load %struct.playlist_entry*, %struct.playlist_entry** %12, align 8
  %68 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %8, align 8
  %70 = load %struct.playlist_entry*, %struct.playlist_entry** %12, align 8
  %71 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %9, align 8
  %73 = load %struct.playlist_entry*, %struct.playlist_entry** %12, align 8
  %74 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %10, align 8
  %76 = load %struct.playlist_entry*, %struct.playlist_entry** %12, align 8
  %77 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %11, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = call i64 @string_is_empty(i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %174

83:                                               ; preds = %63
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @strlcpy(i8* %86, i8* %87, i32 8)
  %89 = load i8*, i8** %10, align 8
  %90 = call i64 @string_is_empty(i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %83
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 @strlcpy(i8* %95, i8* %96, i32 8)
  br label %98

98:                                               ; preds = %92, %83
  %99 = load i8*, i8** %9, align 8
  %100 = call i64 @string_is_empty(i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %98
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = call i32 @strlcpy(i8* %105, i8* %106, i32 8)
  br label %114

108:                                              ; preds = %98
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i8*, i8** %110, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @fill_short_pathname_representation(i8* %111, i8* %112, i32 8)
  br label %114

114:                                              ; preds = %108, %102
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %116 = call i32 @fill_content_img(%struct.TYPE_4__* %115)
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 6
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @string_is_empty(i8* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  store i32 0, i32* %4, align 4
  br label %174

123:                                              ; preds = %114
  %124 = load i8*, i8** %11, align 8
  %125 = call i64 @string_is_empty(i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %163, label %127

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8
  %129 = call i64 @strncmp(i8* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 5
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @strlcpy(i8* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 8)
  br label %162

136:                                              ; preds = %127
  store i8* null, i8** %13, align 8
  %137 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %138 = zext i32 %137 to i64
  %139 = call i8* @llvm.stacksave()
  store i8* %139, i8** %14, align 8
  %140 = alloca i8, i64 %138, align 16
  store i64 %138, i64* %15, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 0
  store i8 0, i8* %141, align 16
  %142 = load i8*, i8** %11, align 8
  %143 = trunc i64 %138 to i32
  %144 = call i32 @strlcpy(i8* %140, i8* %142, i32 %143)
  %145 = call i8* @path_remove_extension(i8* %140)
  store i8* %145, i8** %13, align 8
  %146 = load i8*, i8** %13, align 8
  %147 = call i64 @string_is_empty(i8* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %136
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 5
  %152 = load i8*, i8** %151, align 8
  %153 = load i8*, i8** %13, align 8
  %154 = call i32 @strlcpy(i8* %152, i8* %153, i32 8)
  br label %160

155:                                              ; preds = %136
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 5
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @strlcpy(i8* %158, i8* %140, i32 8)
  br label %160

160:                                              ; preds = %155, %149
  %161 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %161)
  br label %162

162:                                              ; preds = %160, %131
  br label %163

163:                                              ; preds = %162, %123
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* @PLAYLIST_THUMBNAIL_RIGHT, align 4
  %166 = call i8* @playlist_get_thumbnail_mode(i32* %164, i32 %165)
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 8
  store i8* %166, i8** %168, align 8
  %169 = load i32*, i32** %6, align 8
  %170 = load i32, i32* @PLAYLIST_THUMBNAIL_LEFT, align 4
  %171 = call i8* @playlist_get_thumbnail_mode(i32* %169, i32 %170)
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 7
  store i8* %171, i8** %173, align 8
  store i32 1, i32* %4, align 4
  br label %174

174:                                              ; preds = %163, %122, %82, %62, %56, %18
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i64 @playlist_get_size(i32*) #1

declare dso_local i32 @playlist_get_index(i32*, i64, %struct.playlist_entry**) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @fill_short_pathname_representation(i8*, i8*, i32) #1

declare dso_local i32 @fill_content_img(%struct.TYPE_4__*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

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
