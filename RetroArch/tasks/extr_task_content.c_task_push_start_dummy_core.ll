; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_content.c_task_push_start_dummy_core.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_content.c_task_push_start_dummy_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i8*, i8*, i8*, i8*, i32, i32, i32, %struct.TYPE_16__, i32*, i32*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_16__ = type { i64, i32* }
%struct.TYPE_21__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@RARCH_CTL_IS_IPS_PREF = common dso_local global i32 0, align 4
@RARCH_CTL_IS_BPS_PREF = common dso_local global i32 0, align 4
@RARCH_CTL_IS_UPS_PREF = common dso_local global i32 0, align 4
@RARCH_CTL_IS_PATCH_BLOCKED = common dso_local global i32 0, align 4
@RARCH_CTL_IS_MISSING_BIOS = common dso_local global i32 0, align 4
@menu_content_environment_get = common dso_local global i64 0, align 8
@RARCH_PATH_CONTENT = common dso_local global i32 0, align 4
@RARCH_CTL_STATE_FREE = common dso_local global i32 0, align 4
@RARCH_CTL_DATA_DEINIT = common dso_local global i32 0, align 4
@RARCH_CTL_TASK_INIT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_push_start_dummy_core(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_22__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i32 1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %10 = call %struct.TYPE_21__* (...) @global_get_ptr()
  store %struct.TYPE_21__* %10, %struct.TYPE_21__** %7, align 8
  %11 = call %struct.TYPE_19__* (...) @config_get_ptr()
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %8, align 8
  %12 = call %struct.TYPE_20__* (...) @runloop_get_system_info()
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %9, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %14 = icmp ne %struct.TYPE_23__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %181

16:                                               ; preds = %1
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 15
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* @RARCH_CTL_IS_IPS_PREF, align 4
  %23 = call i8* @rarch_ctl(i32 %22, i32* null)
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 14
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* @RARCH_CTL_IS_BPS_PREF, align 4
  %26 = call i8* @rarch_ctl(i32 %25, i32* null)
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 13
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* @RARCH_CTL_IS_UPS_PREF, align 4
  %29 = call i8* @rarch_ctl(i32 %28, i32* null)
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 12
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* @RARCH_CTL_IS_PATCH_BLOCKED, align 4
  %32 = call i8* @rarch_ctl(i32 %31, i32* null)
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 11
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* @RARCH_CTL_IS_MISSING_BIOS, align 4
  %35 = call i8* @rarch_ctl(i32 %34, i32* null)
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 10
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 0
  store i8* null, i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 9
  store i32* null, i32** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 1
  store i8* null, i8** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 2
  store i8* null, i8** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 3
  store i8* null, i8** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 8
  store i32* null, i32** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 4
  store i32 0, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 5
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 6
  store i32 0, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %51 = icmp ne %struct.TYPE_21__* %50, null
  br i1 %51, label %52, label %95

52:                                               ; preds = %16
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @string_is_empty(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @strdup(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  br label %66

66:                                               ; preds = %59, %52
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @string_is_empty(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @strdup(i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 2
  store i8* %78, i8** %79, align 8
  br label %80

80:                                               ; preds = %73, %66
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @string_is_empty(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %80
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @strdup(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 3
  store i8* %92, i8** %93, align 8
  br label %94

94:                                               ; preds = %87, %80
  br label %95

95:                                               ; preds = %94, %16
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @string_is_empty(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %95
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @strdup(i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 0
  store i8* %107, i8** %108, align 8
  br label %109

109:                                              ; preds = %102, %95
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %109
  %115 = load i64, i64* @menu_content_environment_get, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %114, %109
  %119 = load i32, i32* @RARCH_PATH_CONTENT, align 4
  %120 = call i32 @path_clear(i32 %119)
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  store i32 0, i32* %122, align 4
  %123 = load i32, i32* @RARCH_CTL_STATE_FREE, align 4
  %124 = call i8* @rarch_ctl(i32 %123, i32* null)
  %125 = load i32, i32* @RARCH_CTL_DATA_DEINIT, align 4
  %126 = call i8* @rarch_ctl(i32 %125, i32* null)
  %127 = load i32, i32* @RARCH_CTL_TASK_INIT, align 4
  %128 = call i8* @rarch_ctl(i32 %127, i32* null)
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %130 = call i32 @content_load(%struct.TYPE_23__* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %145, label %132

132:                                              ; preds = %118
  %133 = load i8*, i8** %6, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load i8*, i8** %6, align 8
  %137 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %138 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %139 = call i32 @runloop_msg_queue_push(i8* %136, i32 2, i32 90, i32 1, i32* null, i32 %137, i32 %138)
  %140 = load i8*, i8** %6, align 8
  %141 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %140)
  %142 = load i8*, i8** %6, align 8
  %143 = call i32 @free(i8* %142)
  br label %144

144:                                              ; preds = %135, %132
  store i32 0, i32* %5, align 4
  br label %147

145:                                              ; preds = %118
  %146 = call i32 @task_push_to_history_list(i32 0, i32 0)
  br label %147

147:                                              ; preds = %145, %144
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @free(i8* %153)
  br label %155

155:                                              ; preds = %151, %147
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 2
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @free(i8* %161)
  br label %163

163:                                              ; preds = %159, %155
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 3
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @free(i8* %169)
  br label %171

171:                                              ; preds = %167, %163
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @free(i8* %177)
  br label %179

179:                                              ; preds = %175, %171
  %180 = load i32, i32* %5, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %179, %15
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local %struct.TYPE_21__* @global_get_ptr(...) #1

declare dso_local %struct.TYPE_19__* @config_get_ptr(...) #1

declare dso_local %struct.TYPE_20__* @runloop_get_system_info(...) #1

declare dso_local i8* @rarch_ctl(i32, i32*) #1

declare dso_local i32 @string_is_empty(i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @path_clear(i32) #1

declare dso_local i32 @content_load(%struct.TYPE_23__*) #1

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @task_push_to_history_list(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
