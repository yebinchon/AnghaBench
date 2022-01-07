; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..gfxvideo_filter.c_rarch_softfilter_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..gfxvideo_filter.c_rarch_softfilter_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.string_list = type { i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"[SoftFilter]: Did not find config: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"[SoftFitler]: Failed to append softfilter plugins...\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"[SoftFitler]: Failed to create softfilter graph...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @rarch_softfilter_new(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.string_list*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = call i32 (...) @cpu_features_get()
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  store %struct.string_list* null, %struct.string_list** %15, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %16, align 8
  %23 = call i64 @calloc(i32 1, i32 4)
  %24 = inttoptr i64 %23 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %16, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  store i32 1, i32* %17, align 4
  br label %72

28:                                               ; preds = %5
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @config_file_new_from_path_to_string(i8* %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = icmp ne i32 %30, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %63

37:                                               ; preds = %28
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %39 = load %struct.string_list*, %struct.string_list** %15, align 8
  %40 = call i32 @append_softfilter_plugs(%struct.TYPE_6__* %38, %struct.string_list* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %63

44:                                               ; preds = %37
  %45 = load %struct.string_list*, %struct.string_list** %15, align 8
  %46 = icmp ne %struct.string_list* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.string_list*, %struct.string_list** %15, align 8
  %49 = call i32 @string_list_free(%struct.string_list* %48)
  br label %50

50:                                               ; preds = %47, %44
  store %struct.string_list* null, %struct.string_list** %15, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @create_softfilter_graph(%struct.TYPE_6__* %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %50
  %60 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %63

61:                                               ; preds = %50
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %6, align 8
  store i32 1, i32* %17, align 4
  br label %72

63:                                               ; preds = %59, %42, %34
  %64 = load %struct.string_list*, %struct.string_list** %15, align 8
  %65 = icmp ne %struct.string_list* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.string_list*, %struct.string_list** %15, align 8
  %68 = call i32 @string_list_free(%struct.string_list* %67)
  br label %69

69:                                               ; preds = %66, %63
  store %struct.string_list* null, %struct.string_list** %15, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %71 = call i32 @rarch_softfilter_free(%struct.TYPE_6__* %70)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  store i32 1, i32* %17, align 4
  br label %72

72:                                               ; preds = %69, %61, %27
  %73 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  ret %struct.TYPE_6__* %74
}

declare dso_local i32 @cpu_features_get(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @config_file_new_from_path_to_string(i8*) #1

declare dso_local i32 @RARCH_ERR(i8*, ...) #1

declare dso_local i32 @append_softfilter_plugs(%struct.TYPE_6__*, %struct.string_list*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local i32 @create_softfilter_graph(%struct.TYPE_6__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rarch_softfilter_free(%struct.TYPE_6__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
