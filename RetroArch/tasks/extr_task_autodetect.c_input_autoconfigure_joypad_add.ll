; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_autodetect.c_input_autoconfigure_joypad_add.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_autodetect.c_input_autoconfigure_joypad_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { i64, i8* }

@input_autoconfigured = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"input_device_display_name\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"input_device_type\00", align 1
@input_autoconf_binds = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@input_autoconfigure_joypad_add.remote_is_bound = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" configured.\00", align 1
@input_autoconfigure_swap_override = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"%s %s #%u.\00", align 1
@MSG_DEVICE_CONFIGURED_IN_PORT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"input_swap_override\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*, i32*)* @input_autoconfigure_joypad_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_autoconfigure_joypad_add(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca [128 x i8], align 16
  %9 = alloca [128 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32*, i32** @input_autoconfigured, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @string_is_empty(i8* %24)
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %21, %3
  %29 = phi i1 [ false, %3 ], [ %27, %21 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %31, align 16
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %32, align 16
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %33, align 16
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %36 = call i32 @config_get_array(%struct.TYPE_8__* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %35, i32 128)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %39 = call i32 @config_get_array(%struct.TYPE_8__* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 128)
  %40 = load i32*, i32** @input_autoconfigured, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32 1, i32* %44, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = load i32*, i32** @input_autoconf_binds, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @input_autoconfigure_joypad_conf(%struct.TYPE_8__* %45, i32 %51)
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %54 = call i64 @string_is_equal(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %102

56:                                               ; preds = %28
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %58 = call i64 @string_is_empty(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @string_is_empty(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  br label %79

70:                                               ; preds = %60, %56
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %72 = call i64 @string_is_empty(i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  br label %77

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i8* [ %75, %74 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %76 ]
  br label %79

79:                                               ; preds = %77, %66
  %80 = phi i8* [ %69, %66 ], [ %78, %77 ]
  store i8* %80, i8** %11, align 8
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 @strlcpy(i8* %81, i8* %82, i32 128)
  %84 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %85 = call i32 @strlcat(i8* %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 128)
  %86 = load i32, i32* @input_autoconfigure_joypad_add.remote_is_bound, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %79
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @task_free_title(i32* %89)
  %91 = load i32*, i32** %6, align 8
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %93 = call i32 @strdup(i8* %92)
  %94 = call i32 @task_set_title(i32* %91, i32 %93)
  br label %95

95:                                               ; preds = %88, %79
  store i32 1, i32* @input_autoconfigure_joypad_add.remote_is_bound, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 1, i32* @input_autoconfigure_swap_override, align 4
  br label %101

101:                                              ; preds = %100, %95
  br label %158

102:                                              ; preds = %28
  store i32 0, i32* %12, align 4
  %103 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %104 = call i64 @string_is_empty(i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %102
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i64 @string_is_empty(i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %106
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  br label %125

116:                                              ; preds = %106, %102
  %117 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %118 = call i64 @string_is_empty(i8* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  br label %123

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122, %120
  %124 = phi i8* [ %121, %120 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %122 ]
  br label %125

125:                                              ; preds = %123, %112
  %126 = phi i8* [ %115, %112 ], [ %124, %123 ]
  store i8* %126, i8** %13, align 8
  %127 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %128 = load i8*, i8** %13, align 8
  %129 = load i32, i32* @MSG_DEVICE_CONFIGURED_IN_PORT, align 4
  %130 = call i8* @msg_hash_to_str(i32 %129)
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @snprintf(i8* %127, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %128, i8* %130, i64 %133)
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %125
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %141 = call i64 @config_get_bool(%struct.TYPE_8__* %140, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32* %12)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* %12, align 4
  store i32 %144, i32* @input_autoconfigure_swap_override, align 4
  br label %146

145:                                              ; preds = %139
  store i32 0, i32* @input_autoconfigure_swap_override, align 4
  br label %146

146:                                              ; preds = %145, %143
  br label %147

147:                                              ; preds = %146, %125
  %148 = load i32, i32* %10, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %147
  %151 = load i32*, i32** %6, align 8
  %152 = call i32 @task_free_title(i32* %151)
  %153 = load i32*, i32** %6, align 8
  %154 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %155 = call i32 @strdup(i8* %154)
  %156 = call i32 @task_set_title(i32* %153, i32 %155)
  br label %157

157:                                              ; preds = %150, %147
  br label %158

158:                                              ; preds = %157, %101
  %159 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %160 = call i64 @string_is_empty(i8* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %169, label %162

162:                                              ; preds = %158
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  %167 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %168 = call i32 @input_config_set_device_display_name(i32 %166, i8* %167)
  br label %178

169:                                              ; preds = %158
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @input_config_set_device_display_name(i32 %173, i8* %176)
  br label %178

178:                                              ; preds = %169, %162
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i64 @string_is_empty(i8* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %202, label %184

184:                                              ; preds = %178
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = call i8* @path_basename(i8* %191)
  %193 = call i32 @input_config_set_device_config_name(i32 %188, i8* %192)
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @input_config_set_device_config_path(i32 %197, i8* %200)
  br label %213

202:                                              ; preds = %178
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = trunc i64 %205 to i32
  %207 = call i32 @input_config_set_device_config_name(i32 %206, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = trunc i64 %210 to i32
  %212 = call i32 @input_config_set_device_config_path(i32 %211, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %213

213:                                              ; preds = %202, %184
  %214 = call i32 (...) @input_autoconfigure_joypad_reindex_devices()
  ret void
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @config_get_array(%struct.TYPE_8__*, i8*, i8*, i32) #1

declare dso_local i32 @input_autoconfigure_joypad_conf(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @task_free_title(i32*) #1

declare dso_local i32 @task_set_title(i32*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i64) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i64 @config_get_bool(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i32 @input_config_set_device_display_name(i32, i8*) #1

declare dso_local i32 @input_config_set_device_config_name(i32, i8*) #1

declare dso_local i8* @path_basename(i8*) #1

declare dso_local i32 @input_config_set_device_config_path(i32, i8*) #1

declare dso_local i32 @input_autoconfigure_joypad_reindex_devices(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
