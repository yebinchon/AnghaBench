; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c___bte_waitrequest.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c___bte_waitrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctrl_req_t = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ERR_VAL = common dso_local global i32 0, align 4
@STATE_SENT = common dso_local global i64 0, align 8
@STATE_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctrl_req_t*)* @__bte_waitrequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bte_waitrequest(%struct.ctrl_req_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctrl_req_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ctrl_req_t* %0, %struct.ctrl_req_t** %3, align 8
  %6 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %3, align 8
  %7 = icmp ne %struct.ctrl_req_t* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %3, align 8
  %10 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @ERR_VAL, align 4
  store i32 %14, i32* %2, align 4
  br label %46

15:                                               ; preds = %8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @_CPU_ISR_Disable(i32 %16)
  br label %18

18:                                               ; preds = %32, %15
  %19 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %3, align 8
  %20 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @STATE_SENT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %3, align 8
  %26 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @STATE_FAILED, align 8
  %29 = icmp ne i64 %27, %28
  br label %30

30:                                               ; preds = %24, %18
  %31 = phi i1 [ false, %18 ], [ %29, %24 ]
  br i1 %31, label %32, label %39

32:                                               ; preds = %30
  %33 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %3, align 8
  %34 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @LWP_ThreadSleep(i32 %37)
  br label %18

39:                                               ; preds = %30
  %40 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %3, align 8
  %41 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @_CPU_ISR_Restore(i32 %43)
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %39, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @LWP_ThreadSleep(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
