; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_assert_wait64_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_assert_wait64_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, %struct.waitq*, %struct.waitq*, i64, i32 }
%struct.waitq_set = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"thread already waiting on %p\00", align 1
@NO_EVENT64 = common dso_local global %struct.waitq* null, align 8
@prepost_exists_cb = common dso_local global i32 0, align 4
@WQ_ITERATE_FOUND = common dso_local global i32 0, align 4
@THREAD_AWAKENED = common dso_local global i64 0, align 8
@BASEPRI_REALTIME = common dso_local global i64 0, align 8
@THREAD_WAITING = common dso_local global i64 0, align 8
@TH_OPT_VMPRIV = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @waitq_assert_wait64_locked(%struct.waitq* %0, %struct.waitq* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_8__* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.waitq*, align 8
  %10 = alloca %struct.waitq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.waitq*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.waitq_set*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.waitq* %0, %struct.waitq** %9, align 8
  store %struct.waitq* %1, %struct.waitq** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %15, align 8
  store i32 0, i32* %17, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %7
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %30 = call %struct.TYPE_8__* (...) @current_thread()
  %31 = icmp eq %struct.TYPE_8__* %29, %30
  br label %32

32:                                               ; preds = %28, %7
  %33 = phi i1 [ true, %7 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 5
  %38 = load %struct.waitq*, %struct.waitq** %37, align 8
  %39 = icmp ne %struct.waitq* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 5
  %43 = load %struct.waitq*, %struct.waitq** %42, align 8
  %44 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.waitq* %43)
  br label %45

45:                                               ; preds = %40, %32
  %46 = load %struct.waitq*, %struct.waitq** %9, align 8
  %47 = call i64 @waitq_is_set(%struct.waitq* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %45
  %50 = load %struct.waitq*, %struct.waitq** %9, align 8
  %51 = bitcast %struct.waitq* %50 to %struct.waitq_set*
  store %struct.waitq_set* %51, %struct.waitq_set** %21, align 8
  %52 = load %struct.waitq*, %struct.waitq** %10, align 8
  %53 = load %struct.waitq*, %struct.waitq** @NO_EVENT64, align 8
  %54 = icmp eq %struct.waitq* %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %49
  %56 = load %struct.waitq_set*, %struct.waitq_set** %21, align 8
  %57 = call i64 @waitq_set_maybe_preposted(%struct.waitq_set* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %55
  %60 = load %struct.waitq_set*, %struct.waitq_set** %21, align 8
  %61 = load i32, i32* @prepost_exists_cb, align 4
  %62 = call i32 @wq_prepost_foreach_locked(%struct.waitq_set* %60, i32* null, i32 %61)
  store i32 %62, i32* %22, align 4
  %63 = load i32, i32* %22, align 4
  %64 = load i32, i32* @WQ_ITERATE_FOUND, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %59
  %67 = call i32 (...) @splsched()
  store i32 %67, i32* %20, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %69 = call i32 @thread_lock(%struct.TYPE_8__* %68)
  %70 = load i64, i64* @THREAD_AWAKENED, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 7
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %74 = call i32 @thread_unlock(%struct.TYPE_8__* %73)
  %75 = load i32, i32* %20, align 4
  %76 = call i32 @splx(i32 %75)
  %77 = load i64, i64* @THREAD_AWAKENED, align 8
  store i64 %77, i64* %8, align 8
  br label %204

78:                                               ; preds = %59
  br label %79

79:                                               ; preds = %78, %55, %49
  br label %80

80:                                               ; preds = %79, %45
  %81 = call i32 (...) @splsched()
  store i32 %81, i32* %20, align 4
  %82 = load %struct.waitq*, %struct.waitq** %9, align 8
  %83 = call i32 @waitq_irq_safe(%struct.waitq* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %80
  %86 = load %struct.waitq*, %struct.waitq** %9, align 8
  %87 = call %struct.waitq* @waitq_get_safeq(%struct.waitq* %86)
  store %struct.waitq* %87, %struct.waitq** %18, align 8
  %88 = load %struct.waitq*, %struct.waitq** %9, align 8
  %89 = call i64 @_CAST_TO_EVENT_MASK(%struct.waitq* %88)
  store i64 %89, i64* %19, align 8
  %90 = load %struct.waitq*, %struct.waitq** %18, align 8
  %91 = call i32 @waitq_lock(%struct.waitq* %90)
  br label %96

92:                                               ; preds = %80
  %93 = load %struct.waitq*, %struct.waitq** %9, align 8
  store %struct.waitq* %93, %struct.waitq** %18, align 8
  %94 = load %struct.waitq*, %struct.waitq** %10, align 8
  %95 = call i64 @_CAST_TO_EVENT_MASK(%struct.waitq* %94)
  store i64 %95, i64* %19, align 8
  br label %96

96:                                               ; preds = %92, %85
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %98 = call i32 @thread_lock(%struct.TYPE_8__* %97)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @BASEPRI_REALTIME, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i32 1, i32* %17, align 4
  br label %105

105:                                              ; preds = %104, %96
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i64 @thread_mark_wait_locked(%struct.TYPE_8__* %106, i32 %107)
  store i64 %108, i64* %16, align 8
  %109 = load i64, i64* %16, align 8
  %110 = load i64, i64* @THREAD_WAITING, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %176

112:                                              ; preds = %105
  %113 = load %struct.waitq*, %struct.waitq** %18, align 8
  %114 = getelementptr inbounds %struct.waitq, %struct.waitq* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @TH_OPT_VMPRIV, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %117
  %125 = load i32, i32* %17, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124, %117, %112
  %128 = load %struct.waitq*, %struct.waitq** %18, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %130 = call i32 @waitq_thread_insert(%struct.waitq* %128, %struct.TYPE_8__* %129, i32 0)
  br label %135

131:                                              ; preds = %124
  %132 = load %struct.waitq*, %struct.waitq** %18, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %134 = call i32 @waitq_thread_insert(%struct.waitq* %132, %struct.TYPE_8__* %133, i32 1)
  br label %135

135:                                              ; preds = %131, %127
  %136 = load %struct.waitq*, %struct.waitq** %10, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 6
  store %struct.waitq* %136, %struct.waitq** %138, align 8
  %139 = load %struct.waitq*, %struct.waitq** %9, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 5
  store %struct.waitq* %139, %struct.waitq** %141, align 8
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %163

144:                                              ; preds = %135
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 4
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* @FALSE, align 4
  %151 = call i32 @timer_call_enter_with_leeway(i32* %146, i32* null, i32 %147, i32 %148, i32 %149, i32 %150)
  store i32 %151, i32* %23, align 4
  %152 = load i32, i32* %23, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %144
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %154, %144
  %160 = load i32, i32* @TRUE, align 4
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 4
  br label %163

163:                                              ; preds = %159, %135
  %164 = load %struct.waitq*, %struct.waitq** %18, align 8
  %165 = call i64 @waitq_is_global(%struct.waitq* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %163
  %168 = load i64, i64* %19, align 8
  %169 = load %struct.waitq*, %struct.waitq** %18, align 8
  %170 = getelementptr inbounds %struct.waitq, %struct.waitq* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = or i64 %171, %168
  store i64 %172, i64* %170, align 8
  br label %173

173:                                              ; preds = %167, %163
  %174 = load %struct.waitq*, %struct.waitq** %9, align 8
  %175 = call i32 @waitq_stats_count_wait(%struct.waitq* %174)
  br label %176

176:                                              ; preds = %173, %105
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %178 = call i32 @thread_unlock(%struct.TYPE_8__* %177)
  %179 = load %struct.waitq*, %struct.waitq** %18, align 8
  %180 = call i64 @waitq_is_turnstile_queue(%struct.waitq* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %193

182:                                              ; preds = %176
  %183 = load i64, i64* %16, align 8
  %184 = load i64, i64* @THREAD_WAITING, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %182
  %187 = load %struct.waitq*, %struct.waitq** %18, align 8
  %188 = call i32 @waitq_to_turnstile(%struct.waitq* %187)
  %189 = call i32 @turnstile_recompute_priority_locked(i32 %188)
  %190 = load %struct.waitq*, %struct.waitq** %18, align 8
  %191 = call i32 @waitq_to_turnstile(%struct.waitq* %190)
  %192 = call i32 @turnstile_update_inheritor_locked(i32 %191)
  br label %193

193:                                              ; preds = %186, %182, %176
  %194 = load %struct.waitq*, %struct.waitq** %18, align 8
  %195 = load %struct.waitq*, %struct.waitq** %9, align 8
  %196 = icmp ne %struct.waitq* %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load %struct.waitq*, %struct.waitq** %18, align 8
  %199 = call i32 @waitq_unlock(%struct.waitq* %198)
  br label %200

200:                                              ; preds = %197, %193
  %201 = load i32, i32* %20, align 4
  %202 = call i32 @splx(i32 %201)
  %203 = load i64, i64* %16, align 8
  store i64 %203, i64* %8, align 8
  br label %204

204:                                              ; preds = %200, %66
  %205 = load i64, i64* %8, align 8
  ret i64 %205
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_8__* @current_thread(...) #1

declare dso_local i32 @panic(i8*, %struct.waitq*) #1

declare dso_local i64 @waitq_is_set(%struct.waitq*) #1

declare dso_local i64 @waitq_set_maybe_preposted(%struct.waitq_set*) #1

declare dso_local i32 @wq_prepost_foreach_locked(%struct.waitq_set*, i32*, i32) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @thread_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local %struct.waitq* @waitq_get_safeq(%struct.waitq*) #1

declare dso_local i64 @_CAST_TO_EVENT_MASK(%struct.waitq*) #1

declare dso_local i32 @waitq_lock(%struct.waitq*) #1

declare dso_local i64 @thread_mark_wait_locked(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @waitq_thread_insert(%struct.waitq*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @timer_call_enter_with_leeway(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @waitq_is_global(%struct.waitq*) #1

declare dso_local i32 @waitq_stats_count_wait(%struct.waitq*) #1

declare dso_local i64 @waitq_is_turnstile_queue(%struct.waitq*) #1

declare dso_local i32 @turnstile_recompute_priority_locked(i32) #1

declare dso_local i32 @waitq_to_turnstile(%struct.waitq*) #1

declare dso_local i32 @turnstile_update_inheritor_locked(i32) #1

declare dso_local i32 @waitq_unlock(%struct.waitq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
