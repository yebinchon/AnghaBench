; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_input_handler.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_input_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlil_threading_info = type { i64, i64, i64, i64, i32, i32, i32, i64, i32, i64 }
%struct.ifnet = type { i64, i64, %struct.dlil_threading_info* }
%struct.mbuf = type { i32 }
%struct.ifnet_stat_increment_param = type { i64, i64 }
%struct.thread = type { i32 }
%struct.dlil_main_threading_info = type { i32 }

@dlil_main_input_thread = common dso_local global %struct.dlil_threading_info* null, align 8
@THREAD_NULL = common dso_local global i64 0, align 8
@lo_ifp = common dso_local global %struct.ifnet* null, align 8
@dlil_rcv_mit_pkts_min = common dso_local global i64 0, align 8
@dlil_rcv_mit_pkts_max = common dso_local global i64 0, align 8
@IFNET_FAMILY_ETHERNET = common dso_local global i64 0, align 8
@IFT_CELLULAR = common dso_local global i64 0, align 8
@dlil_rcv_mit_interval = common dso_local global i32 0, align 4
@DLIL_INPUT_WAITING = common dso_local global i32 0, align 4
@DLIL_INPUT_RUNNING = common dso_local global i32 0, align 4
@dlil_input_sanity_check = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlil_input_handler(%struct.ifnet* %0, %struct.mbuf* %1, %struct.mbuf* %2, %struct.ifnet_stat_increment_param* %3, i64 %4, %struct.thread* %5) #0 {
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.ifnet_stat_increment_param*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.thread*, align 8
  %13 = alloca %struct.dlil_threading_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.dlil_main_threading_info*, align 8
  %18 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %7, align 8
  store %struct.mbuf* %1, %struct.mbuf** %8, align 8
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store %struct.ifnet_stat_increment_param* %3, %struct.ifnet_stat_increment_param** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.thread* %5, %struct.thread** %12, align 8
  %19 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %10, align 8
  %20 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %14, align 8
  %22 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %10, align 8
  %23 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %15, align 8
  %25 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 2
  %27 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %26, align 8
  store %struct.dlil_threading_info* %27, %struct.dlil_threading_info** %13, align 8
  %28 = icmp eq %struct.dlil_threading_info* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** @dlil_main_input_thread, align 8
  store %struct.dlil_threading_info* %30, %struct.dlil_threading_info** %13, align 8
  br label %31

31:                                               ; preds = %29, %6
  %32 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %33 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %32, i32 0, i32 5
  %34 = call i32 @lck_mtx_lock_spin(i32* %33)
  %35 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %36 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** @dlil_main_input_thread, align 8
  %37 = icmp ne %struct.dlil_threading_info* %35, %36
  br i1 %37, label %38, label %106

38:                                               ; preds = %31
  %39 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %40 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %39, i32 0, i32 9
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %106

43:                                               ; preds = %38
  %44 = load %struct.thread*, %struct.thread** %12, align 8
  %45 = icmp ne %struct.thread* %44, null
  br i1 %45, label %46, label %106

46:                                               ; preds = %43
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %51 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @THREAD_NULL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %64, label %55

55:                                               ; preds = %49, %46
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %106

58:                                               ; preds = %55
  %59 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %60 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @THREAD_NULL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %106

64:                                               ; preds = %58, %49
  %65 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %66 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %16, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %72 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @THREAD_NULL, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @VERIFY(i32 %76)
  %78 = load %struct.thread*, %struct.thread** %12, align 8
  %79 = ptrtoint %struct.thread* %78 to i64
  %80 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %81 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  br label %94

82:                                               ; preds = %64
  %83 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %84 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @THREAD_NULL, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @VERIFY(i32 %88)
  %90 = load %struct.thread*, %struct.thread** %12, align 8
  %91 = ptrtoint %struct.thread* %90 to i64
  %92 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %93 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %82, %70
  %95 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %96 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %95, i32 0, i32 5
  %97 = call i32 @lck_mtx_unlock(i32* %96)
  %98 = load %struct.thread*, %struct.thread** %12, align 8
  %99 = load i64, i64* %16, align 8
  %100 = call i32 @dlil_affinity_set(%struct.thread* %98, i64 %99)
  %101 = load %struct.thread*, %struct.thread** %12, align 8
  %102 = call i32 @thread_reference(%struct.thread* %101)
  %103 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %104 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %103, i32 0, i32 5
  %105 = call i32 @lck_mtx_lock_spin(i32* %104)
  br label %106

106:                                              ; preds = %94, %58, %55, %43, %38, %31
  %107 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %108 = icmp ne %struct.mbuf* %107, null
  br i1 %108, label %117, label %109

109:                                              ; preds = %106
  %110 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %111 = icmp eq %struct.mbuf* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i64, i64* %14, align 8
  %114 = icmp eq i64 %113, 0
  br label %115

115:                                              ; preds = %112, %109
  %116 = phi i1 [ false, %109 ], [ %114, %112 ]
  br label %117

