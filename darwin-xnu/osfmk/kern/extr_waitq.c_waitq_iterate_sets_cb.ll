; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_iterate_sets_cb.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_iterate_sets_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }
%struct.waitq_link = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.waitq_set* }
%struct.waitq_set = type { %struct.waitq }
%struct.wq_it_ctx = type { i32 (i32, %struct.waitq.0*, %struct.waitq_set.1*)*, i64, i32 }
%struct.waitq.0 = type opaque
%struct.waitq_set.1 = type opaque

@WQL_WQS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.waitq*, i8*, %struct.waitq_link*)* @waitq_iterate_sets_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waitq_iterate_sets_cb(%struct.waitq* %0, i8* %1, %struct.waitq_link* %2) #0 {
  %4 = alloca %struct.waitq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.waitq_link*, align 8
  %7 = alloca %struct.wq_it_ctx*, align 8
  %8 = alloca %struct.waitq_set*, align 8
  %9 = alloca i32, align 4
  store %struct.waitq* %0, %struct.waitq** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.waitq_link* %2, %struct.waitq_link** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.wq_it_ctx*
  store %struct.wq_it_ctx* %11, %struct.wq_it_ctx** %7, align 8
  %12 = load %struct.waitq*, %struct.waitq** %4, align 8
  %13 = load %struct.waitq*, %struct.waitq** %4, align 8
  %14 = call i32 @waitq_irq_safe(%struct.waitq* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.waitq_link*, %struct.waitq_link** %6, align 8
  %20 = call i64 @wql_type(%struct.waitq_link* %19)
  %21 = load i64, i64* @WQL_WQS, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.waitq_link*, %struct.waitq_link** %6, align 8
  %26 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.waitq_set*, %struct.waitq_set** %27, align 8
  store %struct.waitq_set* %28, %struct.waitq_set** %8, align 8
  %29 = load %struct.waitq_set*, %struct.waitq_set** %8, align 8
  %30 = icmp ne %struct.waitq_set* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.waitq_set*, %struct.waitq_set** %8, align 8
  %34 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %33, i32 0, i32 0
  %35 = call i32 @waitq_irq_safe(%struct.waitq* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.waitq_set*, %struct.waitq_set** %8, align 8
  %41 = call i32 @waitq_set_lock(%struct.waitq_set* %40)
  %42 = load %struct.wq_it_ctx*, %struct.wq_it_ctx** %7, align 8
  %43 = getelementptr inbounds %struct.wq_it_ctx, %struct.wq_it_ctx* %42, i32 0, i32 0
  %44 = load i32 (i32, %struct.waitq.0*, %struct.waitq_set.1*)*, i32 (i32, %struct.waitq.0*, %struct.waitq_set.1*)** %43, align 8
  %45 = load %struct.wq_it_ctx*, %struct.wq_it_ctx** %7, align 8
  %46 = getelementptr inbounds %struct.wq_it_ctx, %struct.wq_it_ctx* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.wq_it_ctx*, %struct.wq_it_ctx** %7, align 8
  %49 = getelementptr inbounds %struct.wq_it_ctx, %struct.wq_it_ctx* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.waitq*
  %52 = bitcast %struct.waitq* %51 to %struct.waitq.0*
  %53 = load %struct.waitq_set*, %struct.waitq_set** %8, align 8
  %54 = bitcast %struct.waitq_set* %53 to %struct.waitq_set.1*
  %55 = call i32 %44(i32 %47, %struct.waitq.0* %52, %struct.waitq_set.1* %54)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.waitq_set*, %struct.waitq_set** %8, align 8
  %57 = call i32 @waitq_set_unlock(%struct.waitq_set* %56)
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local i64 @wql_type(%struct.waitq_link*) #1

declare dso_local i32 @waitq_set_lock(%struct.waitq_set*) #1

declare dso_local i32 @waitq_set_unlock(%struct.waitq_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
