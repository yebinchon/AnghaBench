; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_path_set_special.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_path_set_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.string_list = type { i32 }
%union.string_list_elem_attr = type { i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@g_extern = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@subsystem_fullpaths = common dso_local global %struct.string_list* null, align 8
@.str = private unnamed_addr constant [4 x i8] c" + \00", align 1
@RARCH_DIR_CURRENT_SAVESTATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c".state\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s \22%s\22.\0A\00", align 1
@MSG_REDIRECTING_SAVESTATE_TO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @path_set_special(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.string_list_elem_attr, align 4
  %9 = alloca %struct.string_list*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  store %struct.string_list* null, %struct.string_list** %9, align 8
  store %struct.TYPE_5__* @g_extern, %struct.TYPE_5__** %10, align 8
  %15 = load i8**, i8*** %3, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @path_set_basename(i8* %17)
  %19 = call %struct.string_list* (...) @string_list_new()
  store %struct.string_list* %19, %struct.string_list** @subsystem_fullpaths, align 8
  %20 = call %struct.string_list* (...) @string_list_new()
  store %struct.string_list* %20, %struct.string_list** %9, align 8
  %21 = load %struct.string_list*, %struct.string_list** @subsystem_fullpaths, align 8
  %22 = call i32 @retro_assert(%struct.string_list* %21)
  %23 = bitcast %union.string_list_elem_attr* %8 to i32*
  store i32 0, i32* %23, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %51, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %24
  %29 = load %struct.string_list*, %struct.string_list** @subsystem_fullpaths, align 8
  %30 = load i8**, i8*** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @string_list_append(%struct.string_list* %29, i8* %34, i32 %36)
  %38 = load i8**, i8*** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = trunc i64 %12 to i32
  %44 = call i32 @strlcpy(i8* %14, i8* %42, i32 %43)
  %45 = call i32 @path_remove_extension(i8* %14)
  %46 = load %struct.string_list*, %struct.string_list** %9, align 8
  %47 = call i8* @path_basename(i8* %14)
  %48 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @string_list_append(%struct.string_list* %46, i8* %47, i32 %49)
  br label %51

51:                                               ; preds = %28
  %52 = load i32, i32* %5, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %24

54:                                               ; preds = %24
  %55 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %55, align 16
  %56 = trunc i64 %12 to i32
  %57 = load %struct.string_list*, %struct.string_list** %9, align 8
  %58 = call i32 @string_list_join_concat(i8* %14, i32 %56, %struct.string_list* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %60 = icmp ne %struct.TYPE_5__* %59, null
  br i1 %60, label %61, label %95

61:                                               ; preds = %54
  %62 = load i32, i32* @RARCH_DIR_CURRENT_SAVESTATE, align 4
  %63 = call i8* @dir_get(i32 %62)
  %64 = call i64 @path_is_directory(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* @RARCH_DIR_CURRENT_SAVESTATE, align 4
  %72 = call i8* @dir_get(i32 %71)
  %73 = call i32 @strlcpy(i8* %70, i8* %72, i32 8)
  br label %74

74:                                               ; preds = %66, %61
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @path_is_directory(i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %74
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @fill_pathname_dir(i8* %85, i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %87 = load i32, i32* @MSG_REDIRECTING_SAVESTATE_TO, align 4
  %88 = call i32 @msg_hash_to_str(i32 %87)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %88, i8* %92)
  br label %94

94:                                               ; preds = %81, %74
  br label %95

95:                                               ; preds = %94, %54
  %96 = load %struct.string_list*, %struct.string_list** %9, align 8
  %97 = icmp ne %struct.string_list* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.string_list*, %struct.string_list** %9, align 8
  %100 = call i32 @string_list_free(%struct.string_list* %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %102)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @path_set_basename(i8*) #2

declare dso_local %struct.string_list* @string_list_new(...) #2

declare dso_local i32 @retro_assert(%struct.string_list*) #2

declare dso_local i32 @string_list_append(%struct.string_list*, i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @path_remove_extension(i8*) #2

declare dso_local i8* @path_basename(i8*) #2

declare dso_local i32 @string_list_join_concat(i8*, i32, %struct.string_list*, i8*) #2

declare dso_local i64 @path_is_directory(i8*) #2

declare dso_local i8* @dir_get(i32) #2

declare dso_local i32 @fill_pathname_dir(i8*, i8*, i8*, i32) #2

declare dso_local i32 @RARCH_LOG(i8*, i32, i8*) #2

declare dso_local i32 @msg_hash_to_str(i32) #2

declare dso_local i32 @string_list_free(%struct.string_list*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