117:                                              ; preds = %115, %106
  %118 = phi i1 [ true, %106 ], [ %116, %115 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @VERIFY(i32 %119)
  %121 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %122 = icmp ne %struct.mbuf* %121, null
  br i1 %122, label %123, label %150

123:                                              ; preds = %117
  %124 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %125 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** @dlil_main_input_thread, align 8
  %126 = icmp eq %struct.dlil_threading_info* %124, %125
  br i1 %126, label %127, label %141

127:                                              ; preds = %123
  %128 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %129 = load %struct.ifnet*, %struct.ifnet** @lo_ifp, align 8
  %130 = icmp eq %struct.ifnet* %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %127
  %132 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %133 = bitcast %struct.dlil_threading_info* %132 to %struct.dlil_main_threading_info*
  store %struct.dlil_main_threading_info* %133, %struct.dlil_main_threading_info** %17, align 8
  %134 = load %struct.dlil_main_threading_info*, %struct.dlil_main_threading_info** %17, align 8
  %135 = getelementptr inbounds %struct.dlil_main_threading_info, %struct.dlil_main_threading_info* %134, i32 0, i32 0
  %136 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %137 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %138 = load i64, i64* %14, align 8
  %139 = load i64, i64* %15, align 8
  %140 = call i32 @_addq_multi(i32* %135, %struct.mbuf* %136, %struct.mbuf* %137, i64 %138, i64 %139)
  br label %149

141:                                              ; preds = %127, %123
  %142 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %143 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %142, i32 0, i32 8
  %144 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %145 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %146 = load i64, i64* %14, align 8
  %147 = load i64, i64* %15, align 8
  %148 = call i32 @_addq_multi(i32* %143, %struct.mbuf* %144, %struct.mbuf* %145, i64 %146, i64 %147)
  br label %149

149:                                              ; preds = %141, %131
  br label %150

150:                                              ; preds = %149, %117
  %151 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %10, align 8
  %152 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %153 = load i64, i64* %11, align 8
  %154 = call i32 @dlil_input_stats_add(%struct.ifnet_stat_increment_param* %151, %struct.dlil_threading_info* %152, i64 %153)
  %155 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %156 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** @dlil_main_input_thread, align 8
  %157 = icmp eq %struct.dlil_threading_info* %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %150
  %159 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %160 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %161 = call i32 @dlil_input_stats_sync(%struct.ifnet* %159, %struct.dlil_threading_info* %160)
  br label %162

162:                                              ; preds = %158, %150
  %163 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %164 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %163, i32 0, i32 7
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %206

167:                                              ; preds = %162
  %168 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %169 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %168, i32 0, i32 8
  %170 = call i64 @qlen(i32* %169)
  %171 = load i64, i64* @dlil_rcv_mit_pkts_min, align 8
  %172 = icmp sge i64 %170, %171
  br i1 %172, label %173, label %206

173:                                              ; preds = %167
  %174 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %175 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %174, i32 0, i32 8
  %176 = call i64 @qlen(i32* %175)
  %177 = load i64, i64* @dlil_rcv_mit_pkts_max, align 8
  %178 = icmp slt i64 %176, %177
  br i1 %178, label %179, label %206

179:                                              ; preds = %173
  %180 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %181 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @IFNET_FAMILY_ETHERNET, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %191, label %185

185:                                              ; preds = %179
  %186 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %187 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @IFT_CELLULAR, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %206

191:                                              ; preds = %185, %179
  %192 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %193 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %192, i32 0, i32 7
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @thread_call_isactive(i64 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %205, label %197

197:                                              ; preds = %191
  %198 = load i32, i32* @dlil_rcv_mit_interval, align 4
  %199 = call i32 @clock_interval_to_deadline(i32 %198, i32 1, i32* %18)
  %200 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %201 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %200, i32 0, i32 7
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* %18, align 4
  %204 = call i32 @thread_call_enter_delayed(i64 %202, i32 %203)
  br label %205

205:                                              ; preds = %197, %191
  br label %228

206:                                              ; preds = %185, %173, %167, %162
  %207 = load i32, i32* @DLIL_INPUT_WAITING, align 4
  %208 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %209 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 8
  %212 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %213 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @DLIL_INPUT_RUNNING, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %227, label %218

218:                                              ; preds = %206
  %219 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %220 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 8
  %223 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %224 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %223, i32 0, i32 4
  %225 = ptrtoint i32* %224 to i32
  %226 = call i32 @wakeup_one(i32 %225)
  br label %227

227:                                              ; preds = %218, %206
  br label %228

228:                                              ; preds = %227, %205
  %229 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %13, align 8
  %230 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %229, i32 0, i32 5
  %231 = call i32 @lck_mtx_unlock(i32* %230)
  ret i32 0
}

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @dlil_affinity_set(%struct.thread*, i64) #1

declare dso_local i32 @thread_reference(%struct.thread*) #1

declare dso_local i32 @_addq_multi(i32*, %struct.mbuf*, %struct.mbuf*, i64, i64) #1

declare dso_local i32 @dlil_input_stats_add(%struct.ifnet_stat_increment_param*, %struct.dlil_threading_info*, i64) #1

declare dso_local i32 @dlil_input_stats_sync(%struct.ifnet*, %struct.dlil_threading_info*) #1

declare dso_local i64 @qlen(i32*) #1

declare dso_local i32 @thread_call_isactive(i64) #1

declare dso_local i32 @clock_interval_to_deadline(i32, i32, i32*) #1

declare dso_local i32 @thread_call_enter_delayed(i64, i32) #1

declare dso_local i32 @wakeup_one(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
