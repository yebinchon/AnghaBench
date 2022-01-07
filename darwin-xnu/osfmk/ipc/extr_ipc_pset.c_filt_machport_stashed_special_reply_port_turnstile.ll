; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_pset.c_filt_machport_stashed_special_reply_port_turnstile.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_pset.c_filt_machport_stashed_special_reply_port_turnstile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }
%struct.TYPE_3__ = type { i32, i64, %struct.knote* }
%struct.knote = type { i64*, %struct.turnstile* }

@PORT_SYNC_LINK_WORKLOOP_KNOTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.turnstile* @filt_machport_stashed_special_reply_port_turnstile(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.turnstile*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.knote*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %7 = load %struct.knote*, %struct.knote** %6, align 8
  store %struct.knote* %7, %struct.knote** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PORT_SYNC_LINK_WORKLOOP_KNOTE, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.knote*, %struct.knote** %4, align 8
  %20 = getelementptr inbounds %struct.knote, %struct.knote* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 3
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = ptrtoint %struct.TYPE_3__* %24 to i64
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.knote*, %struct.knote** %4, align 8
  %29 = call i32 @knote_get_kq(%struct.knote* %28)
  %30 = call %struct.turnstile* @kqueue_turnstile(i32 %29)
  store %struct.turnstile* %30, %struct.turnstile** %2, align 8
  br label %35

31:                                               ; preds = %1
  %32 = load %struct.knote*, %struct.knote** %4, align 8
  %33 = getelementptr inbounds %struct.knote, %struct.knote* %32, i32 0, i32 1
  %34 = load %struct.turnstile*, %struct.turnstile** %33, align 8
  store %struct.turnstile* %34, %struct.turnstile** %2, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  ret %struct.turnstile* %36
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.turnstile* @kqueue_turnstile(i32) #1

declare dso_local i32 @knote_get_kq(%struct.knote*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
