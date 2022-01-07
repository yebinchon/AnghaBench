; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_proc_set_task_spawnpolicy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_proc_set_task_spawnpolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.task_pend_token = type { i32 }

@KDEBUG_TRACE = common dso_local global i32 0, align 4
@IMP_TASK_APPTYPE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ipc_importance_interactive_receiver = common dso_local global i32 0, align 4
@TASK_UNSPECIFIED = common dso_local global i32 0, align 4
@THREAD_QOS_UNSPECIFIED = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@TASK_FOREGROUND_APPLICATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_set_task_spawnpolicy(%struct.TYPE_19__* %0, i32 %1, i32 %2, i32 %3, i32** %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.task_pend_token, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = bitcast %struct.task_pend_token* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = load i32, i32* @KDEBUG_TRACE, align 4
  %20 = load i32, i32* @IMP_TASK_APPTYPE, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @IMPORTANCE_CODE(i32 %20, i32 %21)
  %23 = load i32, i32* @DBG_FUNC_START, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %26 = call i32 @task_pid(%struct.TYPE_19__* %25)
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %28 = call i32 @trequested_0(%struct.TYPE_19__* %27)
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %30 = call i32 @trequested_1(%struct.TYPE_19__* %29)
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %19, i32 %24, i32 %26, i32 %28, i32 %30, i32 %31, i32 0)
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %100 [
    i32 133, label %34
    i32 134, label %34
    i32 130, label %47
    i32 129, label %60
    i32 132, label %73
    i32 131, label %86
    i32 128, label %99
  ]

34:                                               ; preds = %6, %6
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @task_importance_mark_donor(%struct.TYPE_19__* %35, i32 %36)
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i32 @task_importance_mark_live_donor(%struct.TYPE_19__* %38, i32 %39)
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i32 @task_importance_mark_receiver(%struct.TYPE_19__* %41, i32 %42)
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %45 = load i32, i32* @TRUE, align 4
  %46 = call i32 @task_importance_mark_denap_receiver(%struct.TYPE_19__* %44, i32 %45)
  br label %100

47:                                               ; preds = %6
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %49 = load i32, i32* @TRUE, align 4
  %50 = call i32 @task_importance_mark_donor(%struct.TYPE_19__* %48, i32 %49)
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %52 = load i32, i32* @FALSE, align 4
  %53 = call i32 @task_importance_mark_live_donor(%struct.TYPE_19__* %51, i32 %52)
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %55 = load i32, i32* @ipc_importance_interactive_receiver, align 4
  %56 = call i32 @task_importance_mark_receiver(%struct.TYPE_19__* %54, i32 %55)
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %58 = load i32, i32* @FALSE, align 4
  %59 = call i32 @task_importance_mark_denap_receiver(%struct.TYPE_19__* %57, i32 %58)
  br label %100

60:                                               ; preds = %6
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %62 = load i32, i32* @TRUE, align 4
  %63 = call i32 @task_importance_mark_donor(%struct.TYPE_19__* %61, i32 %62)
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %65 = load i32, i32* @FALSE, align 4
  %66 = call i32 @task_importance_mark_live_donor(%struct.TYPE_19__* %64, i32 %65)
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %68 = load i32, i32* @FALSE, align 4
  %69 = call i32 @task_importance_mark_receiver(%struct.TYPE_19__* %67, i32 %68)
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %71 = load i32, i32* @FALSE, align 4
  %72 = call i32 @task_importance_mark_denap_receiver(%struct.TYPE_19__* %70, i32 %71)
  br label %100

73:                                               ; preds = %6
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i32 @task_importance_mark_donor(%struct.TYPE_19__* %74, i32 %75)
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %78 = load i32, i32* @FALSE, align 4
  %79 = call i32 @task_importance_mark_live_donor(%struct.TYPE_19__* %77, i32 %78)
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %81 = load i32, i32* @TRUE, align 4
  %82 = call i32 @task_importance_mark_receiver(%struct.TYPE_19__* %80, i32 %81)
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %84 = load i32, i32* @FALSE, align 4
  %85 = call i32 @task_importance_mark_denap_receiver(%struct.TYPE_19__* %83, i32 %84)
  br label %100

86:                                               ; preds = %6
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %88 = load i32, i32* @FALSE, align 4
  %89 = call i32 @task_importance_mark_donor(%struct.TYPE_19__* %87, i32 %88)
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %91 = load i32, i32* @FALSE, align 4
  %92 = call i32 @task_importance_mark_live_donor(%struct.TYPE_19__* %90, i32 %91)
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %94 = load i32, i32* @FALSE, align 4
  %95 = call i32 @task_importance_mark_receiver(%struct.TYPE_19__* %93, i32 %94)
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %97 = load i32, i32* @FALSE, align 4
  %98 = call i32 @task_importance_mark_denap_receiver(%struct.TYPE_19__* %96, i32 %97)
  br label %100

