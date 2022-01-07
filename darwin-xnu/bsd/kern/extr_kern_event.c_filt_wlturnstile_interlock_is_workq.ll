; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_wlturnstile_interlock_is_workq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_wlturnstile_interlock_is_workq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqworkloop = type { %struct.kqrequest }
%struct.kqrequest = type { i32, i64 }

@KQR_THREQUESTED = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kqworkloop*)* @filt_wlturnstile_interlock_is_workq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_wlturnstile_interlock_is_workq(%struct.kqworkloop* %0) #0 {
  %2 = alloca %struct.kqworkloop*, align 8
  %3 = alloca %struct.kqrequest*, align 8
  store %struct.kqworkloop* %0, %struct.kqworkloop** %2, align 8
  %4 = load %struct.kqworkloop*, %struct.kqworkloop** %2, align 8
  %5 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %4, i32 0, i32 0
  store %struct.kqrequest* %5, %struct.kqrequest** %3, align 8
  %6 = load %struct.kqrequest*, %struct.kqrequest** %3, align 8
  %7 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @KQR_THREQUESTED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.kqrequest*, %struct.kqrequest** %3, align 8
  %14 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @THREAD_NULL, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %12, %1
  %19 = phi i1 [ false, %1 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
