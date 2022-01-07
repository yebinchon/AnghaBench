; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_layout.c_video_layout_load.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_layout.c_video_layout_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@video_layout_state = common dso_local global %struct.TYPE_2__* null, align 8
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"default.lay\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"video_layout: unable to open file \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @video_layout_load(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %1
  store i32 1, i32* %2, align 4
  br label %97

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @path_is_compressed_file(i8* %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @video_layout_state, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i64 %22, i64* %24, align 8
  store i32* null, i32** %4, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @video_layout_state, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %20
  %30 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %8, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %9, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = trunc i64 %31 to i32
  %36 = call i32 @strlcpy(i8* %33, i8* %34, i32 %35)
  %37 = trunc i64 %31 to i32
  %38 = call i32 @strlcat(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @video_layout_state, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = call i32 @set_string(i32* %40, i8* %33)
  %42 = trunc i64 %31 to i32
  %43 = call i32 @strlcat(i8* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = call i64 @file_archive_compressed_read(i8* %33, i8** %6, i32* null, i64* %7)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %29
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  %50 = call i64 @realloc(i8* %47, i64 %49)
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %10, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load i8*, i8** %10, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %10, align 8
  %58 = call i32* @rxml_load_document_string(i8* %57)
  store i32* %58, i32** %4, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @free(i8* %59)
  br label %64

61:                                               ; preds = %46
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @free(i8* %62)
  br label %64

64:                                               ; preds = %61, %53
  br label %65

65:                                               ; preds = %64, %29
  %66 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %66)
  br label %81

67:                                               ; preds = %20
  %68 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %69 = zext i32 %68 to i64
  %70 = call i8* @llvm.stacksave()
  store i8* %70, i8** %11, align 8
  %71 = alloca i8, i64 %69, align 16
  store i64 %69, i64* %12, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = trunc i64 %69 to i32
  %74 = call i32 @fill_pathname_basedir(i8* %71, i8* %72, i32 %73)
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @video_layout_state, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = call i32 @set_string(i32* %76, i8* %71)
  %78 = load i8*, i8** %3, align 8
  %79 = call i32* @rxml_load_document(i8* %78)
  store i32* %79, i32** %4, align 8
  %80 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %80)
  br label %81

81:                                               ; preds = %67, %65
  %82 = load i32*, i32** %4, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i8*, i8** %3, align 8
  %86 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %85)
  store i32 0, i32* %2, align 4
  br label %97

87:                                               ; preds = %81
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @video_layout_state, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @load(i32* %89, i32* %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @rxml_free_document(i32* %92)
  %94 = call i32 (...) @video_layout_view_index()
  %95 = call i32 @video_layout_view_select(i32 %94)
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %87, %84, %19
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @path_is_compressed_file(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @set_string(i32*, i8*) #1

declare dso_local i64 @file_archive_compressed_read(i8*, i8**, i32*, i64*) #1

declare dso_local i64 @realloc(i8*, i64) #1

declare dso_local i32* @rxml_load_document_string(i8*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @fill_pathname_basedir(i8*, i8*, i32) #1

declare dso_local i32* @rxml_load_document(i8*) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*) #1

declare dso_local i32 @load(i32*, i32*) #1

declare dso_local i32 @rxml_free_document(i32*) #1

declare dso_local i32 @video_layout_view_select(i32) #1

declare dso_local i32 @video_layout_view_index(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
