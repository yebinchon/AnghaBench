; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ast.c_ast_taken_user.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ast.c_ast_taken_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i64, i64, i64, i32*, i32 }

@FALSE = common dso_local global i64 0, align 8
@TH_IDLE = common dso_local global i32 0, align 4
@AST_URGENT = common dso_local global i64 0, align 8
@AST_PREEMPTION = common dso_local global i32 0, align 4
@AST_PREEMPT = common dso_local global i32 0, align 4
@thread_preempted = common dso_local global i32 0, align 4
@AST_PER_THREAD = common dso_local global i32 0, align 4
@AST_KPERF = common dso_local global i32 0, align 4
@AST_DTRACE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AST_APC = common dso_local global i32 0, align 4
@AST_GUARD = common dso_local global i32 0, align 4
@AST_LEDGER = common dso_local global i32 0, align 4
@AST_KEVENT = common dso_local global i32 0, align 4
@AST_QUANTUM = common dso_local global i32 0, align 4
@c_ast_taken_block = common dso_local global i32 0, align 4
@AST_UNQUIESCE = common dso_local global i32 0, align 4
@TH_SFLAG_WAITQ_PROMOTED = common dso_local global i32 0, align 4
@TH_SFLAG_RW_PROMOTED = common dso_local global i32 0, align 4
@TH_SFLAG_EXEC_PROMOTED = common dso_local global i32 0, align 4
@TH_SFLAG_PROMOTED = common dso_local global i32 0, align 4
@TH_SFLAG_DEPRESS = common dso_local global i32 0, align 4
@AST_BSD = common dso_local global i32 0, align 4
@AST_MACF = common dso_local global i32 0, align 4
@AST_SFI = common dso_local global i32 0, align 4
@AST_TELEMETRY_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ast_taken_user() #0 {
  %1 = alloca %struct.TYPE_17__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i64 (...) @ml_get_interrupts_enabled()
  %8 = load i64, i64* @FALSE, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = call %struct.TYPE_17__* (...) @current_thread()
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %1, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %14 = call i32 @waitq_wait_possible(%struct.TYPE_17__* %13)
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TH_IDLE, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i64, i64* @AST_URGENT, align 8
  %25 = call i64 @ast_peek(i64 %24)
  %26 = load i64, i64* @AST_URGENT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %0
  %29 = load i32, i32* @AST_PREEMPTION, align 4
  %30 = call i32 @ast_consume(i32 %29)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @AST_PREEMPT, align 4
  %33 = and i32 %31, %32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* @thread_preempted, align 4
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @thread_block_reason(i32 %35, i32* null, i32 %36)
  br label %38

