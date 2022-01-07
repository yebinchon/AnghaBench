; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_content.c_content_file_init_subsystem.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_content.c_content_file_init_subsystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_subsystem_info = type { i64, i8* }
%struct.string_list = type { i64 }

@RARCH_PATH_SUBSYSTEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Failed to find subsystem \22%s\22 in libretro implementation.\0A\00", align 1
@MSG_ERROR_LIBRETRO_CORE_REQUIRES_SPECIAL_CONTENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [97 x i8] c"Libretro core requires %u content files for subsystem \22%s\22, but %u content files were provided.\0A\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"Libretro core takes no content for subsystem \22%s\22, but %u content files were provided.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.retro_subsystem_info* (%struct.retro_subsystem_info*, i64, i8**, i32*)* @content_file_init_subsystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.retro_subsystem_info* @content_file_init_subsystem(%struct.retro_subsystem_info* %0, i64 %1, i8** %2, i32* %3) #0 {
  %5 = alloca %struct.retro_subsystem_info*, align 8
  %6 = alloca %struct.retro_subsystem_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.string_list*, align 8
  %13 = alloca %struct.retro_subsystem_info*, align 8
  store %struct.retro_subsystem_info* %0, %struct.retro_subsystem_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 1024, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = call i64 @malloc(i64 %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %11, align 8
  %17 = call %struct.string_list* (...) @path_get_subsystem_list()
  store %struct.string_list* %17, %struct.string_list** %12, align 8
  %18 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @RARCH_PATH_SUBSYSTEM, align 4
  %22 = call i8* @path_get(i32 %21)
  %23 = call %struct.retro_subsystem_info* @libretro_find_subsystem_info(%struct.retro_subsystem_info* %18, i32 %20, i8* %22)
  store %struct.retro_subsystem_info* %23, %struct.retro_subsystem_info** %13, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %25, align 1
  %26 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %13, align 8
  %27 = icmp ne %struct.retro_subsystem_info* %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %4
  %29 = load i8*, i8** %11, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i32, i32* @RARCH_PATH_SUBSYSTEM, align 4
  %32 = call i8* @path_get(i32 %31)
  %33 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %29, i64 %30, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i8*, i8** %11, align 8
  %35 = call i8* @strdup(i8* %34)
  %36 = load i8**, i8*** %8, align 8
  store i8* %35, i8** %36, align 8
  br label %119

37:                                               ; preds = %4
  %38 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %13, align 8
  %39 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load %struct.string_list*, %struct.string_list** %12, align 8
  %44 = icmp ne %struct.string_list* %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* @MSG_ERROR_LIBRETRO_CORE_REQUIRES_SPECIAL_CONTENT, align 4
  %48 = call i32 @msg_hash_to_str(i32 %47)
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @strlcpy(i8* %46, i32 %48, i64 %49)
  %51 = load i8*, i8** %11, align 8
  %52 = call i8* @strdup(i8* %51)
  %53 = load i8**, i8*** %8, align 8
  store i8* %52, i8** %53, align 8
  br label %119

54:                                               ; preds = %42, %37
  %55 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %13, align 8
  %56 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %54
  %60 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %13, align 8
  %61 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.string_list*, %struct.string_list** %12, align 8
  %64 = getelementptr inbounds %struct.string_list, %struct.string_list* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %59
  %68 = load i8*, i8** %11, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %13, align 8
  %71 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %13, align 8
  %75 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.string_list*, %struct.string_list** %12, align 8
  %78 = getelementptr inbounds %struct.string_list, %struct.string_list* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %68, i64 %69, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0), i8* %73, i8* %76, i32 %80)
  %82 = load i8*, i8** %11, align 8
  %83 = call i8* @strdup(i8* %82)
  %84 = load i8**, i8*** %8, align 8
  store i8* %83, i8** %84, align 8
  br label %119

85:                                               ; preds = %59, %54
  %86 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %13, align 8
  %87 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %112, label %90

90:                                               ; preds = %85
  %91 = load %struct.string_list*, %struct.string_list** %12, align 8
  %92 = icmp ne %struct.string_list* %91, null
  br i1 %92, label %93, label %112

93:                                               ; preds = %90
  %94 = load %struct.string_list*, %struct.string_list** %12, align 8
  %95 = getelementptr inbounds %struct.string_list, %struct.string_list* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %93
  %99 = load i8*, i8** %11, align 8
  %100 = load i64, i64* %10, align 8
  %101 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %13, align 8
  %102 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.string_list*, %struct.string_list** %12, align 8
  %105 = getelementptr inbounds %struct.string_list, %struct.string_list* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %99, i64 %100, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0), i8* %103, i32 %107)
  %109 = load i8*, i8** %11, align 8
  %110 = call i8* @strdup(i8* %109)
  %111 = load i8**, i8*** %8, align 8
  store i8* %110, i8** %111, align 8
  br label %119

112:                                              ; preds = %93, %90, %85
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113
  %115 = load i32*, i32** %9, align 8
  store i32 1, i32* %115, align 4
  %116 = load i8*, i8** %11, align 8
  %117 = call i32 @free(i8* %116)
  %118 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %13, align 8
  store %struct.retro_subsystem_info* %118, %struct.retro_subsystem_info** %5, align 8
  br label %123

119:                                              ; preds = %98, %67, %45, %28
  %120 = load i32*, i32** %9, align 8
  store i32 0, i32* %120, align 4
  %121 = load i8*, i8** %11, align 8
  %122 = call i32 @free(i8* %121)
  store %struct.retro_subsystem_info* null, %struct.retro_subsystem_info** %5, align 8
  br label %123

123:                                              ; preds = %119, %114
  %124 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %5, align 8
  ret %struct.retro_subsystem_info* %124
}

declare dso_local i64 @malloc(i64) #1

declare dso_local %struct.string_list* @path_get_subsystem_list(...) #1

declare dso_local %struct.retro_subsystem_info* @libretro_find_subsystem_info(%struct.retro_subsystem_info*, i32, i8*) #1

declare dso_local i8* @path_get(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlcpy(i8*, i32, i64) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
