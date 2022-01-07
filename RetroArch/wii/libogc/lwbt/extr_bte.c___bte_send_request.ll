; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c___bte_send_request.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c___bte_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctrl_req_t = type { %struct.TYPE_2__*, %struct.ctrl_req_t*, i32, i32 }
%struct.TYPE_2__ = type { %struct.ctrl_req_t*, %struct.ctrl_req_t* }

@ERR_VAL = common dso_local global i32 0, align 4
@STATE_READY = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctrl_req_t*)* @__bte_send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bte_send_request(%struct.ctrl_req_t* %0) #0 {
  %2 = alloca %struct.ctrl_req_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ctrl_req_t* %0, %struct.ctrl_req_t** %2, align 8
  %5 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %2, align 8
  %6 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %5, i32 0, i32 1
  store %struct.ctrl_req_t* null, %struct.ctrl_req_t** %6, align 8
  %7 = load i32, i32* @ERR_VAL, align 4
  %8 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %2, align 8
  %9 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @STATE_READY, align 4
  %11 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %2, align 8
  %12 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @_CPU_ISR_Disable(i32 %13)
  %15 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %2, align 8
  %16 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %18, align 8
  %20 = icmp eq %struct.ctrl_req_t* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %2, align 8
  %23 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %2, align 8
  %24 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.ctrl_req_t* %22, %struct.ctrl_req_t** %26, align 8
  %27 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %2, align 8
  %28 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store %struct.ctrl_req_t* %22, %struct.ctrl_req_t** %30, align 8
  %31 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %2, align 8
  %32 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 @__bte_send_pending_request(%struct.TYPE_2__* %33)
  store i32 %34, i32* %3, align 4
  br label %49

35:                                               ; preds = %1
  %36 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %2, align 8
  %37 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %2, align 8
  %38 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %40, align 8
  %42 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %41, i32 0, i32 1
  store %struct.ctrl_req_t* %36, %struct.ctrl_req_t** %42, align 8
  %43 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %2, align 8
  %44 = load %struct.ctrl_req_t*, %struct.ctrl_req_t** %2, align 8
  %45 = getelementptr inbounds %struct.ctrl_req_t, %struct.ctrl_req_t* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store %struct.ctrl_req_t* %43, %struct.ctrl_req_t** %47, align 8
  %48 = load i32, i32* @ERR_OK, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %35, %21
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @_CPU_ISR_Restore(i32 %50)
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @__bte_send_pending_request(%struct.TYPE_2__*) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
