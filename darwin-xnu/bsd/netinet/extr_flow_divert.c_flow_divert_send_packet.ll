; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_send_packet.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_pcb = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ECONNABORTED = common dso_local global i32 0, align 4
@g_flow_divert_kctl_ref = common dso_local global i32 0, align 4
@CTL_DATA_EOR = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@GROUP_BIT_CTL_ENQUEUE_BLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_divert_pcb*, i32, i64)* @flow_divert_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_send_packet(%struct.flow_divert_pcb* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.flow_divert_pcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.flow_divert_pcb* %0, %struct.flow_divert_pcb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %5, align 8
  %10 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp eq %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load i32, i32* @ECONNABORTED, align 4
  %15 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %5, align 8
  %16 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 4
  %19 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %5, align 8
  %20 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = call i32 @flow_divert_disconnect_socket(%struct.TYPE_4__* %21)
  %23 = load i32, i32* @ECONNABORTED, align 4
  store i32 %23, i32* %4, align 4
  br label %89

24:                                               ; preds = %3
  %25 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %5, align 8
  %26 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @lck_rw_lock_shared(i32* %28)
  %30 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %5, align 8
  %31 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = call i64 @MBUFQ_EMPTY(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %24
  %37 = load i32, i32* @g_flow_divert_kctl_ref, align 4
  %38 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %5, align 8
  %39 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @CTL_DATA_EOR, align 4
  %45 = call i32 @ctl_enqueuembuf(i32 %37, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  br label %48

46:                                               ; preds = %24
  %47 = load i32, i32* @ENOBUFS, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %46, %36
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @ENOBUFS, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %48
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %52
  %56 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %5, align 8
  %57 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = call i32 @lck_rw_lock_shared_to_exclusive(i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %55
  %63 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %5, align 8
  %64 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = call i32 @lck_rw_lock_exclusive(i32* %66)
  br label %68

68:                                               ; preds = %62, %55
  %69 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %5, align 8
  %70 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @MBUFQ_ENQUEUE(i32* %72, i32 %73)
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %68, %52
  %76 = load i32, i32* @GROUP_BIT_CTL_ENQUEUE_BLOCKED, align 4
  %77 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %5, align 8
  %78 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = call i32 @OSTestAndSet(i32 %76, i32* %80)
  br label %82

82:                                               ; preds = %75, %48
  %83 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %5, align 8
  %84 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = call i32 @lck_rw_done(i32* %86)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %82, %13
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @flow_divert_disconnect_socket(%struct.TYPE_4__*) #1

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local i64 @MBUFQ_EMPTY(i32*) #1

declare dso_local i32 @ctl_enqueuembuf(i32, i32, i32, i32) #1

declare dso_local i32 @lck_rw_lock_shared_to_exclusive(i32*) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32*) #1

declare dso_local i32 @MBUFQ_ENQUEUE(i32*, i32) #1

declare dso_local i32 @OSTestAndSet(i32, i32*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
