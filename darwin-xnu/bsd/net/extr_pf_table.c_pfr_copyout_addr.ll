; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_copyout_addr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_copyout_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_addr = type { i64, i32, i32, i32, i32 }
%struct.pfr_kentry = type { i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfr_addr*, %struct.pfr_kentry*)* @pfr_copyout_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfr_copyout_addr(%struct.pfr_addr* %0, %struct.pfr_kentry* %1) #0 {
  %3 = alloca %struct.pfr_addr*, align 8
  %4 = alloca %struct.pfr_kentry*, align 8
  store %struct.pfr_addr* %0, %struct.pfr_addr** %3, align 8
  store %struct.pfr_kentry* %1, %struct.pfr_kentry** %4, align 8
  %5 = load %struct.pfr_addr*, %struct.pfr_addr** %3, align 8
  %6 = call i32 @bzero(%struct.pfr_addr* %5, i32 24)
  %7 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %8 = icmp eq %struct.pfr_kentry* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %54

10:                                               ; preds = %2
  %11 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %12 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.pfr_addr*, %struct.pfr_addr** %3, align 8
  %15 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %17 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pfr_addr*, %struct.pfr_addr** %3, align 8
  %20 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %22 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.pfr_addr*, %struct.pfr_addr** %3, align 8
  %25 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.pfr_addr*, %struct.pfr_addr** %3, align 8
  %27 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_INET, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %10
  %32 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %33 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pfr_addr*, %struct.pfr_addr** %3, align 8
  %38 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  br label %54

39:                                               ; preds = %10
  %40 = load %struct.pfr_addr*, %struct.pfr_addr** %3, align 8
  %41 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AF_INET6, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.pfr_kentry*, %struct.pfr_kentry** %4, align 8
  %47 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.pfr_addr*, %struct.pfr_addr** %3, align 8
  %52 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %45, %39
  br label %54

54:                                               ; preds = %9, %53, %31
  ret void
}

declare dso_local i32 @bzero(%struct.pfr_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
