; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkq_update_override.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkq_update_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqworkq = type { i32 }
%struct.knote = type { i64 }
%struct.kqrequest = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kqworkq*, %struct.knote*, i64)* @kqworkq_update_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kqworkq_update_override(%struct.kqworkq* %0, %struct.knote* %1, i64 %2) #0 {
  %4 = alloca %struct.kqworkq*, align 8
  %5 = alloca %struct.knote*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.kqrequest*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.kqworkq* %0, %struct.kqworkq** %4, align 8
  store %struct.knote* %1, %struct.knote** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.knote*, %struct.knote** %5, align 8
  %11 = getelementptr inbounds %struct.knote, %struct.knote* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %61

17:                                               ; preds = %3
  %18 = load %struct.kqworkq*, %struct.kqworkq** %4, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call %struct.kqrequest* @kqworkq_get_request(%struct.kqworkq* %18, i64 %19)
  store %struct.kqrequest* %20, %struct.kqrequest** %7, align 8
  %21 = load %struct.kqworkq*, %struct.kqworkq** %4, align 8
  %22 = call i32 @kq_req_lock(%struct.kqworkq* %21)
  %23 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %24 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %28 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @MAX(i32 %29, i64 %30)
  %32 = icmp sgt i64 %26, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %17
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %36 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %38 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %33
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %46 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @thread_update_ipc_override(i64 %47, i64 %48)
  br label %56

50:                                               ; preds = %41
  %51 = load %struct.kqrequest*, %struct.kqrequest** %7, align 8
  %52 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @thread_add_ipc_override(i64 %53, i64 %54)
  br label %56

56:                                               ; preds = %50, %44
  br label %57

57:                                               ; preds = %56, %33
  br label %58

58:                                               ; preds = %57, %17
  %59 = load %struct.kqworkq*, %struct.kqworkq** %4, align 8
  %60 = call i32 @kq_req_unlock(%struct.kqworkq* %59)
  br label %61

61:                                               ; preds = %58, %16
  ret void
}

declare dso_local %struct.kqrequest* @kqworkq_get_request(%struct.kqworkq*, i64) #1

declare dso_local i32 @kq_req_lock(%struct.kqworkq*) #1

declare dso_local i64 @MAX(i32, i64) #1

declare dso_local i32 @thread_update_ipc_override(i64, i64) #1

declare dso_local i32 @thread_add_ipc_override(i64, i64) #1

declare dso_local i32 @kq_req_unlock(%struct.kqworkq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
