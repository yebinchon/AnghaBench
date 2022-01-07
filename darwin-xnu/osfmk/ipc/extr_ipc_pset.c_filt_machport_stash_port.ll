; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_pset.c_filt_machport_stash_port.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_pset.c_filt_machport_stash_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }
%struct.knote = type { i64*, i64 }

@PORT_SYNC_LINK_NO_LINKAGE = common dso_local global i32 0, align 4
@PORT_SYNC_LINK_WORKLOOP_KNOTE = common dso_local global i32 0, align 4
@PORT_SYNC_LINK_WORKLOOP_STASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.turnstile* @filt_machport_stash_port(%struct.knote* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.knote*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.turnstile*, align 8
  store %struct.knote* %0, %struct.knote** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.knote*, %struct.knote** %4, align 8
  %9 = call %struct.turnstile* @filt_machport_kqueue_turnstile(%struct.knote* %8)
  store %struct.turnstile* %9, %struct.turnstile** %7, align 8
  %10 = load %struct.turnstile*, %struct.turnstile** %7, align 8
  %11 = icmp ne %struct.turnstile* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @PORT_SYNC_LINK_NO_LINKAGE, align 4
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %12
  br label %52

19:                                               ; preds = %3
  %20 = load %struct.knote*, %struct.knote** %4, align 8
  %21 = getelementptr inbounds %struct.knote, %struct.knote* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %19
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @ip_reference(i64 %27)
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.knote*, %struct.knote** %4, align 8
  %31 = getelementptr inbounds %struct.knote, %struct.knote* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 3
  store i64 %29, i64* %33, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @PORT_SYNC_LINK_WORKLOOP_KNOTE, align 4
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %26
  br label %51

40:                                               ; preds = %19
  %41 = load %struct.knote*, %struct.knote** %4, align 8
  %42 = getelementptr inbounds %struct.knote, %struct.knote* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.turnstile*
  store %struct.turnstile* %44, %struct.turnstile** %7, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @PORT_SYNC_LINK_WORKLOOP_STASH, align 4
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %40
  br label %51

51:                                               ; preds = %50, %39
  br label %52

52:                                               ; preds = %51, %18
  %53 = load %struct.turnstile*, %struct.turnstile** %7, align 8
  ret %struct.turnstile* %53
}

declare dso_local %struct.turnstile* @filt_machport_kqueue_turnstile(%struct.knote*) #1

declare dso_local i32 @ip_reference(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
