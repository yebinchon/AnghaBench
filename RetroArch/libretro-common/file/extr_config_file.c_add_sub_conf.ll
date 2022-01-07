; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_config_file.c_add_sub_conf.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_config_file.c_add_sub_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.config_include_list* }
%struct.config_include_list = type { %struct.config_include_list*, i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, i32*)* @add_sub_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_sub_conf(%struct.TYPE_6__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.config_include_list*, align 8
  %11 = alloca %struct.config_include_list*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load %struct.config_include_list*, %struct.config_include_list** %19, align 8
  store %struct.config_include_list* %20, %struct.config_include_list** %10, align 8
  %21 = call i64 @malloc(i32 16)
  %22 = inttoptr i64 %21 to %struct.config_include_list*
  store %struct.config_include_list* %22, %struct.config_include_list** %11, align 8
  %23 = load %struct.config_include_list*, %struct.config_include_list** %11, align 8
  %24 = icmp ne %struct.config_include_list* %23, null
  br i1 %24, label %25, label %53

25:                                               ; preds = %3
  %26 = load %struct.config_include_list*, %struct.config_include_list** %11, align 8
  %27 = getelementptr inbounds %struct.config_include_list, %struct.config_include_list* %26, i32 0, i32 0
  store %struct.config_include_list* null, %struct.config_include_list** %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strdup(i8* %28)
  %30 = load %struct.config_include_list*, %struct.config_include_list** %11, align 8
  %31 = getelementptr inbounds %struct.config_include_list, %struct.config_include_list* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.config_include_list*, %struct.config_include_list** %10, align 8
  %33 = icmp ne %struct.config_include_list* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %40, %34
  %36 = load %struct.config_include_list*, %struct.config_include_list** %10, align 8
  %37 = getelementptr inbounds %struct.config_include_list, %struct.config_include_list* %36, i32 0, i32 0
  %38 = load %struct.config_include_list*, %struct.config_include_list** %37, align 8
  %39 = icmp ne %struct.config_include_list* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.config_include_list*, %struct.config_include_list** %10, align 8
  %42 = getelementptr inbounds %struct.config_include_list, %struct.config_include_list* %41, i32 0, i32 0
  %43 = load %struct.config_include_list*, %struct.config_include_list** %42, align 8
  store %struct.config_include_list* %43, %struct.config_include_list** %10, align 8
  br label %35

44:                                               ; preds = %35
  %45 = load %struct.config_include_list*, %struct.config_include_list** %11, align 8
  %46 = load %struct.config_include_list*, %struct.config_include_list** %10, align 8
  %47 = getelementptr inbounds %struct.config_include_list, %struct.config_include_list* %46, i32 0, i32 0
  store %struct.config_include_list* %45, %struct.config_include_list** %47, align 8
  br label %52

48:                                               ; preds = %25
  %49 = load %struct.config_include_list*, %struct.config_include_list** %11, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  store %struct.config_include_list* %49, %struct.config_include_list** %51, align 8
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %3
  %54 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %54, align 16
  %55 = load i8*, i8** %5, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 126
  br i1 %58, label %59, label %74

59:                                               ; preds = %53
  %60 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %60, i8** %12, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i8*, i8** %12, align 8
  br label %66

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i8* [ %64, %63 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %65 ]
  %68 = trunc i64 %15 to i32
  %69 = call i32 @strlcpy(i8* %17, i8* %67, i32 %68)
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = trunc i64 %15 to i32
  %73 = call i32 @strlcat(i8* %17, i8* %71, i32 %72)
  br label %88

74:                                               ; preds = %53
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @string_is_empty(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = trunc i64 %15 to i32
  %86 = call i32 @fill_pathname_resolve_relative(i8* %17, i32 %83, i8* %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %74
  br label %88

88:                                               ; preds = %87, %66
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  %93 = load i32*, i32** %6, align 8
  %94 = call i64 @config_file_new_internal(i8* %17, i64 %92, i32* %93)
  %95 = inttoptr i64 %94 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %95, %struct.TYPE_6__** %9, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %97 = icmp ne %struct.TYPE_6__* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %88
  store i32 1, i32* %13, align 4
  br label %105

99:                                               ; preds = %88
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %102 = call i32 @add_child_list(%struct.TYPE_6__* %100, %struct.TYPE_6__* %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %104 = call i32 @config_file_free(%struct.TYPE_6__* %103)
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %99, %98
  %106 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %13, align 4
  switch i32 %107, label %109 [
    i32 0, label %108
    i32 1, label %108
  ]

108:                                              ; preds = %105, %105
  ret void

109:                                              ; preds = %105
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @strdup(i8*) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @string_is_empty(i32) #2

declare dso_local i32 @fill_pathname_resolve_relative(i8*, i32, i8*, i32) #2

declare dso_local i64 @config_file_new_internal(i8*, i64, i32*) #2

declare dso_local i32 @add_child_list(%struct.TYPE_6__*, %struct.TYPE_6__*) #2

declare dso_local i32 @config_file_free(%struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
