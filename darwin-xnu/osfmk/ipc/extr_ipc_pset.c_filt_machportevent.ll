; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_pset.c_filt_machportevent.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_pset.c_filt_machportevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@NOTE_REVOKE = common dso_local global i64 0, align 8
@EV_EOF = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@FILTER_ACTIVE = common dso_local global i32 0, align 4
@FILTER_RESET_EVENT_QOS = common dso_local global i32 0, align 4
@IKM_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, i64)* @filt_machportevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_machportevent(%struct.knote* %0, i64 %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.knote*, %struct.knote** %3, align 8
  %9 = getelementptr inbounds %struct.knote, %struct.knote* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = call i32 @imq_held(%struct.TYPE_7__* %12)
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @NOTE_REVOKE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load i32, i32* @EV_EOF, align 4
  %20 = load i32, i32* @EV_ONESHOT, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.knote*, %struct.knote** %3, align 8
  %23 = getelementptr inbounds %struct.knote, %struct.knote* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* @FILTER_ACTIVE, align 4
  %27 = load i32, i32* @FILTER_RESET_EVENT_QOS, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %7, align 4
  br label %53

29:                                               ; preds = %2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = call i64 @imq_is_valid(%struct.TYPE_7__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = call i32 @imq_is_set(%struct.TYPE_7__* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = call i32 @ipc_kmsg_queue_first(i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @IKM_NULL, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %33
  %46 = load i32, i32* @FILTER_ACTIVE, align 4
  %47 = load %struct.knote*, %struct.knote** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @filt_machport_adjust_qos(%struct.knote* %47, i32 %48)
  %50 = or i32 %46, %49
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %45, %33
  br label %52

52:                                               ; preds = %51, %29
  br label %53

53:                                               ; preds = %52, %18
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @imq_held(%struct.TYPE_7__*) #1

declare dso_local i64 @imq_is_valid(%struct.TYPE_7__*) #1

declare dso_local i32 @imq_is_set(%struct.TYPE_7__*) #1

declare dso_local i32 @ipc_kmsg_queue_first(i32*) #1

declare dso_local i32 @filt_machport_adjust_qos(%struct.knote*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