99:                                               ; preds = %6
  br label %100

100:                                              ; preds = %6, %99, %86, %73, %60, %47, %34
  %101 = load i32**, i32*** %11, align 8
  %102 = icmp ne i32** %101, null
  br i1 %102, label %103, label %137

103:                                              ; preds = %100
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, 132
  br i1 %105, label %106, label %137

106:                                              ; preds = %103
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %107

107:                                              ; preds = %126, %106
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %107
  store i32* null, i32** %16, align 8
  %112 = load i32**, i32*** %11, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load i32*, i32** %115, align 8
  store i32* %116, i32** %16, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %125

118:                                              ; preds = %111
  store i32 0, i32* %17, align 4
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %120 = load i32*, i32** %16, align 8
  %121 = call i32 @task_add_importance_watchport(%struct.TYPE_19__* %119, i32* %120, i32* %17)
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %118, %111
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %15, align 4
  br label %107

129:                                              ; preds = %107
  %130 = load i32, i32* %14, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @task_importance_hold_internal_assertion(%struct.TYPE_19__* %133, i32 %134)
  br label %136

136:                                              ; preds = %132, %129
  br label %137

137:                                              ; preds = %136, %103, %100
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %139 = call i32 @task_lock(%struct.TYPE_19__* %138)
  %140 = load i32, i32* %8, align 4
  %141 = icmp eq i32 %140, 133
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  store i32 1, i32* %145, align 4
  br label %146

146:                                              ; preds = %142, %137
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 128
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 4
  br label %154

154:                                              ; preds = %149, %146
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @TASK_UNSPECIFIED, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 2
  store i32 %159, i32* %162, align 4
  br label %163

163:                                              ; preds = %158, %154
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load i32, i32* %9, align 4
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 3
  store i32 %168, i32* %171, align 4
  br label %172

172:                                              ; preds = %167, %163
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %174 = call i32 @task_policy_update_locked(%struct.TYPE_19__* %173, %struct.task_pend_token* %13)
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %176 = call i32 @task_unlock(%struct.TYPE_19__* %175)
  %177 = getelementptr inbounds %struct.task_pend_token, %struct.task_pend_token* %13, i32 0, i32 0
  store i32 1, i32* %177, align 4
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %179 = call i32 @task_policy_update_complete_unlocked(%struct.TYPE_19__* %178, %struct.task_pend_token* %13)
  %180 = load i32, i32* @KDEBUG_TRACE, align 4
  %181 = load i32, i32* @IMP_TASK_APPTYPE, align 4
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @IMPORTANCE_CODE(i32 %181, i32 %182)
  %184 = load i32, i32* @DBG_FUNC_END, align 4
  %185 = or i32 %183, %184
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %187 = call i32 @task_pid(%struct.TYPE_19__* %186)
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %189 = call i32 @trequested_0(%struct.TYPE_19__* %188)
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %191 = call i32 @trequested_1(%struct.TYPE_19__* %190)
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %193 = call i32 @task_is_importance_receiver(%struct.TYPE_19__* %192)
  %194 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %180, i32 %185, i32 %187, i32 %189, i32 %191, i32 %193, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @IMPORTANCE_CODE(i32, i32) #2

declare dso_local i32 @task_pid(%struct.TYPE_19__*) #2

declare dso_local i32 @trequested_0(%struct.TYPE_19__*) #2

declare dso_local i32 @trequested_1(%struct.TYPE_19__*) #2

declare dso_local i32 @task_importance_mark_donor(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @task_importance_mark_live_donor(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @task_importance_mark_receiver(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @task_importance_mark_denap_receiver(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @task_add_importance_watchport(%struct.TYPE_19__*, i32*, i32*) #2

declare dso_local i32 @task_importance_hold_internal_assertion(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @task_lock(%struct.TYPE_19__*) #2

declare dso_local i32 @task_policy_update_locked(%struct.TYPE_19__*, %struct.task_pend_token*) #2

declare dso_local i32 @task_unlock(%struct.TYPE_19__*) #2

declare dso_local i32 @task_policy_update_complete_unlocked(%struct.TYPE_19__*, %struct.task_pend_token*) #2

declare dso_local i32 @task_is_importance_receiver(%struct.TYPE_19__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
