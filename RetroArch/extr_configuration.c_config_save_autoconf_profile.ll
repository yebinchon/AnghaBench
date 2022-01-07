; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_configuration.c_config_save_autoconf_profile.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_configuration.c_config_save_autoconf_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_keybind = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@invalid_filename_chars = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [5 x i8] c".cfg\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"input_driver\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"input_device\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"input_vendor_id\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"input_product_id\00", align 1
@RARCH_FIRST_META_KEY = common dso_local global i32 0, align 4
@input_config_binds = common dso_local global %struct.retro_keybind** null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"input\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_save_autoconf_profile(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.retro_keybind*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %7, align 8
  %21 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 1
  store i64 %23, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %24 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %12, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %13, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %14, align 8
  %33 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 1
  %36 = trunc i64 %35 to i32
  %37 = call i64 @malloc(i32 %36)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %15, align 8
  %39 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 1
  %42 = trunc i64 %41 to i32
  %43 = call i64 @malloc(i32 %42)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %16, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i8* @strdup(i8* %45)
  store i8* %46, i8** %17, align 8
  %47 = load i8*, i8** %16, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %15, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 0, i8* %50, align 1
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %74, %2
  %52 = load i64*, i64** @invalid_filename_chars, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %72
  %60 = load i8*, i8** %17, align 8
  %61 = load i64*, i64** @invalid_filename_chars, align 8
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = call i8* @strstr(i8* %60, i64 %65)
  store i8* %66, i8** %18, align 8
  %67 = load i8*, i8** %18, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i8*, i8** %18, align 8
  store i8 95, i8* %70, align 1
  br label %72

71:                                               ; preds = %59
  br label %73

72:                                               ; preds = %69
  br label %59

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %51

77:                                               ; preds = %51
  %78 = load i8*, i8** %17, align 8
  store i8* %78, i8** %4, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @fill_pathname_join(i8* %79, i8* %80, i8* %81, i64 %82)
  %84 = load i8*, i8** %15, align 8
  %85 = call i64 @path_is_directory(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %77
  %88 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 1
  %91 = trunc i64 %90 to i32
  %92 = call i64 @malloc(i32 %91)
  %93 = inttoptr i64 %92 to i8*
  store i8* %93, i8** %19, align 8
  %94 = load i8*, i8** %19, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  store i8 0, i8* %95, align 1
  %96 = load i8*, i8** %19, align 8
  %97 = load i8*, i8** %15, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @fill_pathname_join(i8* %96, i8* %97, i8* %98, i64 %99)
  %101 = load i8*, i8** %16, align 8
  %102 = load i8*, i8** %19, align 8
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @fill_pathname_noext(i8* %101, i8* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %103)
  %105 = load i8*, i8** %19, align 8
  %106 = call i32 @free(i8* %105)
  br label %117

107:                                              ; preds = %77
  %108 = load i8*, i8** %15, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = load i8*, i8** %4, align 8
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @fill_pathname_join(i8* %108, i8* %109, i8* %110, i64 %111)
  %113 = load i8*, i8** %16, align 8
  %114 = load i8*, i8** %15, align 8
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @fill_pathname_noext(i8* %113, i8* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %115)
  br label %117

117:                                              ; preds = %107, %87
  %118 = load i8*, i8** %15, align 8
  %119 = call i32 @free(i8* %118)
  %120 = load i8*, i8** %17, align 8
  %121 = call i32 @free(i8* %120)
  %122 = load i8*, i8** %16, align 8
  %123 = call i32* @config_file_new_from_path_to_string(i8* %122)
  store i32* %123, i32** %7, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %134, label %126

126:                                              ; preds = %117
  %127 = call i32* (...) @config_file_new_alloc()
  store i32* %127, i32** %7, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = load i8*, i8** %16, align 8
  %132 = call i32 @free(i8* %131)
  store i32 0, i32* %3, align 4
  br label %195

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133, %117
  %135 = load i32*, i32** %7, align 8
  %136 = load i8*, i8** %14, align 8
  %137 = call i32 @config_set_string(i32* %135, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %136)
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* %5, align 4
  %140 = call i8* @input_config_get_device_name(i32 %139)
  %141 = call i32 @config_set_string(i32* %138, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %140)
  %142 = load i32, i32* %5, align 4
  %143 = call i64 @input_config_get_pid(i32 %142)
  store i64 %143, i64* %9, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i64 @input_config_get_vid(i32 %144)
  store i64 %145, i64* %10, align 8
  %146 = load i64, i64* %9, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %134
  %149 = load i64, i64* %10, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load i32*, i32** %7, align 8
  %153 = load i64, i64* %10, align 8
  %154 = call i32 @config_set_int(i32* %152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %153)
  %155 = load i32*, i32** %7, align 8
  %156 = load i64, i64* %9, align 8
  %157 = call i32 @config_set_int(i32* %155, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %156)
  br label %158

158:                                              ; preds = %151, %148, %134
  store i32 0, i32* %6, align 4
  br label %159

159:                                              ; preds = %183, %158
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @RARCH_FIRST_META_KEY, align 4
  %162 = icmp ult i32 %160, %161
  br i1 %162, label %163, label %186

163:                                              ; preds = %159
  %164 = load %struct.retro_keybind**, %struct.retro_keybind*** @input_config_binds, align 8
  %165 = load i32, i32* %5, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %164, i64 %166
  %168 = load %struct.retro_keybind*, %struct.retro_keybind** %167, align 8
  %169 = load i32, i32* %6, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %168, i64 %170
  store %struct.retro_keybind* %171, %struct.retro_keybind** %20, align 8
  %172 = load %struct.retro_keybind*, %struct.retro_keybind** %20, align 8
  %173 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %163
  %177 = load i32*, i32** %7, align 8
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @input_config_bind_map_get_base(i32 %178)
  %180 = load %struct.retro_keybind*, %struct.retro_keybind** %20, align 8
  %181 = call i32 @input_config_save_keybind(i32* %177, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %179, %struct.retro_keybind* %180, i32 0)
  br label %182

182:                                              ; preds = %176, %163
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %6, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %6, align 4
  br label %159

186:                                              ; preds = %159
  %187 = load i32*, i32** %7, align 8
  %188 = load i8*, i8** %16, align 8
  %189 = call i32 @config_file_write(i32* %187, i8* %188, i32 0)
  store i32 %189, i32* %11, align 4
  %190 = load i32*, i32** %7, align 8
  %191 = call i32 @config_file_free(i32* %190)
  %192 = load i8*, i8** %16, align 8
  %193 = call i32 @free(i8* %192)
  %194 = load i32, i32* %11, align 4
  store i32 %194, i32* %3, align 4
  br label %195

195:                                              ; preds = %186, %130
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strstr(i8*, i64) #1

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i64) #1

declare dso_local i64 @path_is_directory(i8*) #1

declare dso_local i32 @fill_pathname_noext(i8*, i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @config_file_new_from_path_to_string(i8*) #1

declare dso_local i32* @config_file_new_alloc(...) #1

declare dso_local i32 @config_set_string(i32*, i8*, i8*) #1

declare dso_local i8* @input_config_get_device_name(i32) #1

declare dso_local i64 @input_config_get_pid(i32) #1

declare dso_local i64 @input_config_get_vid(i32) #1

declare dso_local i32 @config_set_int(i32*, i8*, i64) #1

declare dso_local i32 @input_config_save_keybind(i32*, i8*, i32, %struct.retro_keybind*, i32) #1

declare dso_local i32 @input_config_bind_map_get_base(i32) #1

declare dso_local i32 @config_file_write(i32*, i8*, i32) #1

declare dso_local i32 @config_file_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
