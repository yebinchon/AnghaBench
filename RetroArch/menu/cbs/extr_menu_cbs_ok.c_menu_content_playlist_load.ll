; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_menu_content_playlist_load.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_menu_content_playlist_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist_entry = type { i8* }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@PLAYLIST_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".zip\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".7z\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @menu_content_playlist_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_content_playlist_load(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.playlist_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  store %struct.playlist_entry* null, %struct.playlist_entry** %8, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @playlist_get_index(i32* %18, i64 %19, %struct.playlist_entry** %8)
  %21 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %21, align 16
  %22 = load %struct.playlist_entry*, %struct.playlist_entry** %8, align 8
  %23 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = trunc i64 %15 to i32
  %26 = call i32 @strlcpy(i8* %17, i8* %24, i32 %25)
  %27 = load i32, i32* @PLAYLIST_LOAD, align 4
  %28 = trunc i64 %15 to i32
  %29 = call i32 @playlist_resolve_path(i32 %27, i8* %17, i32 %28)
  %30 = call i32 @string_is_empty(i8* %17)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %91, label %32

32:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %33 = call i8* @strdup(i8* %17)
  store i8* %33, i8** %12, align 8
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %50, %32
  %35 = load i32, i32* %9, align 4
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = call signext i8 @tolower(i8 zeroext %44)
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8 %45, i8* %49, align 1
  br label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %9, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %34

53:                                               ; preds = %34
  %54 = load i8*, i8** %12, align 8
  %55 = call i8* @strstr(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i8*, i8** %12, align 8
  %59 = call i8* @strstr(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %60 = getelementptr inbounds i8, i8* %59, i64 4
  store i8 0, i8* %60, align 1
  br label %70

61:                                               ; preds = %53
  %62 = load i8*, i8** %12, align 8
  %63 = call i8* @strstr(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i8*, i8** %12, align 8
  %67 = call i8* @strstr(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %68 = getelementptr inbounds i8, i8* %67, i64 3
  store i8 0, i8* %68, align 1
  br label %69

69:                                               ; preds = %65, %61
  br label %70

70:                                               ; preds = %69, %57
  %71 = load i8*, i8** %12, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = add nsw i32 %72, 1
  %74 = call i64 @calloc(i32 %73, i32 1)
  %75 = inttoptr i64 %74 to i8*
  store i8* %75, i8** %11, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = add nsw i32 %78, 1
  %80 = call i32 @strlcpy(i8* %76, i8* %17, i32 %79)
  %81 = load i8*, i8** %11, align 8
  %82 = call i32 @path_is_valid(i8* %81)
  store i32 %82, i32* %10, align 4
  %83 = load i8*, i8** %12, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %70
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %92

90:                                               ; preds = %70
  br label %91

91:                                               ; preds = %90, %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %92

92:                                               ; preds = %91, %89
  %93 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @playlist_get_index(i32*, i64, %struct.playlist_entry**) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @playlist_resolve_path(i32, i8*, i32) #2

declare dso_local i32 @string_is_empty(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local signext i8 @tolower(i8 zeroext) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @path_is_valid(i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
