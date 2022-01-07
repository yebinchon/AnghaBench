; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_deferred_push.c_deferred_push_cursor_manager_list_deferred.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_deferred_push.c_deferred_push_cursor_manager_list_deferred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"query\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rdb\00", align 1
@DISPLAYLIST_DATABASE_QUERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @deferred_push_cursor_manager_list_deferred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deferred_push_cursor_manager_list_deferred(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %13 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  store i32 -1, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  store i32* null, i32** %10, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32* @config_file_new_from_path_to_string(i8* %20)
  store i32* %21, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %105

24:                                               ; preds = %1
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @config_get_string(i32* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %7)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %97

29:                                               ; preds = %24
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @config_get_string(i32* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %97

34:                                               ; preds = %29
  %35 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 0, i8* %35, align 16
  %36 = call %struct.TYPE_8__* (...) @config_get_ptr()
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %12, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %38 = icmp ne %struct.TYPE_8__* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = trunc i64 %14 to i32
  %46 = call i32 @fill_pathname_join(i8* %16, i32 %43, i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %34
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @string_is_empty(i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @free(i8* %56)
  br label %58

58:                                               ; preds = %53, %47
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @string_is_empty(i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @free(i8* %67)
  br label %69

69:                                               ; preds = %64, %58
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @strdup(i8* %72)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @string_is_empty(i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %69
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @free(i8* %84)
  br label %86

86:                                               ; preds = %81, %69
  %87 = load i8*, i8** %7, align 8
  %88 = call i8* @strdup(i8* %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = call i8* @strdup(i8* %16)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = load i32, i32* @DISPLAYLIST_DATABASE_QUERY, align 4
  %96 = call i32 @deferred_push_dlist(%struct.TYPE_9__* %94, i32 %95)
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %86, %33, %28
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @config_file_free(i32* %98)
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @free(i8* %100)
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 @free(i8* %102)
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %105

105:                                              ; preds = %97, %23
  %106 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @config_file_new_from_path_to_string(i8*) #2

declare dso_local i32 @config_get_string(i32*, i8*, i8**) #2

declare dso_local %struct.TYPE_8__* @config_get_ptr(...) #2

declare dso_local i32 @fill_pathname_join(i8*, i32, i8*, i32) #2

declare dso_local i32 @string_is_empty(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @deferred_push_dlist(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @config_file_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
