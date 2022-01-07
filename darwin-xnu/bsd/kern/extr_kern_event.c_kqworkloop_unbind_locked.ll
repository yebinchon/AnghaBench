; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkloop_unbind_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkloop_unbind_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqworkloop = type { i64, i32*, i32, %struct.kqrequest }
%struct.kqrequest = type { i32, i32* }
%struct.uthread = type { i32, %struct.kqrequest* }

@BSD_KEVENT_KQWL_UNBIND = common dso_local global i32 0, align 4
@THREAD_QOS_UNSPECIFIED = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_NULL = common dso_local global i32 0, align 4
@TURNSTILE_IMMEDIATE_UPDATE = common dso_local global i32 0, align 4
@TURNSTILE_INTERLOCK_HELD = common dso_local global i32 0, align 4
@KQR_THREQUESTED = common dso_local global i32 0, align 4
@KQR_R2K_NOTIF_ARMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kqworkloop*, i32)* @kqworkloop_unbind_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kqworkloop_unbind_locked(%struct.kqworkloop* %0, i32 %1) #0 {
  %3 = alloca %struct.kqworkloop*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uthread*, align 8
  %6 = alloca %struct.kqrequest*, align 8
  %7 = alloca i32, align 4
  store %struct.kqworkloop* %0, %struct.kqworkloop** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.uthread* @get_bsdthread_info(i32 %8)
  store %struct.uthread* %9, %struct.uthread** %5, align 8
  %10 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %11 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %10, i32 0, i32 3
  store %struct.kqrequest* %11, %struct.kqrequest** %6, align 8
  %12 = load %struct.uthread*, %struct.uthread** %5, align 8
  %13 = getelementptr inbounds %struct.uthread, %struct.uthread* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @BSD_KEVENT_KQWL_UNBIND, align 4
  %16 = call i32 @KEV_EVTID(i32 %15)
  %17 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %18 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @thread_tid(i32 %20)
  %22 = call i32 @KDBG_FILTERED(i32 %16, i32 %19, i32 %21, i32 0, i32 0)
  %23 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %24 = call i32 @kq_req_held(%struct.kqworkloop* %23)
  %25 = load %struct.uthread*, %struct.uthread** %5, align 8
  %26 = getelementptr inbounds %struct.uthread, %struct.uthread* %25, i32 0, i32 1
  %27 = load %struct.kqrequest*, %struct.kqrequest** %26, align 8
  %28 = load %struct.kqrequest*, %struct.kqrequest** %6, align 8
  %29 = icmp eq %struct.kqrequest* %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.uthread*, %struct.uthread** %5, align 8
  %33 = getelementptr inbounds %struct.uthread, %struct.uthread* %32, i32 0, i32 1
  store %struct.kqrequest* null, %struct.kqrequest** %33, align 8
  %34 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %35 = load %struct.uthread*, %struct.uthread** %5, align 8
  %36 = getelementptr inbounds %struct.uthread, %struct.uthread* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %38 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %58

41:                                               ; preds = %2
  %42 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %43 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %48 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @TURNSTILE_INHERITOR_NULL, align 4
  %51 = load i32, i32* @TURNSTILE_IMMEDIATE_UPDATE, align 4
  %52 = call i32 @turnstile_update_inheritor(i64 %49, i32 %50, i32 %51)
  %53 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %54 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @TURNSTILE_INTERLOCK_HELD, align 4
  %57 = call i32 @turnstile_update_inheritor_complete(i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %46, %41, %2
  %59 = load %struct.kqrequest*, %struct.kqrequest** %6, align 8
  %60 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load i32, i32* @KQR_THREQUESTED, align 4
  %62 = load i32, i32* @KQR_R2K_NOTIF_ARMED, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load %struct.kqrequest*, %struct.kqrequest** %6, align 8
  %66 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local %struct.uthread* @get_bsdthread_info(i32) #1

declare dso_local i32 @KDBG_FILTERED(i32, i32, i32, i32, i32) #1

declare dso_local i32 @KEV_EVTID(i32) #1

declare dso_local i32 @thread_tid(i32) #1

declare dso_local i32 @kq_req_held(%struct.kqworkloop*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @turnstile_update_inheritor(i64, i32, i32) #1

declare dso_local i32 @turnstile_update_inheritor_complete(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
