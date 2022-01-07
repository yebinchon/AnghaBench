; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_tcp_sched_timers.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_tcp_sched_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcptimerlist = type { i64, i64, i64, i64, i64, i32, i64, i32, i64, i64, i32 }
%struct.tcpcb = type { i32, %struct.TYPE_2__*, %struct.tcptimerentry }
%struct.TYPE_2__ = type { i64 }
%struct.tcptimerentry = type { i64, i64, i32 }

@tcp_timer_list = common dso_local global %struct.tcptimerlist zeroinitializer, align 8
@FALSE = common dso_local global i64 0, align 8
@INPCB_STATE_DEAD = common dso_local global i64 0, align 8
@TCPT_NONE = common dso_local global i64 0, align 8
@tcp_now = common dso_local global i32 0, align 4
@tcp_timer_advanced = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@le = common dso_local global i32 0, align 4
@TF_TIMER_ONLIST = common dso_local global i32 0, align 4
@tcp_resched_timerlist = common dso_local global i32 0, align 4
@TCP_TIMERLIST_10MS_MODE = common dso_local global i64 0, align 8
@TCP_TIMER_10MS_QUANTUM = common dso_local global i32 0, align 4
@TCP_TIMERLIST_100MS_MODE = common dso_local global i64 0, align 8
@TCP_TIMER_100MS_QUANTUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_sched_timers(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca %struct.tcptimerentry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tcptimerlist*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %10 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %11 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %10, i32 0, i32 2
  store %struct.tcptimerentry* %11, %struct.tcptimerentry** %3, align 8
  %12 = load %struct.tcptimerentry*, %struct.tcptimerentry** %3, align 8
  %13 = getelementptr inbounds %struct.tcptimerentry, %struct.tcptimerentry* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  %15 = load %struct.tcptimerentry*, %struct.tcptimerentry** %3, align 8
  %16 = getelementptr inbounds %struct.tcptimerentry, %struct.tcptimerentry* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  store %struct.tcptimerlist* @tcp_timer_list, %struct.tcptimerlist** %6, align 8
  store i64 0, i64* %7, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %20 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @INPCB_STATE_DEAD, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %1
  %27 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %28 = call i64 @TIMER_IS_ON_LIST(%struct.tcpcb* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %32 = call i32 @tcp_remove_timer(%struct.tcpcb* %31)
  br label %33

33:                                               ; preds = %30, %26
  br label %222

34:                                               ; preds = %1
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @TCPT_NONE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %40 = call i32 @tcp_remove_timer(%struct.tcpcb* %39)
  br label %222

41:                                               ; preds = %34
  %42 = load %struct.tcptimerentry*, %struct.tcptimerentry** %3, align 8
  %43 = getelementptr inbounds %struct.tcptimerentry, %struct.tcptimerentry* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @tcp_now, align 4
  %46 = call i64 @timer_diff(i32 %44, i32 0, i32 %45, i64 0)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp sle i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  store i64 1, i64* %7, align 8
  %50 = load i32, i32* @tcp_timer_advanced, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @tcp_timer_advanced, align 4
  br label %52

52:                                               ; preds = %49, %41
  %53 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %54 = call i64 @TIMER_IS_ON_LIST(%struct.tcpcb* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %105, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %61 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @lck_mtx_lock(i32 %62)
  %64 = load i64, i64* @TRUE, align 8
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %59, %56
  %66 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %67 = call i64 @TIMER_IS_ON_LIST(%struct.tcpcb* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %104, label %69

69:                                               ; preds = %65
  %70 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %71 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %70, i32 0, i32 10
  %72 = load %struct.tcptimerentry*, %struct.tcptimerentry** %3, align 8
  %73 = load i32, i32* @le, align 4
  %74 = call i32 @LIST_INSERT_HEAD(i32* %71, %struct.tcptimerentry* %72, i32 %73)
  %75 = load i32, i32* @TF_TIMER_ONLIST, align 4
  %76 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %77 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %81 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %81, align 8
  %84 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %85 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %88 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %86, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %69
  %92 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %93 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %96 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %91, %69
  %98 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %99 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %98, i32 0, i32 8
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  br label %174

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %65
  br label %105

105:                                              ; preds = %104, %52
  %106 = load %struct.tcptimerentry*, %struct.tcptimerentry** %3, align 8
  %107 = getelementptr inbounds %struct.tcptimerentry, %struct.tcptimerentry* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %5, align 8
  %110 = call i64 @need_to_resched_timerlist(i32 %108, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %173

112:                                              ; preds = %105
  %113 = load i32, i32* @tcp_resched_timerlist, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* @tcp_resched_timerlist, align 4
  %115 = load i64, i64* %8, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %112
  %118 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %119 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @lck_mtx_lock(i32 %120)
  %122 = load i64, i64* @TRUE, align 8
  store i64 %122, i64* %8, align 8
  br label %123

123:                                              ; preds = %117, %112
  %124 = load %struct.tcptimerentry*, %struct.tcptimerentry** %3, align 8
  %125 = load i32, i32* @le, align 4
  %126 = call i32 @VERIFY_NEXT_LINK(%struct.tcptimerentry* %124, i32 %125)
  %127 = load %struct.tcptimerentry*, %struct.tcptimerentry** %3, align 8
  %128 = load i32, i32* @le, align 4
  %129 = call i32 @VERIFY_PREV_LINK(%struct.tcptimerentry* %127, i32 %128)
  %130 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %131 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %130, i32 0, i32 9
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %155

134:                                              ; preds = %123
  %135 = load i64, i64* %5, align 8
  %136 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %137 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = or i64 %138, %135
  store i64 %139, i64* %137, align 8
  %140 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %141 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %134
  %145 = load i64, i64* %7, align 8
  %146 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %147 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = icmp slt i64 %145, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %144, %134
  %151 = load i64, i64* %7, align 8
  %152 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %153 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %152, i32 0, i32 3
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %150, %144
  br label %172

155:                                              ; preds = %123
  %156 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %157 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %156, i32 0, i32 8
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %155
  %161 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %162 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @tcp_now, align 4
  %165 = load i64, i64* %7, align 8
  %166 = call i64 @timer_diff(i32 %163, i32 0, i32 %164, i64 %165)
  store i64 %166, i64* %9, align 8
  %167 = load i64, i64* %9, align 8
  %168 = icmp sle i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %160
  br label %213

170:                                              ; preds = %160
  br label %174

171:                                              ; preds = %155
  br label %174

172:                                              ; preds = %154
  br label %173

173:                                              ; preds = %172, %105
  br label %213

174:                                              ; preds = %171, %170, %102
  %175 = load i64, i64* %5, align 8
  %176 = load i64, i64* @TCP_TIMERLIST_10MS_MODE, align 8
  %177 = and i64 %175, %176
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %174
  %180 = load i64, i64* @TCP_TIMERLIST_10MS_MODE, align 8
  %181 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %182 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %181, i32 0, i32 4
  store i64 %180, i64* %182, align 8
  %183 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %184 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %183, i32 0, i32 6
  store i64 0, i64* %184, align 8
  %185 = load i64, i64* %7, align 8
  %186 = load i32, i32* @TCP_TIMER_10MS_QUANTUM, align 4
  %187 = call i64 @min(i64 %185, i32 %186)
  store i64 %187, i64* %7, align 8
  br label %210

188:                                              ; preds = %174
  %189 = load i64, i64* %5, align 8
  %190 = load i64, i64* @TCP_TIMERLIST_100MS_MODE, align 8
  %191 = and i64 %189, %190
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %209

193:                                              ; preds = %188
  %194 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %195 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @TCP_TIMERLIST_100MS_MODE, align 8
  %198 = icmp sgt i64 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = load i64, i64* @TCP_TIMERLIST_100MS_MODE, align 8
  %201 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %202 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %201, i32 0, i32 4
  store i64 %200, i64* %202, align 8
  br label %203

203:                                              ; preds = %199, %193
  %204 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %205 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %204, i32 0, i32 6
  store i64 0, i64* %205, align 8
  %206 = load i64, i64* %7, align 8
  %207 = load i32, i32* @TCP_TIMER_100MS_QUANTUM, align 4
  %208 = call i64 @min(i64 %206, i32 %207)
  store i64 %208, i64* %7, align 8
  br label %209

209:                                              ; preds = %203, %188
  br label %210

210:                                              ; preds = %209, %179
  %211 = load i64, i64* %7, align 8
  %212 = call i32 @tcp_sched_timerlist(i64 %211)
  br label %213

213:                                              ; preds = %210, %173, %169
  %214 = load i64, i64* %8, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %213
  %217 = load %struct.tcptimerlist*, %struct.tcptimerlist** %6, align 8
  %218 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @lck_mtx_unlock(i32 %219)
  br label %221

221:                                              ; preds = %216, %213
  br label %222

222:                                              ; preds = %221, %38, %33
  ret void
}

declare dso_local i64 @TIMER_IS_ON_LIST(%struct.tcpcb*) #1

declare dso_local i32 @tcp_remove_timer(%struct.tcpcb*) #1

declare dso_local i64 @timer_diff(i32, i32, i32, i64) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.tcptimerentry*, i32) #1

declare dso_local i64 @need_to_resched_timerlist(i32, i64) #1

declare dso_local i32 @VERIFY_NEXT_LINK(%struct.tcptimerentry*, i32) #1

declare dso_local i32 @VERIFY_PREV_LINK(%struct.tcptimerentry*, i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @tcp_sched_timerlist(i64) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
