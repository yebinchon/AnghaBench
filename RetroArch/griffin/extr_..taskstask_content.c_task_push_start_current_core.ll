; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_content.c_task_push_start_current_core.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_content.c_task_push_start_current_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i8*, i8*, i8*, i8*, i32, i32, i32, %struct.TYPE_15__, i32*, i32*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_15__ = type { i64, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@RARCH_CTL_IS_IPS_PREF = common dso_local global i32 0, align 4
@RARCH_CTL_IS_BPS_PREF = common dso_local global i32 0, align 4
@RARCH_CTL_IS_UPS_PREF = common dso_local global i32 0, align 4
@RARCH_CTL_IS_PATCH_BLOCKED = common dso_local global i32 0, align 4
@RARCH_CTL_IS_MISSING_BIOS = common dso_local global i32 0, align 4
@menu_content_environment_get = common dso_local global i64 0, align 8
@RARCH_PATH_CONTENT = common dso_local global i32 0, align 4
@CORE_TYPE_PLAIN = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@RARCH_MENU_CTL_SET_PENDING_QUICK_MENU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_push_start_current_core(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i32 1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %9 = call %struct.TYPE_19__* (...) @global_get_ptr()
  store %struct.TYPE_19__* %9, %struct.TYPE_19__** %7, align 8
  %10 = call %struct.TYPE_18__* (...) @config_get_ptr()
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %8, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %12 = icmp ne %struct.TYPE_21__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %179

14:                                               ; preds = %1
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 15
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @RARCH_CTL_IS_IPS_PREF, align 4
  %21 = call i8* @rarch_ctl(i32 %20, i32* null)
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 14
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* @RARCH_CTL_IS_BPS_PREF, align 4
  %24 = call i8* @rarch_ctl(i32 %23, i32* null)
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 13
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* @RARCH_CTL_IS_UPS_PREF, align 4
  %27 = call i8* @rarch_ctl(i32 %26, i32* null)
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 12
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* @RARCH_CTL_IS_PATCH_BLOCKED, align 4
  %30 = call i8* @rarch_ctl(i32 %29, i32* null)
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 11
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* @RARCH_CTL_IS_MISSING_BIOS, align 4
  %33 = call i8* @rarch_ctl(i32 %32, i32* null)
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 10
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 0
  store i8* null, i8** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 9
  store i32* null, i32** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 1
  store i8* null, i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 2
  store i8* null, i8** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 3
  store i8* null, i8** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 8
  store i32* null, i32** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 4
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 5
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 6
  store i32 0, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %49 = icmp ne %struct.TYPE_19__* %48, null
  br i1 %49, label %50, label %93

50:                                               ; preds = %14
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @string_is_empty(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @strdup(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 1
  store i8* %62, i8** %63, align 8
  br label %64

64:                                               ; preds = %57, %50
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @string_is_empty(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @strdup(i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 2
  store i8* %76, i8** %77, align 8
  br label %78

78:                                               ; preds = %71, %64
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @string_is_empty(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @strdup(i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 3
  store i8* %90, i8** %91, align 8
  br label %92

92:                                               ; preds = %85, %78
  br label %93

93:                                               ; preds = %92, %14
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @string_is_empty(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %93
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @strdup(i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 0
  store i8* %105, i8** %106, align 8
  br label %107

107:                                              ; preds = %100, %93
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %107
  %113 = load i64, i64* @menu_content_environment_get, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %112, %107
  %117 = load i32, i32* @RARCH_PATH_CONTENT, align 4
  %118 = call i32 @path_clear(i32 %117)
  %119 = load i32, i32* @CORE_TYPE_PLAIN, align 4
  %120 = call i32 @retroarch_set_current_core_type(i32 %119, i32 1)
  %121 = call i64 @firmware_update_status(%struct.TYPE_20__* %4)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %145

124:                                              ; preds = %116
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %126 = call i32 @content_load(%struct.TYPE_21__* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %142, label %128

128:                                              ; preds = %124
  %129 = load i8*, i8** %6, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = load i8*, i8** %6, align 8
  %133 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %134 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %135 = call i32 @runloop_msg_queue_push(i8* %132, i32 2, i32 90, i32 1, i32* null, i32 %133, i32 %134)
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %136)
  %138 = load i8*, i8** %6, align 8
  %139 = call i32 @free(i8* %138)
  br label %140

140:                                              ; preds = %131, %128
  %141 = call i32 (...) @retroarch_menu_running()
  store i32 0, i32* %5, align 4
  br label %145

142:                                              ; preds = %124
  %143 = call i32 @task_push_to_history_list(i32 1, i32 0)
  br label %144

144:                                              ; preds = %142
  br label %145

145:                                              ; preds = %144, %140, %123
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @free(i8* %151)
  br label %153

153:                                              ; preds = %149, %145
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 2
  %155 = load i8*, i8** %154, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @free(i8* %159)
  br label %161

161:                                              ; preds = %157, %153
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 3
  %163 = load i8*, i8** %162, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 3
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @free(i8* %167)
  br label %169

169:                                              ; preds = %165, %161
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @free(i8* %175)
  br label %177

177:                                              ; preds = %173, %169
  %178 = load i32, i32* %5, align 4
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %177, %13
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local %struct.TYPE_19__* @global_get_ptr(...) #1

declare dso_local %struct.TYPE_18__* @config_get_ptr(...) #1

declare dso_local i8* @rarch_ctl(i32, i32*) #1

declare dso_local i32 @string_is_empty(i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @path_clear(i32) #1

declare dso_local i32 @retroarch_set_current_core_type(i32, i32) #1

declare dso_local i64 @firmware_update_status(%struct.TYPE_20__*) #1

declare dso_local i32 @content_load(%struct.TYPE_21__*) #1

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @retroarch_menu_running(...) #1

declare dso_local i32 @task_push_to_history_list(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
