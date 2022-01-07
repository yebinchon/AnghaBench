; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_command_event_save_core_config.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_command_event_save_core_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@configuration_settings = common dso_local global %struct.TYPE_5__* null, align 8
@RARCH_PATH_CONFIG = common dso_local global i32 0, align 4
@MSG_CONFIG_DIRECTORY_NOT_SET = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"[config] %s\0A\00", align 1
@RARCH_PATH_CORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_USING_CORE_NAME_FOR_NEW_CONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"-%u\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".cfg\00", align 1
@MSG_CANNOT_INFER_NEW_CONFIG_PATH = common dso_local global i32 0, align 4
@runloop_overrides_active = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @command_event_save_core_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_event_save_core_config() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [128 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %13 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 1
  store i64 %15, i64* %9, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @configuration_settings, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %10, align 8
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  store i8 0, i8* %17, align 16
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @string_is_empty(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @strdup(i8* %31)
  store i8* %32, i8** %8, align 8
  br label %52

33:                                               ; preds = %20, %0
  %34 = load i32, i32* @RARCH_PATH_CONFIG, align 4
  %35 = call i32 @path_is_empty(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = call i64 @malloc(i32 %41)
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* @RARCH_PATH_CONFIG, align 4
  %48 = call i8* @path_get(i32 %47)
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @fill_pathname_basedir(i8* %46, i8* %48, i64 %49)
  br label %51

51:                                               ; preds = %37, %33
  br label %52

52:                                               ; preds = %51, %27
  %53 = load i8*, i8** %8, align 8
  %54 = call i64 @string_is_empty(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load i32, i32* @MSG_CONFIG_DIRECTORY_NOT_SET, align 4
  %58 = call i8* @msg_hash_to_str(i32 %57)
  %59 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %60 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %61 = call i32 @runloop_msg_queue_push(i8* %58, i32 1, i32 180, i32 1, i32* null, i32 %59, i32 %60)
  %62 = load i32, i32* @MSG_CONFIG_DIRECTORY_NOT_SET, align 4
  %63 = call i8* @msg_hash_to_str(i32 %62)
  %64 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %63)
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @free(i8* %65)
  store i32 0, i32* %1, align 4
  br label %172

67:                                               ; preds = %52
  %68 = load i32, i32* @RARCH_PATH_CORE, align 4
  %69 = call i8* @path_get(i32 %68)
  store i8* %69, i8** %5, align 8
  %70 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 1
  %73 = trunc i64 %72 to i32
  %74 = call i64 @malloc(i32 %73)
  %75 = inttoptr i64 %74 to i8*
  store i8* %75, i8** %6, align 8
  %76 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 1
  %79 = trunc i64 %78 to i32
  %80 = call i64 @malloc(i32 %79)
  %81 = inttoptr i64 %80 to i8*
  store i8* %81, i8** %7, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  store i8 0, i8* %83, align 1
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  store i8 0, i8* %85, align 1
  %86 = load i8*, i8** %5, align 8
  %87 = call i64 @path_is_valid(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %129

89:                                               ; preds = %67
  %90 = load i32, i32* @MSG_USING_CORE_NAME_FOR_NEW_CONFIG, align 4
  %91 = call i8* @msg_hash_to_str(i32 %90)
  %92 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %91)
  store i32 0, i32* %11, align 4
  br label %93

93:                                               ; preds = %125, %89
  %94 = load i32, i32* %11, align 4
  %95 = icmp ult i32 %94, 16
  br i1 %95, label %96, label %128

96:                                               ; preds = %93
  %97 = bitcast [64 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %97, i8 0, i64 64, i1 false)
  %98 = load i8*, i8** %6, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @fill_pathname_base_noext(i8* %98, i8* %99, i64 %100)
  %102 = load i8*, i8** %7, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = load i64, i64* %9, align 8
  %106 = call i32 @fill_pathname_join(i8* %102, i8* %103, i8* %104, i64 %105)
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %96
  %110 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @snprintf(i8* %110, i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %109, %96
  %114 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %115 = call i32 @strlcat(i8* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 64)
  %116 = load i8*, i8** %7, align 8
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %118 = load i64, i64* %9, align 8
  %119 = call i32 @strlcat(i8* %116, i8* %117, i64 %118)
  %120 = load i8*, i8** %7, align 8
  %121 = call i64 @path_is_valid(i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %113
  store i32 1, i32* %3, align 4
  br label %128

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %11, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %93

128:                                              ; preds = %123, %93
  br label %129

129:                                              ; preds = %128, %67
  %130 = load i32, i32* %3, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %144, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* @MSG_CANNOT_INFER_NEW_CONFIG_PATH, align 4
  %134 = call i8* @msg_hash_to_str(i32 %133)
  %135 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %134)
  %136 = load i8*, i8** %6, align 8
  %137 = load i64, i64* %9, align 8
  %138 = call i32 @fill_dated_filename(i8* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %137)
  %139 = load i8*, i8** %7, align 8
  %140 = load i8*, i8** %8, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = load i64, i64* %9, align 8
  %143 = call i32 @fill_pathname_join(i8* %139, i8* %140, i8* %141, i64 %142)
  br label %144

144:                                              ; preds = %132, %129
  %145 = load i32, i32* @runloop_overrides_active, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 0, i32* @runloop_overrides_active, align 4
  store i32 1, i32* %4, align 4
  br label %148

148:                                              ; preds = %147, %144
  %149 = load i8*, i8** %7, align 8
  %150 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %151 = call i32 @command_event_save_config(i8* %149, i8* %150, i32 128)
  %152 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %153 = call i64 @string_is_empty(i8* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %148
  %156 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %157 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %158 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %159 = call i32 @runloop_msg_queue_push(i8* %156, i32 1, i32 180, i32 1, i32* null, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %155, %148
  %161 = load i32, i32* %4, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 1, i32* @runloop_overrides_active, align 4
  br label %165

164:                                              ; preds = %160
  store i32 0, i32* @runloop_overrides_active, align 4
  br label %165

165:                                              ; preds = %164, %163
  %166 = load i8*, i8** %8, align 8
  %167 = call i32 @free(i8* %166)
  %168 = load i8*, i8** %6, align 8
  %169 = call i32 @free(i8* %168)
  %170 = load i8*, i8** %7, align 8
  %171 = call i32 @free(i8* %170)
  store i32 1, i32* %1, align 4
  br label %172

172:                                              ; preds = %165, %56
  %173 = load i32, i32* %1, align 4
  ret i32 %173
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @path_is_empty(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fill_pathname_basedir(i8*, i8*, i64) #1

declare dso_local i8* @path_get(i32) #1

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @path_is_valid(i8*) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fill_pathname_base_noext(i8*, i8*, i64) #1

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @RARCH_WARN(i8*, i8*) #1

declare dso_local i32 @fill_dated_filename(i8*, i8*, i64) #1

declare dso_local i32 @command_event_save_config(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