38:                                               ; preds = %28, %0
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %40 = call i32 @ast_propagate(%struct.TYPE_17__* %39)
  %41 = load i32, i32* @AST_PER_THREAD, align 4
  %42 = load i32, i32* @AST_KPERF, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @AST_DTRACE, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @ast_consume(i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* @TRUE, align 4
  %48 = call i32 @ml_set_interrupts_enabled(i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @AST_APC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %38
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %55 = load i32, i32* @AST_APC, align 4
  %56 = call i32 @thread_ast_clear(%struct.TYPE_17__* %54, i32 %55)
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %58 = call i32 @thread_apc_ast(%struct.TYPE_17__* %57)
  br label %59

59:                                               ; preds = %53, %38
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @AST_GUARD, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %66 = load i32, i32* @AST_GUARD, align 4
  %67 = call i32 @thread_ast_clear(%struct.TYPE_17__* %65, i32 %66)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %69 = call i32 @guard_ast(%struct.TYPE_17__* %68)
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @AST_LEDGER, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %77 = load i32, i32* @AST_LEDGER, align 4
  %78 = call i32 @thread_ast_clear(%struct.TYPE_17__* %76, i32 %77)
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %80 = call i32 @ledger_ast(%struct.TYPE_17__* %79)
  br label %81

81:                                               ; preds = %75, %70
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @AST_KPERF, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %88 = load i32, i32* @AST_KPERF, align 4
  %89 = call i32 @thread_ast_clear(%struct.TYPE_17__* %87, i32 %88)
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %91 = call i32 @kperf_kpc_thread_ast(%struct.TYPE_17__* %90)
  br label %92

92:                                               ; preds = %86, %81
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @AST_KEVENT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %92
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %99 = load i32, i32* @AST_KEVENT, align 4
  %100 = call i32 @thread_ast_clear(%struct.TYPE_17__* %98, i32 %99)
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 6
  %103 = call i64 @atomic_exchange(i32* %102, i32 0)
  store i64 %103, i64* %4, align 8
  %104 = load i64, i64* %4, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %97
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %108 = load i64, i64* %4, align 8
  %109 = call i32 @kevent_ast(%struct.TYPE_17__* %107, i64 %108)
  br label %110

110:                                              ; preds = %106, %97
  br label %111

111:                                              ; preds = %110, %92
  %112 = call i32 (...) @splsched()
  store i32 %112, i32* %5, align 4
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %114 = call i32 @waitq_wait_possible(%struct.TYPE_17__* %113)
  %115 = call i32 @assert(i32 %114)
  %116 = load i32, i32* @AST_PREEMPTION, align 4
  %117 = call i32 @ast_consume(i32 %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @AST_PREEMPT, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %144

122:                                              ; preds = %111
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %124 = call i32 @thread_lock(%struct.TYPE_17__* %123)
  %125 = call i32 (...) @current_processor()
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @AST_QUANTUM, align 4
  %128 = and i32 %126, %127
  %129 = call i32 @csw_check(i32 %125, i32 %128)
  store i32 %129, i32* %6, align 4
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %131 = call i32 @thread_unlock(%struct.TYPE_17__* %130)
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @AST_PREEMPT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %122
  %137 = load i32, i32* @c_ast_taken_block, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* @c_ast_taken_block, align 4
  %139 = call i32 @counter(i32 %137)
  %140 = load i32, i32* @thread_preempted, align 4
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @thread_block_reason(i32 %140, i32* null, i32 %141)
  br label %143

143:                                              ; preds = %136, %122
  br label %144

144:                                              ; preds = %143, %111
  %145 = load i32, i32* @AST_UNQUIESCE, align 4
  %146 = call i32 @ast_consume(i32 %145)
  %147 = load i32, i32* @AST_UNQUIESCE, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = call i32 (...) @cpu_quiescent_counter_ast()
  br label %151

151:                                              ; preds = %149, %144
  %152 = call i32 (...) @cpu_quiescent_counter_assert_ast()
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @splx(i32 %153)
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @TH_SFLAG_WAITQ_PROMOTED, align 4
  %159 = and i32 %157, %158
  %160 = icmp eq i32 %159, 0
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @TH_SFLAG_RW_PROMOTED, align 4
  %167 = and i32 %165, %166
  %168 = icmp eq i32 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @TH_SFLAG_EXEC_PROMOTED, align 4
  %175 = and i32 %173, %174
  %176 = icmp eq i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert(i32 %177)
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @TH_SFLAG_PROMOTED, align 4
  %183 = and i32 %181, %182
  %184 = icmp eq i32 %183, 0
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @TH_SFLAG_DEPRESS, align 4
  %191 = and i32 %189, %190
  %192 = icmp eq i32 %191, 0
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert(i32 %193)
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp eq i64 %197, 0
  %199 = zext i1 %198 to i32
  %200 = call i32 @assert(i32 %199)
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = icmp eq i64 %203, 0
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert(i32 %205)
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 5
  %209 = load i32*, i32** %208, align 8
  %210 = icmp eq i32* %209, null
  %211 = zext i1 %210 to i32
  %212 = call i32 @assert(i32 %211)
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 4
  %215 = load i64, i64* %214, align 8
  %216 = icmp eq i64 %215, 0
  %217 = zext i1 %216 to i32
  %218 = call i32 @assert(i32 %217)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local %struct.TYPE_17__* @current_thread(...) #1

declare dso_local i32 @waitq_wait_possible(%struct.TYPE_17__*) #1

declare dso_local i64 @ast_peek(i64) #1

declare dso_local i32 @ast_consume(i32) #1

declare dso_local i32 @thread_block_reason(i32, i32*, i32) #1

declare dso_local i32 @ast_propagate(%struct.TYPE_17__*) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @thread_ast_clear(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @thread_apc_ast(%struct.TYPE_17__*) #1

declare dso_local i32 @guard_ast(%struct.TYPE_17__*) #1

declare dso_local i32 @ledger_ast(%struct.TYPE_17__*) #1

declare dso_local i32 @kperf_kpc_thread_ast(%struct.TYPE_17__*) #1

declare dso_local i64 @atomic_exchange(i32*, i32) #1

declare dso_local i32 @kevent_ast(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @thread_lock(%struct.TYPE_17__*) #1

declare dso_local i32 @csw_check(i32, i32) #1

declare dso_local i32 @current_processor(...) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_17__*) #1

declare dso_local i32 @counter(i32) #1

declare dso_local i32 @cpu_quiescent_counter_ast(...) #1

declare dso_local i32 @cpu_quiescent_counter_assert_ast(...) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
