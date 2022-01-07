; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_configuration.c_open_default_config_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_configuration.c_open_default_config_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@FILE_PATH_MAIN_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Looking for config in: \22%s\22.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c".retroarch.cfg\00", align 1
@GLOBAL_CONFIG_DIR = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [67 x i8] c"Config: using skeleton config \22%s\22 as base for a new config file.\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"config_save_on_exit\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Failed to create new config file in: \22%s\22.\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Config: Created new config file in: \22%s\22.\0A\00", align 1
@RARCH_PATH_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @open_default_config_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_default_config_file() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %12 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 1
  store i64 %14, i64* %3, align 8
  %15 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 1
  %18 = trunc i64 %17 to i32
  %19 = call i64 @malloc(i32 %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %4, align 8
  %21 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 1
  %24 = trunc i64 %23 to i32
  %25 = call i64 @malloc(i32 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %5, align 8
  %27 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 1
  %30 = trunc i64 %29 to i32
  %31 = call i64 @malloc(i32 %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %6, align 8
  store i32* null, i32** %7, align 8
  %33 = load i32, i32* %2, align 4
  %34 = load i64, i64* %3, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @fill_pathname_application_data(i8* %41, i64 %42)
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %0
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* @FILE_PATH_MAIN_CONFIG, align 4
  %50 = call i8* @file_path_str(i32 %49)
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @fill_pathname_join(i8* %47, i8* %48, i8* %50, i64 %51)
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %53)
  %55 = load i8*, i8** %5, align 8
  %56 = call i32* @config_file_new_from_path_to_string(i8* %55)
  store i32* %56, i32** %7, align 8
  br label %57

57:                                               ; preds = %46, %0
  %58 = load i32*, i32** %7, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %57
  %61 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i8*, i8** %5, align 8
  %65 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i64, i64* %3, align 8
  %67 = call i32 @fill_pathname_join(i8* %64, i8* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %66)
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %68)
  %70 = load i8*, i8** %5, align 8
  %71 = call i32* @config_file_new_from_path_to_string(i8* %70)
  store i32* %71, i32** %7, align 8
  br label %72

72:                                               ; preds = %63, %60, %57
  %73 = load i32*, i32** %7, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %152, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %2, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %152

78:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  %79 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 1
  %82 = trunc i64 %81 to i32
  %83 = call i64 @malloc(i32 %82)
  %84 = inttoptr i64 %83 to i8*
  store i8* %84, i8** %9, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  store i8 0, i8* %86, align 1
  %87 = load i8*, i8** %5, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = load i64, i64* %3, align 8
  %90 = call i32 @strlcpy(i8* %87, i8* %88, i64 %89)
  %91 = load i8*, i8** %9, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = load i64, i64* %3, align 8
  %94 = call i32 @fill_pathname_basedir(i8* %91, i8* %92, i64 %93)
  %95 = load i8*, i8** %5, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = load i32, i32* @FILE_PATH_MAIN_CONFIG, align 4
  %98 = call i8* @file_path_str(i32 %97)
  %99 = load i64, i64* %3, align 8
  %100 = call i32 @fill_pathname_join(i8* %95, i8* %96, i8* %98, i64 %99)
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @path_mkdir(i8* %101)
  store i32 %102, i32* %8, align 4
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %151

107:                                              ; preds = %78
  %108 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 1
  %111 = trunc i64 %110 to i32
  %112 = call i64 @malloc(i32 %111)
  %113 = inttoptr i64 %112 to i8*
  store i8* %113, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %114 = load i8*, i8** %10, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  store i8 0, i8* %115, align 1
  %116 = load i8*, i8** %10, align 8
  %117 = load i8*, i8** @GLOBAL_CONFIG_DIR, align 8
  %118 = load i32, i32* @FILE_PATH_MAIN_CONFIG, align 4
  %119 = call i8* @file_path_str(i32 %118)
  %120 = load i64, i64* %3, align 8
  %121 = call i32 @fill_pathname_join(i8* %116, i8* %117, i8* %119, i64 %120)
  %122 = load i8*, i8** %10, align 8
  %123 = call i32* @config_file_new_from_path_to_string(i8* %122)
  store i32* %123, i32** %7, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %107
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i8* %127)
  br label %131

129:                                              ; preds = %107
  %130 = call i32* (...) @config_file_new_alloc()
  store i32* %130, i32** %7, align 8
  br label %131

131:                                              ; preds = %129, %126
  %132 = load i8*, i8** %10, align 8
  %133 = call i32 @free(i8* %132)
  %134 = load i32*, i32** %7, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @config_set_bool(i32* %137, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %139 = load i32*, i32** %7, align 8
  %140 = load i8*, i8** %5, align 8
  %141 = call i32 @config_file_write(i32* %139, i8* %140, i32 1)
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %136, %131
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load i8*, i8** %5, align 8
  %147 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %146)
  br label %170

148:                                              ; preds = %142
  %149 = load i8*, i8** %5, align 8
  %150 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* %149)
  br label %151

151:                                              ; preds = %148, %78
  br label %152

152:                                              ; preds = %151, %75, %72
  %153 = load i8*, i8** %4, align 8
  %154 = load i8*, i8** %5, align 8
  %155 = load i8*, i8** %6, align 8
  %156 = load i32*, i32** %7, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %152
  br label %170

159:                                              ; preds = %152
  %160 = load i32, i32* @RARCH_PATH_CONFIG, align 4
  %161 = load i8*, i8** %5, align 8
  %162 = call i32 @path_set(i32 %160, i8* %161)
  %163 = load i8*, i8** %4, align 8
  %164 = call i32 @free(i8* %163)
  %165 = load i8*, i8** %5, align 8
  %166 = call i32 @free(i8* %165)
  %167 = load i8*, i8** %6, align 8
  %168 = call i32 @free(i8* %167)
  %169 = load i32*, i32** %7, align 8
  store i32* %169, i32** %1, align 8
  br label %183

170:                                              ; preds = %158, %145
  %171 = load i32*, i32** %7, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32*, i32** %7, align 8
  %175 = call i32 @config_file_free(i32* %174)
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i8*, i8** %4, align 8
  %178 = call i32 @free(i8* %177)
  %179 = load i8*, i8** %5, align 8
  %180 = call i32 @free(i8* %179)
  %181 = load i8*, i8** %6, align 8
  %182 = call i32 @free(i8* %181)
  store i32* null, i32** %1, align 8
  br label %183

183:                                              ; preds = %176, %159
  %184 = load i32*, i32** %1, align 8
  ret i32* %184
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fill_pathname_application_data(i8*, i64) #1

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i64) #1

declare dso_local i8* @file_path_str(i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*) #1

declare dso_local i32* @config_file_new_from_path_to_string(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @fill_pathname_basedir(i8*, i8*, i64) #1

declare dso_local i32 @path_mkdir(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @RARCH_WARN(i8*, i8*) #1

declare dso_local i32* @config_file_new_alloc(...) #1

declare dso_local i32 @config_set_bool(i32*, i8*, i32) #1

declare dso_local i32 @config_file_write(i32*, i8*, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i8*) #1

declare dso_local i32 @path_set(i32, i8*) #1

declare dso_local i32 @config_file_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
