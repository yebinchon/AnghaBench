; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wq_is_preposted_on_set.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wq_is_preposted_on_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i64 }
%struct.waitq_set = type { i64 }
%struct._is_posted_ctx = type { i32, %struct.waitq* }

@wq_is_preposted_on_set_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.waitq*, %struct.waitq_set*)* @wq_is_preposted_on_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wq_is_preposted_on_set(%struct.waitq* %0, %struct.waitq_set* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.waitq*, align 8
  %5 = alloca %struct.waitq_set*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._is_posted_ctx, align 8
  store %struct.waitq* %0, %struct.waitq** %4, align 8
  store %struct.waitq_set* %1, %struct.waitq_set** %5, align 8
  %8 = load %struct.waitq*, %struct.waitq** %4, align 8
  %9 = getelementptr inbounds %struct.waitq, %struct.waitq* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.waitq_set*, %struct.waitq_set** %5, align 8
  %14 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.waitq*, %struct.waitq** %4, align 8
  %17 = getelementptr inbounds %struct.waitq, %struct.waitq* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %31

21:                                               ; preds = %12, %2
  %22 = load %struct.waitq*, %struct.waitq** %4, align 8
  %23 = getelementptr inbounds %struct._is_posted_ctx, %struct._is_posted_ctx* %7, i32 0, i32 1
  store %struct.waitq* %22, %struct.waitq** %23, align 8
  %24 = getelementptr inbounds %struct._is_posted_ctx, %struct._is_posted_ctx* %7, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.waitq_set*, %struct.waitq_set** %5, align 8
  %26 = bitcast %struct._is_posted_ctx* %7 to i8*
  %27 = load i32, i32* @wq_is_preposted_on_set_cb, align 4
  %28 = call i32 @wq_prepost_foreach_locked(%struct.waitq_set* %25, i8* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = getelementptr inbounds %struct._is_posted_ctx, %struct._is_posted_ctx* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %21, %20
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @wq_prepost_foreach_locked(%struct.waitq_set*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
