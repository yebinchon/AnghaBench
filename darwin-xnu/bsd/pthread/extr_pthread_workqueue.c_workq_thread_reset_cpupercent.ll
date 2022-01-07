; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_thread_reset_cpupercent.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_thread_reset_cpupercent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.uthread = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }

@TR_FLAG_WL_PARAMS = common dso_local global i32 0, align 4
@UT_WORKQ_CPUPERCENT = common dso_local global i32 0, align 4
@THREAD_CPULIMIT_DISABLE = common dso_local global i32 0, align 4
@TRP_CPUPERCENT = common dso_local global i32 0, align 4
@THREAD_CPULIMIT_BLOCK = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.uthread*)* @workq_thread_reset_cpupercent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @workq_thread_reset_cpupercent(%struct.TYPE_6__* %0, %struct.uthread* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.uthread*, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.uthread* %1, %struct.uthread** %4, align 8
  %7 = load %struct.uthread*, %struct.uthread** %4, align 8
  %8 = call %struct.uthread* (...) @current_uthread()
  %9 = icmp eq %struct.uthread* %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TR_FLAG_WL_PARAMS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  call void @kqueue_threadreq_workloop_param(%struct.TYPE_7__* sret %6, %struct.TYPE_6__* %23)
  %24 = bitcast %struct.TYPE_7__* %5 to i8*
  %25 = bitcast %struct.TYPE_7__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 24, i1 false)
  br label %26

26:                                               ; preds = %22, %15, %2
  %27 = load %struct.uthread*, %struct.uthread** %4, align 8
  %28 = getelementptr inbounds %struct.uthread, %struct.uthread* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @UT_WORKQ_CPUPERCENT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load i32, i32* @THREAD_CPULIMIT_DISABLE, align 4
  %35 = call i32 @thread_set_cpulimit(i32 %34, i32 0, i32 0)
  %36 = load i32, i32* @UT_WORKQ_CPUPERCENT, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.uthread*, %struct.uthread** %4, align 8
  %39 = getelementptr inbounds %struct.uthread, %struct.uthread* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %33, %26
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @TRP_CPUPERCENT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load i32, i32* @THREAD_CPULIMIT_BLOCK, align 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @NSEC_PER_SEC, align 4
  %56 = mul nsw i32 %54, %55
  %57 = call i32 @thread_set_cpulimit(i32 %49, i32 %51, i32 %56)
  %58 = load i32, i32* @UT_WORKQ_CPUPERCENT, align 4
  %59 = load %struct.uthread*, %struct.uthread** %4, align 8
  %60 = getelementptr inbounds %struct.uthread, %struct.uthread* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %48, %42
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.uthread* @current_uthread(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @kqueue_threadreq_workloop_param(%struct.TYPE_7__* sret, %struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @thread_set_cpulimit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
