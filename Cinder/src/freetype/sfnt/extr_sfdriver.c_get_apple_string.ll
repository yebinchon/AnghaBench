; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/sfnt/extr_sfdriver.c_get_apple_string.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/sfnt/extr_sfdriver.c_get_apple_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i8*, i64 }

@FT_Err_Ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"get_apple_string: Character `%c' (0x%X) invalid in PS name string\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i64 (i8*)*, i64)* @get_apple_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_apple_string(i32 %0, %struct.TYPE_6__* %1, %struct.TYPE_5__* %2, i64 (i8*)* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64 (i8*)*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %9, align 8
  store i64 (i8*)* %3, i64 (i8*)** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %17, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @FT_UNUSED(i32 %18)
  %20 = load i8*, i8** %13, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  %25 = call i64 @FT_ALLOC(i8* %20, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %100

28:                                               ; preds = %5
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @FT_STREAM_SEEK(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @FT_FRAME_ENTER(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %34, %28
  %41 = load i8*, i8** %13, align 8
  %42 = call i32 @FT_FREE(i8* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @FT_FREE(i8* %49)
  store i8* null, i8** %6, align 8
  br label %100

51:                                               ; preds = %34
  %52 = load i8*, i8** %13, align 8
  store i8* %52, i8** %14, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8**
  store i8** %56, i8*** %15, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %16, align 8
  br label %60

60:                                               ; preds = %91, %51
  %61 = load i64, i64* %16, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %96

63:                                               ; preds = %60
  %64 = load i64 (i8*)*, i64 (i8*)** %10, align 8
  %65 = load i8**, i8*** %15, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 %64(i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i8**, i8*** %15, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = ptrtoint i8* %71 to i8
  %73 = load i8*, i8** %14, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %14, align 8
  store i8 %72, i8* %73, align 1
  br label %90

75:                                               ; preds = %63
  %76 = load i64, i64* %11, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i8**, i8*** %15, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = load i8**, i8*** %15, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @FT_TRACE0(i8* %82)
  %84 = load i8**, i8*** %15, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = ptrtoint i8* %85 to i8
  %87 = load i8*, i8** %14, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %14, align 8
  store i8 %86, i8* %87, align 1
  br label %89

89:                                               ; preds = %78, %75
  br label %90

90:                                               ; preds = %89, %69
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %16, align 8
  %93 = add nsw i64 %92, -1
  store i64 %93, i64* %16, align 8
  %94 = load i8**, i8*** %15, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i32 1
  store i8** %95, i8*** %15, align 8
  br label %60

96:                                               ; preds = %60
  %97 = load i8*, i8** %14, align 8
  store i8 0, i8* %97, align 1
  %98 = call i32 (...) @FT_FRAME_EXIT()
  %99 = load i8*, i8** %13, align 8
  store i8* %99, i8** %6, align 8
  br label %100

100:                                              ; preds = %96, %40, %27
  %101 = load i8*, i8** %6, align 8
  ret i8* %101
}

declare dso_local i32 @FT_UNUSED(i32) #1

declare dso_local i64 @FT_ALLOC(i8*, i64) #1

declare dso_local i64 @FT_STREAM_SEEK(i64) #1

declare dso_local i64 @FT_FRAME_ENTER(i64) #1

declare dso_local i32 @FT_FREE(i8*) #1

declare dso_local i32 @FT_TRACE0(i8*) #1

declare dso_local i32 @FT_FRAME_EXIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
