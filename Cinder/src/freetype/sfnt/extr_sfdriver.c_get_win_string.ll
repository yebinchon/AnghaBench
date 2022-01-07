; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/sfnt/extr_sfdriver.c_get_win_string.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/sfnt/extr_sfdriver.c_get_win_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i8*, i64 }

@FT_Err_Ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"get_win_string: Character `%c' (0x%X) invalid in PS name string\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i64 (i64)*, i64)* @get_win_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_win_string(i32 %0, %struct.TYPE_6__* %1, %struct.TYPE_5__* %2, i64 (i64)* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64 (i64)*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %9, align 8
  store i64 (i64)* %3, i64 (i64)** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %17, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @FT_UNUSED(i32 %18)
  %20 = load i8*, i8** %13, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sdiv i32 %23, 2
  %25 = add nsw i32 %24, 1
  %26 = call i64 @FT_ALLOC(i8* %20, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %114

29:                                               ; preds = %5
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @FT_STREAM_SEEK(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @FT_FRAME_ENTER(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35, %29
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 @FT_FREE(i8* %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @FT_FREE(i8* %50)
  store i8* null, i8** %6, align 8
  br label %114

52:                                               ; preds = %35
  %53 = load i8*, i8** %13, align 8
  store i8* %53, i8** %14, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i64*
  store i64* %57, i64** %15, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sdiv i32 %60, 2
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %105, %52
  %63 = load i32, i32* %16, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %110

65:                                               ; preds = %62
  %66 = load i64*, i64** %15, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %104

70:                                               ; preds = %65
  %71 = load i64 (i64)*, i64 (i64)** %10, align 8
  %72 = load i64*, i64** %15, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  %74 = load i64, i64* %73, align 8
  %75 = call i64 %71(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load i64*, i64** %15, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i8
  %82 = load i8*, i8** %14, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %14, align 8
  store i8 %81, i8* %82, align 1
  br label %103

84:                                               ; preds = %70
  %85 = load i64, i64* %11, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %84
  %88 = load i64*, i64** %15, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** %15, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 1
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = call i32 @FT_TRACE0(i8* %94)
  %96 = load i64*, i64** %15, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 1
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i8
  %100 = load i8*, i8** %14, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %14, align 8
  store i8 %99, i8* %100, align 1
  br label %102

102:                                              ; preds = %87, %84
  br label %103

103:                                              ; preds = %102, %77
  br label %104

104:                                              ; preds = %103, %65
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %16, align 4
  %108 = load i64*, i64** %15, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 2
  store i64* %109, i64** %15, align 8
  br label %62

110:                                              ; preds = %62
  %111 = load i8*, i8** %14, align 8
  store i8 0, i8* %111, align 1
  %112 = call i32 (...) @FT_FRAME_EXIT()
  %113 = load i8*, i8** %13, align 8
  store i8* %113, i8** %6, align 8
  br label %114

114:                                              ; preds = %110, %41, %28
  %115 = load i8*, i8** %6, align 8
  ret i8* %115
}

declare dso_local i32 @FT_UNUSED(i32) #1

declare dso_local i64 @FT_ALLOC(i8*, i32) #1

declare dso_local i64 @FT_STREAM_SEEK(i64) #1

declare dso_local i64 @FT_FRAME_ENTER(i32) #1

declare dso_local i32 @FT_FREE(i8*) #1

declare dso_local i32 @FT_TRACE0(i8*) #1

declare dso_local i32 @FT_FRAME_EXIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
