; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_autodetect.c_input_autoconfigure_joypad_from_conf_dir.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_autodetect.c_input_autoconfigure_joypad_from_conf_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.string_list = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@APPLICATION_SPECIAL_DIRECTORY_AUTOCONFIG = common dso_local global i32 0, align 4
@DIR_LIST_AUTOCONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"cfg\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"[Autoconf]: No profiles found.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"[Autoconf]: %d profiles found.\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"[Autoconf]: selected configuration: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @input_autoconfigure_joypad_from_conf_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_autoconfigure_joypad_from_conf_dir(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.string_list*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %18 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store %struct.string_list* null, %struct.string_list** %14, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %25, align 16
  %26 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %26, align 16
  %27 = trunc i64 %19 to i32
  %28 = load i32, i32* @APPLICATION_SPECIAL_DIRECTORY_AUTOCONFIG, align 4
  %29 = call i32 @fill_pathname_application_special(i8* %21, i32 %27, i32 %28)
  %30 = load i32, i32* @DIR_LIST_AUTOCONFIG, align 4
  %31 = call %struct.string_list* @dir_list_new_special(i8* %21, i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.string_list* %31, %struct.string_list** %14, align 8
  %32 = load %struct.string_list*, %struct.string_list** %14, align 8
  %33 = icmp ne %struct.string_list* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load %struct.string_list*, %struct.string_list** %14, align 8
  %36 = getelementptr inbounds %struct.string_list, %struct.string_list* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %34, %2
  %40 = load %struct.string_list*, %struct.string_list** %14, align 8
  %41 = icmp ne %struct.string_list* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.string_list*, %struct.string_list** %14, align 8
  %44 = call i32 @string_list_free(%struct.string_list* %43)
  store %struct.string_list* null, %struct.string_list** %14, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @string_is_empty(i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* @DIR_LIST_AUTOCONFIG, align 4
  %56 = call %struct.string_list* @dir_list_new_special(i8* %54, i32 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.string_list* %56, %struct.string_list** %14, align 8
  br label %57

57:                                               ; preds = %51, %45
  br label %58

58:                                               ; preds = %57, %34
  %59 = load %struct.string_list*, %struct.string_list** %14, align 8
  %60 = icmp ne %struct.string_list* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %149

63:                                               ; preds = %58
  %64 = load %struct.string_list*, %struct.string_list** %14, align 8
  %65 = getelementptr inbounds %struct.string_list, %struct.string_list* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  store i64 0, i64* %6, align 8
  br label %69

69:                                               ; preds = %118, %63
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.string_list*, %struct.string_list** %14, align 8
  %72 = getelementptr inbounds %struct.string_list, %struct.string_list* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %121

75:                                               ; preds = %69
  %76 = load %struct.string_list*, %struct.string_list** %14, align 8
  %77 = getelementptr inbounds %struct.string_list, %struct.string_list* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32* @config_file_new_from_path_to_string(i32 %82)
  store i32* %83, i32** %17, align 8
  %84 = load i32*, i32** %17, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %75
  br label %118

87:                                               ; preds = %75
  %88 = load i32*, i32** %17, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = call i32 @input_autoconfigure_joypad_try_from_conf(i32* %88, %struct.TYPE_7__* %89)
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %87
  %95 = load i64, i64* %6, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %12, align 4
  %98 = load i32*, i32** %13, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32*, i32** %13, align 8
  %102 = call i32 @config_file_free(i32* %101)
  br label %103

103:                                              ; preds = %100, %94
  %104 = load %struct.string_list*, %struct.string_list** %14, align 8
  %105 = getelementptr inbounds %struct.string_list, %struct.string_list* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load i64, i64* %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = trunc i64 %23 to i32
  %112 = call i32 @strlcpy(i8* %24, i32 %110, i32 %111)
  store i32* null, i32** %13, align 8
  %113 = load i32*, i32** %17, align 8
  store i32* %113, i32** %13, align 8
  br label %117

114:                                              ; preds = %87
  %115 = load i32*, i32** %17, align 8
  %116 = call i32 @config_file_free(i32* %115)
  br label %117

117:                                              ; preds = %114, %103
  br label %118

118:                                              ; preds = %117, %86
  %119 = load i64, i64* %6, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %6, align 8
  br label %69

121:                                              ; preds = %69
  %122 = load i32, i32* %11, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %121
  %125 = load i32, i32* %12, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %124
  %128 = load i32*, i32** %13, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  %132 = load i32*, i32** %13, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @input_autoconfigure_joypad_add(i32* %132, %struct.TYPE_7__* %133, i32* %134)
  store i32 1, i32* %10, align 4
  br label %136

136:                                              ; preds = %130, %127, %124, %121
  %137 = load i32*, i32** %13, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32*, i32** %13, align 8
  %141 = call i32 @config_file_free(i32* %140)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load %struct.string_list*, %struct.string_list** %14, align 8
  %144 = call i32 @string_list_free(%struct.string_list* %143)
  %145 = load i32, i32* %10, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %149

148:                                              ; preds = %142
  store i32 1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %149

149:                                              ; preds = %148, %147, %61
  %150 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fill_pathname_application_special(i8*, i32, i32) #2

declare dso_local %struct.string_list* @dir_list_new_special(i8*, i32, i8*) #2

declare dso_local i32 @string_list_free(%struct.string_list*) #2

declare dso_local i32 @string_is_empty(i8*) #2

declare dso_local i32 @RARCH_LOG(i8*, ...) #2

declare dso_local i32* @config_file_new_from_path_to_string(i32) #2

declare dso_local i32 @input_autoconfigure_joypad_try_from_conf(i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @config_file_free(i32*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @input_autoconfigure_joypad_add(i32*, %struct.TYPE_7__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
