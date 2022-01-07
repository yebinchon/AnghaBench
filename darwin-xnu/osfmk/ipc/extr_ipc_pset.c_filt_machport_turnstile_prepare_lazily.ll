; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_pset.c_filt_machport_turnstile_prepare_lazily.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_pset.c_filt_machport_turnstile_prepare_lazily.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }
%struct.knote = type { i32, i64*, i64 }
%struct.TYPE_3__ = type { i64 }

@KN_SUPPRESSED = common dso_local global i32 0, align 4
@KN_LOCKED = common dso_local global i32 0, align 4
@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8
@MACH_MSG_TYPE_PORT_SEND_ONCE = common dso_local global i64 0, align 8
@MACH_MSG_TYPE_PORT_RECEIVE = common dso_local global i64 0, align 8
@TURNSTILE_KNOTE = common dso_local global i32 0, align 4
@TURNSTILE_IMMEDIATE_UPDATE = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_TURNSTILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @filt_machport_turnstile_prepare_lazily(%struct.knote* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca %struct.knote*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.turnstile*, align 8
  %8 = alloca %struct.turnstile*, align 8
  store %struct.knote* %0, %struct.knote** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %9 = load %struct.knote*, %struct.knote** %4, align 8
  %10 = getelementptr inbounds %struct.knote, %struct.knote* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @KN_SUPPRESSED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.knote*, %struct.knote** %4, align 8
  %17 = getelementptr inbounds %struct.knote, %struct.knote* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @KN_LOCKED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %15, %3
  %23 = phi i1 [ false, %3 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.knote*, %struct.knote** %4, align 8
  %27 = call %struct.turnstile* @filt_machport_kqueue_turnstile(%struct.knote* %26)
  store %struct.turnstile* %27, %struct.turnstile** %7, align 8
  %28 = load %struct.turnstile*, %struct.turnstile** %7, align 8
  %29 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  %30 = icmp eq %struct.turnstile* %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %22
  %32 = load %struct.knote*, %struct.knote** %4, align 8
  %33 = getelementptr inbounds %struct.knote, %struct.knote* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load %struct.knote*, %struct.knote** %4, align 8
  %40 = getelementptr inbounds %struct.knote, %struct.knote* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %31, %22
  br label %74

44:                                               ; preds = %38
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @MACH_MSG_TYPE_PORT_SEND_ONCE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48, %44
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @MACH_MSG_TYPE_PORT_RECEIVE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53, %48
  %58 = call %struct.turnstile* (...) @turnstile_alloc()
  store %struct.turnstile* %58, %struct.turnstile** %8, align 8
  %59 = load %struct.knote*, %struct.knote** %4, align 8
  %60 = ptrtoint %struct.knote* %59 to i64
  %61 = load %struct.knote*, %struct.knote** %4, align 8
  %62 = getelementptr inbounds %struct.knote, %struct.knote* %61, i32 0, i32 2
  %63 = bitcast i64* %62 to %struct.turnstile**
  %64 = load %struct.turnstile*, %struct.turnstile** %8, align 8
  %65 = load i32, i32* @TURNSTILE_KNOTE, align 4
  %66 = call %struct.turnstile* @turnstile_prepare(i64 %60, %struct.turnstile** %63, %struct.turnstile* %64, i32 %65)
  store %struct.turnstile* %66, %struct.turnstile** %8, align 8
  %67 = load %struct.turnstile*, %struct.turnstile** %8, align 8
  %68 = load %struct.turnstile*, %struct.turnstile** %7, align 8
  %69 = load i32, i32* @TURNSTILE_IMMEDIATE_UPDATE, align 4
  %70 = load i32, i32* @TURNSTILE_INHERITOR_TURNSTILE, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @turnstile_update_inheritor(%struct.turnstile* %67, %struct.turnstile* %68, i32 %71)
  %73 = call i32 (...) @turnstile_cleanup()
  br label %74

74:                                               ; preds = %43, %57, %53
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.turnstile* @filt_machport_kqueue_turnstile(%struct.knote*) #1

declare dso_local %struct.turnstile* @turnstile_alloc(...) #1

declare dso_local %struct.turnstile* @turnstile_prepare(i64, %struct.turnstile**, %struct.turnstile*, i32) #1

declare dso_local i32 @turnstile_update_inheritor(%struct.turnstile*, %struct.turnstile*, i32) #1

declare dso_local i32 @turnstile_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
