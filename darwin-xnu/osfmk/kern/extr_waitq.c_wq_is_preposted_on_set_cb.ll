; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wq_is_preposted_on_set_cb.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wq_is_preposted_on_set_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq_set = type { i32 }
%struct.wq_prepost = type { i32 }
%struct.waitq = type { i32 }
%struct._is_posted_ctx = type { i32, %struct.waitq* }

@WQ_ITERATE_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.waitq_set*, i8*, %struct.wq_prepost*, %struct.waitq*)* @wq_is_preposted_on_set_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wq_is_preposted_on_set_cb(%struct.waitq_set* %0, i8* %1, %struct.wq_prepost* %2, %struct.waitq* %3) #0 {
  %5 = alloca %struct.waitq_set*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wq_prepost*, align 8
  %8 = alloca %struct.waitq*, align 8
  %9 = alloca %struct._is_posted_ctx*, align 8
  store %struct.waitq_set* %0, %struct.waitq_set** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.wq_prepost* %2, %struct.wq_prepost** %7, align 8
  store %struct.waitq* %3, %struct.waitq** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct._is_posted_ctx*
  store %struct._is_posted_ctx* %11, %struct._is_posted_ctx** %9, align 8
  %12 = load %struct.waitq_set*, %struct.waitq_set** %5, align 8
  %13 = load %struct.wq_prepost*, %struct.wq_prepost** %7, align 8
  %14 = load %struct._is_posted_ctx*, %struct._is_posted_ctx** %9, align 8
  %15 = getelementptr inbounds %struct._is_posted_ctx, %struct._is_posted_ctx* %14, i32 0, i32 1
  %16 = load %struct.waitq*, %struct.waitq** %15, align 8
  %17 = load %struct.waitq*, %struct.waitq** %8, align 8
  %18 = icmp eq %struct.waitq* %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct._is_posted_ctx*, %struct._is_posted_ctx** %9, align 8
  %21 = getelementptr inbounds %struct._is_posted_ctx, %struct._is_posted_ctx* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %22

22:                                               ; preds = %19, %4
  %23 = load i32, i32* @WQ_ITERATE_CONTINUE, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
