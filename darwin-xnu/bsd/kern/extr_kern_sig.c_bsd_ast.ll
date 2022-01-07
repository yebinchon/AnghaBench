; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_bsd_ast.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_bsd_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, %struct.TYPE_24__, %struct.TYPE_22__, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_24__ }
%struct.uthread = type { i64, i64, i64 }
%struct.timeval = type { i64, i64 }

@bsd_ast.bsd_init_done = internal global i32 0, align 4
@P_OWEUPC = common dso_local global i32 0, align 4
@P_PROFIL = common dso_local global i32 0, align 4
@TASK_VTIMER_USER = common dso_local global i32 0, align 4
@SIGVTALRM = common dso_local global i32 0, align 4
@TASK_VTIMER_PROF = common dso_local global i32 0, align 4
@SIGPROF = common dso_local global i32 0, align 4
@TASK_VTIMER_RLIM = common dso_local global i32 0, align 4
@SIGXCPU = common dso_local global i32 0, align 4
@PROC_NULL = common dso_local global %struct.TYPE_23__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bsd_ast(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.uthread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 8
  store i32 %0, i32* %2, align 4
  %10 = call %struct.TYPE_23__* (...) @current_proc()
  store %struct.TYPE_23__* %10, %struct.TYPE_23__** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.uthread* @get_bsdthread_info(i32 %11)
  store %struct.uthread* %12, %struct.uthread** %4, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %14 = icmp eq %struct.TYPE_23__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %210

16:                                               ; preds = %1
  %17 = call i32 (...) @current_task()
  %18 = call i64 @task_did_exec(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = call i32 (...) @current_task()
  %22 = call i64 @task_is_exec_copy(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16
  br label %210

25:                                               ; preds = %20
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @P_OWEUPC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %25
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @P_PROFIL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %32
  %40 = call i32 (...) @get_useraddr()
  store i32 %40, i32* %6, align 4
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @addupc_task(%struct.TYPE_23__* %41, i32 %42, i32 1)
  %44 = load i32, i32* @P_OWEUPC, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = call i32 @OSBitAndAtomic(i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %39, %32, %25
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = call i64 @timerisset(%struct.TYPE_24__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %91

55:                                               ; preds = %49
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @TASK_VTIMER_USER, align 4
  %60 = call i32 @task_vtimer_update(i32 %58, i32 %59, i32* %7)
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 5
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @itimerdecr(%struct.TYPE_23__* %61, %struct.TYPE_22__* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %90, label %67

67:                                               ; preds = %55
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = call i64 @timerisset(%struct.TYPE_24__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @TASK_VTIMER_USER, align 4
  %78 = call i32 @task_vtimer_set(i32 %76, i32 %77)
  br label %85

79:                                               ; preds = %67
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @TASK_VTIMER_USER, align 4
  %84 = call i32 @task_vtimer_clear(i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %73
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* @SIGVTALRM, align 4
  %89 = call i32 @psignal_try_thread(%struct.TYPE_23__* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %55
  br label %91

91:                                               ; preds = %90, %49
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = call i64 @timerisset(%struct.TYPE_24__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %133

97:                                               ; preds = %91
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @TASK_VTIMER_PROF, align 4
  %102 = call i32 @task_vtimer_update(i32 %100, i32 %101, i32* %8)
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @itimerdecr(%struct.TYPE_23__* %103, %struct.TYPE_22__* %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %132, label %109

109:                                              ; preds = %97
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = call i64 @timerisset(%struct.TYPE_24__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @TASK_VTIMER_PROF, align 4
  %120 = call i32 @task_vtimer_set(i32 %118, i32 %119)
  br label %127

121:                                              ; preds = %109
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @TASK_VTIMER_PROF, align 4
  %126 = call i32 @task_vtimer_clear(i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %121, %115
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %129 = load i32, i32* %2, align 4
  %130 = load i32, i32* @SIGPROF, align 4
  %131 = call i32 @psignal_try_thread(%struct.TYPE_23__* %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %127, %97
  br label %133

133:                                              ; preds = %132, %91
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 3
  %136 = call i64 @timerisset(%struct.TYPE_24__* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %186

138:                                              ; preds = %133
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @TASK_VTIMER_RLIM, align 4
  %143 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %144 = bitcast i64* %143 to i32*
  %145 = call i32 @task_vtimer_update(i32 %141, i32 %142, i32* %144)
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %147 = call i32 @proc_spinlock(%struct.TYPE_23__* %146)
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %138
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp sgt i64 %157, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %153, %138
  %162 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %162, align 8
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 3
  %167 = call i32 @timersub(%struct.TYPE_24__* %164, %struct.timeval* %9, %struct.TYPE_24__* %166)
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %169 = call i32 @proc_spinunlock(%struct.TYPE_23__* %168)
  br label %185

170:                                              ; preds = %153
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 3
  %173 = call i32 @timerclear(%struct.TYPE_24__* %172)
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %175 = call i32 @proc_spinunlock(%struct.TYPE_23__* %174)
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @TASK_VTIMER_RLIM, align 4
  %180 = call i32 @task_vtimer_clear(i32 %178, i32 %179)
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %182 = load i32, i32* %2, align 4
  %183 = load i32, i32* @SIGXCPU, align 4
  %184 = call i32 @psignal_try_thread(%struct.TYPE_23__* %181, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %170, %161
  br label %186

186:                                              ; preds = %185, %133
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %188 = call i32 @proc_lock(%struct.TYPE_23__* %187)
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %190 = call i32 (...) @current_thread()
  %191 = load %struct.uthread*, %struct.uthread** %4, align 8
  %192 = call i64 @CHECK_SIGNALS(%struct.TYPE_23__* %189, i32 %190, %struct.uthread* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %186
  br label %195

195:                                              ; preds = %199, %194
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %197 = call i32 @issignal_locked(%struct.TYPE_23__* %196)
  store i32 %197, i32* %5, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load i32, i32* %5, align 4
  %201 = call i32 @postsig_locked(i32 %200)
  br label %195

202:                                              ; preds = %195
  br label %203

203:                                              ; preds = %202, %186
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %205 = call i32 @proc_unlock(%struct.TYPE_23__* %204)
  %206 = load i32, i32* @bsd_ast.bsd_init_done, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %203
  store i32 1, i32* @bsd_ast.bsd_init_done, align 4
  %209 = call i32 (...) @bsdinit_task()
  br label %210

210:                                              ; preds = %15, %24, %208, %203
  ret void
}

declare dso_local %struct.TYPE_23__* @current_proc(...) #1

declare dso_local %struct.uthread* @get_bsdthread_info(i32) #1

declare dso_local i64 @task_did_exec(i32) #1

declare dso_local i32 @current_task(...) #1

declare dso_local i64 @task_is_exec_copy(i32) #1

declare dso_local i32 @get_useraddr(...) #1

declare dso_local i32 @addupc_task(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @OSBitAndAtomic(i32, i32*) #1

declare dso_local i64 @timerisset(%struct.TYPE_24__*) #1

declare dso_local i32 @task_vtimer_update(i32, i32, i32*) #1

declare dso_local i32 @itimerdecr(%struct.TYPE_23__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @task_vtimer_set(i32, i32) #1

declare dso_local i32 @task_vtimer_clear(i32, i32) #1

declare dso_local i32 @psignal_try_thread(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @proc_spinlock(%struct.TYPE_23__*) #1

declare dso_local i32 @timersub(%struct.TYPE_24__*, %struct.timeval*, %struct.TYPE_24__*) #1

declare dso_local i32 @proc_spinunlock(%struct.TYPE_23__*) #1

declare dso_local i32 @timerclear(%struct.TYPE_24__*) #1

declare dso_local i32 @proc_lock(%struct.TYPE_23__*) #1

declare dso_local i64 @CHECK_SIGNALS(%struct.TYPE_23__*, i32, %struct.uthread*) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @issignal_locked(%struct.TYPE_23__*) #1

declare dso_local i32 @postsig_locked(i32) #1

declare dso_local i32 @proc_unlock(%struct.TYPE_23__*) #1

declare dso_local i32 @bsdinit_task(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
