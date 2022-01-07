; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_unlink_all_cb.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_unlink_all_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i64 }
%struct.waitq_link = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.waitq_set* }
%struct.waitq_set = type { i32, i32 }
%struct.wq_unlink_ctx = type { %struct.waitq_set*, %struct.waitq* }

@WQL_LINK = common dso_local global i64 0, align 8
@WQL_WQS = common dso_local global i64 0, align 8
@waitq_unlink_prepost_cb = common dso_local global i32 0, align 4
@WQ_ITERATE_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.waitq*, i8*, %struct.waitq_link*)* @waitq_unlink_all_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waitq_unlink_all_cb(%struct.waitq* %0, i8* %1, %struct.waitq_link* %2) #0 {
  %4 = alloca %struct.waitq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.waitq_link*, align 8
  %7 = alloca %struct.waitq_set*, align 8
  %8 = alloca %struct.wq_unlink_ctx, align 8
  store %struct.waitq* %0, %struct.waitq** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.waitq_link* %2, %struct.waitq_link** %6, align 8
  %9 = load %struct.waitq*, %struct.waitq** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.waitq_link*, %struct.waitq_link** %6, align 8
  %12 = call i64 @wql_type(%struct.waitq_link* %11)
  %13 = load i64, i64* @WQL_LINK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.waitq_link*, %struct.waitq_link** %6, align 8
  %17 = call i64 @wql_is_valid(%struct.waitq_link* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.waitq_link*, %struct.waitq_link** %6, align 8
  %21 = call i32 @wql_invalidate(%struct.waitq_link* %20)
  br label %22

22:                                               ; preds = %19, %15, %3
  %23 = load %struct.waitq_link*, %struct.waitq_link** %6, align 8
  %24 = call i64 @wql_type(%struct.waitq_link* %23)
  %25 = load i64, i64* @WQL_WQS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %73

27:                                               ; preds = %22
  %28 = load %struct.waitq*, %struct.waitq** %4, align 8
  %29 = getelementptr inbounds %struct.waitq, %struct.waitq* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %74

33:                                               ; preds = %27
  %34 = load %struct.waitq_link*, %struct.waitq_link** %6, align 8
  %35 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.waitq_set*, %struct.waitq_set** %36, align 8
  store %struct.waitq_set* %37, %struct.waitq_set** %7, align 8
  %38 = load %struct.waitq_set*, %struct.waitq_set** %7, align 8
  %39 = icmp ne %struct.waitq_set* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.waitq_set*, %struct.waitq_set** %7, align 8
  %43 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %42, i32 0, i32 1
  %44 = call i32 @waitq_irq_safe(i32* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.waitq_set*, %struct.waitq_set** %7, align 8
  %50 = call i32 @waitq_set_lock(%struct.waitq_set* %49)
  %51 = load %struct.waitq_set*, %struct.waitq_set** %7, align 8
  %52 = call i32 @waitq_set_is_valid(%struct.waitq_set* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %33
  br label %70

55:                                               ; preds = %33
  %56 = load %struct.waitq_set*, %struct.waitq_set** %7, align 8
  %57 = call i32 @waitq_set_maybe_preposted(%struct.waitq_set* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  br label %70

60:                                               ; preds = %55
  %61 = load %struct.waitq*, %struct.waitq** %4, align 8
  %62 = getelementptr inbounds %struct.wq_unlink_ctx, %struct.wq_unlink_ctx* %8, i32 0, i32 1
  store %struct.waitq* %61, %struct.waitq** %62, align 8
  %63 = load %struct.waitq_set*, %struct.waitq_set** %7, align 8
  %64 = getelementptr inbounds %struct.wq_unlink_ctx, %struct.wq_unlink_ctx* %8, i32 0, i32 0
  store %struct.waitq_set* %63, %struct.waitq_set** %64, align 8
  %65 = load %struct.waitq_set*, %struct.waitq_set** %7, align 8
  %66 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @waitq_unlink_prepost_cb, align 4
  %69 = call i32 @wq_prepost_iterate(i32 %67, %struct.wq_unlink_ctx* %8, i32 %68)
  br label %70

70:                                               ; preds = %60, %59, %54
  %71 = load %struct.waitq_set*, %struct.waitq_set** %7, align 8
  %72 = call i32 @waitq_set_unlock(%struct.waitq_set* %71)
  br label %73

73:                                               ; preds = %70, %22
  br label %74

74:                                               ; preds = %73, %32
  %75 = load i32, i32* @WQ_ITERATE_CONTINUE, align 4
  ret i32 %75
}

declare dso_local i64 @wql_type(%struct.waitq_link*) #1

declare dso_local i64 @wql_is_valid(%struct.waitq_link*) #1

declare dso_local i32 @wql_invalidate(%struct.waitq_link*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_irq_safe(i32*) #1

declare dso_local i32 @waitq_set_lock(%struct.waitq_set*) #1

declare dso_local i32 @waitq_set_is_valid(%struct.waitq_set*) #1

declare dso_local i32 @waitq_set_maybe_preposted(%struct.waitq_set*) #1

declare dso_local i32 @wq_prepost_iterate(i32, %struct.wq_unlink_ctx*, i32) #1

declare dso_local i32 @waitq_set_unlock(%struct.waitq_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
