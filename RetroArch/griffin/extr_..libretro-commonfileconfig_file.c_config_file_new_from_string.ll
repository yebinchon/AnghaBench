; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file.c_config_file_new_from_string.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file.c_config_file_new_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i32, %struct.config_entry_list*, %struct.config_entry_list*, i32*, i64, i32*, i32* }
%struct.config_entry_list = type { i32, %struct.config_entry_list*, i32*, i32* }
%struct.string_list = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.config_file* @config_file_new_from_string(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.config_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.string_list*, align 8
  %8 = alloca %struct.config_file*, align 8
  %9 = alloca %struct.config_entry_list*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.string_list* null, %struct.string_list** %7, align 8
  %11 = call i64 @malloc(i32 56)
  %12 = inttoptr i64 %11 to %struct.config_file*
  store %struct.config_file* %12, %struct.config_file** %8, align 8
  %13 = load %struct.config_file*, %struct.config_file** %8, align 8
  %14 = icmp ne %struct.config_file* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.config_file* null, %struct.config_file** %3, align 8
  br label %137

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load %struct.config_file*, %struct.config_file** %8, align 8
  store %struct.config_file* %20, %struct.config_file** %3, align 8
  br label %137

21:                                               ; preds = %16
  %22 = load %struct.config_file*, %struct.config_file** %8, align 8
  %23 = getelementptr inbounds %struct.config_file, %struct.config_file* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  %24 = load %struct.config_file*, %struct.config_file** %8, align 8
  %25 = getelementptr inbounds %struct.config_file, %struct.config_file* %24, i32 0, i32 2
  store %struct.config_entry_list* null, %struct.config_entry_list** %25, align 8
  %26 = load %struct.config_file*, %struct.config_file** %8, align 8
  %27 = getelementptr inbounds %struct.config_file, %struct.config_file* %26, i32 0, i32 1
  store %struct.config_entry_list* null, %struct.config_entry_list** %27, align 8
  %28 = load %struct.config_file*, %struct.config_file** %8, align 8
  %29 = getelementptr inbounds %struct.config_file, %struct.config_file* %28, i32 0, i32 6
  store i32* null, i32** %29, align 8
  %30 = load %struct.config_file*, %struct.config_file** %8, align 8
  %31 = getelementptr inbounds %struct.config_file, %struct.config_file* %30, i32 0, i32 5
  store i32* null, i32** %31, align 8
  %32 = load %struct.config_file*, %struct.config_file** %8, align 8
  %33 = getelementptr inbounds %struct.config_file, %struct.config_file* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.config_file*, %struct.config_file** %8, align 8
  %35 = getelementptr inbounds %struct.config_file, %struct.config_file* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @string_is_empty(i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %21
  %40 = load i8*, i8** %5, align 8
  %41 = call i32* @strdup(i8* %40)
  %42 = load %struct.config_file*, %struct.config_file** %8, align 8
  %43 = getelementptr inbounds %struct.config_file, %struct.config_file* %42, i32 0, i32 3
  store i32* %41, i32** %43, align 8
  br label %44

44:                                               ; preds = %39, %21
  %45 = load i8*, i8** %4, align 8
  %46 = call %struct.string_list* @string_split(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.string_list* %46, %struct.string_list** %7, align 8
  %47 = load %struct.string_list*, %struct.string_list** %7, align 8
  %48 = icmp ne %struct.string_list* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load %struct.config_file*, %struct.config_file** %8, align 8
  store %struct.config_file* %50, %struct.config_file** %3, align 8
  br label %137

51:                                               ; preds = %44
  store i64 0, i64* %6, align 8
  br label %52

52:                                               ; preds = %130, %51
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.string_list*, %struct.string_list** %7, align 8
  %55 = getelementptr inbounds %struct.string_list, %struct.string_list* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %133

58:                                               ; preds = %52
  %59 = call i64 @malloc(i32 32)
  %60 = inttoptr i64 %59 to %struct.config_entry_list*
  store %struct.config_entry_list* %60, %struct.config_entry_list** %9, align 8
  %61 = load %struct.string_list*, %struct.string_list** %7, align 8
  %62 = getelementptr inbounds %struct.string_list, %struct.string_list* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %10, align 8
  %68 = load %struct.config_entry_list*, %struct.config_entry_list** %9, align 8
  %69 = icmp ne %struct.config_entry_list* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %58
  %71 = load %struct.string_list*, %struct.string_list** %7, align 8
  %72 = call i32 @string_list_free(%struct.string_list* %71)
  %73 = load %struct.config_file*, %struct.config_file** %8, align 8
  %74 = call i32 @config_file_free(%struct.config_file* %73)
  store %struct.config_file* null, %struct.config_file** %3, align 8
  br label %137

75:                                               ; preds = %58
  %76 = load %struct.config_entry_list*, %struct.config_entry_list** %9, align 8
  %77 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load %struct.config_entry_list*, %struct.config_entry_list** %9, align 8
  %79 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %78, i32 0, i32 3
  store i32* null, i32** %79, align 8
  %80 = load %struct.config_entry_list*, %struct.config_entry_list** %9, align 8
  %81 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %80, i32 0, i32 2
  store i32* null, i32** %81, align 8
  %82 = load %struct.config_entry_list*, %struct.config_entry_list** %9, align 8
  %83 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %82, i32 0, i32 1
  store %struct.config_entry_list* null, %struct.config_entry_list** %83, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %120

86:                                               ; preds = %75
  %87 = load %struct.config_file*, %struct.config_file** %8, align 8
  %88 = icmp ne %struct.config_file* %87, null
  br i1 %88, label %89, label %120

89:                                               ; preds = %86
  %90 = load i8*, i8** %10, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %119

94:                                               ; preds = %89
  %95 = load %struct.config_file*, %struct.config_file** %8, align 8
  %96 = load %struct.config_entry_list*, %struct.config_entry_list** %9, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = call i64 @parse_line(%struct.config_file* %95, %struct.config_entry_list* %96, i8* %97, i32* null)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %94
  %101 = load %struct.config_file*, %struct.config_file** %8, align 8
  %102 = getelementptr inbounds %struct.config_file, %struct.config_file* %101, i32 0, i32 2
  %103 = load %struct.config_entry_list*, %struct.config_entry_list** %102, align 8
  %104 = icmp ne %struct.config_entry_list* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.config_entry_list*, %struct.config_entry_list** %9, align 8
  %107 = load %struct.config_file*, %struct.config_file** %8, align 8
  %108 = getelementptr inbounds %struct.config_file, %struct.config_file* %107, i32 0, i32 1
  %109 = load %struct.config_entry_list*, %struct.config_entry_list** %108, align 8
  %110 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %109, i32 0, i32 1
  store %struct.config_entry_list* %106, %struct.config_entry_list** %110, align 8
  br label %115

111:                                              ; preds = %100
  %112 = load %struct.config_entry_list*, %struct.config_entry_list** %9, align 8
  %113 = load %struct.config_file*, %struct.config_file** %8, align 8
  %114 = getelementptr inbounds %struct.config_file, %struct.config_file* %113, i32 0, i32 2
  store %struct.config_entry_list* %112, %struct.config_entry_list** %114, align 8
  br label %115

115:                                              ; preds = %111, %105
  %116 = load %struct.config_entry_list*, %struct.config_entry_list** %9, align 8
  %117 = load %struct.config_file*, %struct.config_file** %8, align 8
  %118 = getelementptr inbounds %struct.config_file, %struct.config_file* %117, i32 0, i32 1
  store %struct.config_entry_list* %116, %struct.config_entry_list** %118, align 8
  br label %119

119:                                              ; preds = %115, %94, %89
  br label %120

120:                                              ; preds = %119, %86, %75
  %121 = load %struct.config_entry_list*, %struct.config_entry_list** %9, align 8
  %122 = load %struct.config_file*, %struct.config_file** %8, align 8
  %123 = getelementptr inbounds %struct.config_file, %struct.config_file* %122, i32 0, i32 1
  %124 = load %struct.config_entry_list*, %struct.config_entry_list** %123, align 8
  %125 = icmp ne %struct.config_entry_list* %121, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load %struct.config_entry_list*, %struct.config_entry_list** %9, align 8
  %128 = call i32 @free(%struct.config_entry_list* %127)
  br label %129

129:                                              ; preds = %126, %120
  br label %130

130:                                              ; preds = %129
  %131 = load i64, i64* %6, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %6, align 8
  br label %52

133:                                              ; preds = %52
  %134 = load %struct.string_list*, %struct.string_list** %7, align 8
  %135 = call i32 @string_list_free(%struct.string_list* %134)
  %136 = load %struct.config_file*, %struct.config_file** %8, align 8
  store %struct.config_file* %136, %struct.config_file** %3, align 8
  br label %137

137:                                              ; preds = %133, %70, %49, %19, %15
  %138 = load %struct.config_file*, %struct.config_file** %3, align 8
  ret %struct.config_file* %138
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local %struct.string_list* @string_split(i8*, i8*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local i32 @config_file_free(%struct.config_file*) #1

declare dso_local i64 @parse_line(%struct.config_file*, %struct.config_entry_list*, i8*, i32*) #1

declare dso_local i32 @free(%struct.config_entry_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
