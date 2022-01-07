; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_nbr.c_nd6_dad_detach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_nbr.c_nd6_dad_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dadq = type { i32, %struct.TYPE_2__, %struct.ifaddr* }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.ifaddr = type { i32 }

@dad6_mutex = common dso_local global i32 0, align 4
@dadq = common dso_local global i32 0, align 4
@dad_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dadq*, %struct.ifaddr*)* @nd6_dad_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd6_dad_detach(%struct.dadq* %0, %struct.ifaddr* %1) #0 {
  %3 = alloca %struct.dadq*, align 8
  %4 = alloca %struct.ifaddr*, align 8
  %5 = alloca i32, align 4
  store %struct.dadq* %0, %struct.dadq** %3, align 8
  store %struct.ifaddr* %1, %struct.ifaddr** %4, align 8
  %6 = load i32, i32* @dad6_mutex, align 4
  %7 = call i32 @lck_mtx_lock(i32 %6)
  %8 = load %struct.dadq*, %struct.dadq** %3, align 8
  %9 = call i32 @DAD_LOCK(%struct.dadq* %8)
  %10 = load %struct.dadq*, %struct.dadq** %3, align 8
  %11 = getelementptr inbounds %struct.dadq, %struct.dadq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load %struct.dadq*, %struct.dadq** %3, align 8
  %16 = getelementptr inbounds %struct.dadq, %struct.dadq* %15, i32 0, i32 2
  %17 = load %struct.ifaddr*, %struct.ifaddr** %16, align 8
  %18 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %19 = icmp eq %struct.ifaddr* %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @VERIFY(i32 %20)
  %22 = load %struct.dadq*, %struct.dadq** %3, align 8
  %23 = load i32, i32* @dad_list, align 4
  %24 = call i32 @TAILQ_REMOVE(i32* @dadq, %struct.dadq* %22, i32 %23)
  %25 = load %struct.dadq*, %struct.dadq** %3, align 8
  %26 = getelementptr inbounds %struct.dadq, %struct.dadq* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.dadq*, %struct.dadq** %3, align 8
  %29 = getelementptr inbounds %struct.dadq, %struct.dadq* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load %struct.dadq*, %struct.dadq** %3, align 8
  %32 = getelementptr inbounds %struct.dadq, %struct.dadq* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %14, %2
  %34 = load %struct.dadq*, %struct.dadq** %3, align 8
  %35 = call i32 @DAD_UNLOCK(%struct.dadq* %34)
  %36 = load i32, i32* @dad6_mutex, align 4
  %37 = call i32 @lck_mtx_unlock(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.dadq*, %struct.dadq** %3, align 8
  %42 = call i32 @DAD_REMREF(%struct.dadq* %41)
  br label %43

43:                                               ; preds = %40, %33
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @DAD_LOCK(%struct.dadq*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.dadq*, i32) #1

declare dso_local i32 @DAD_UNLOCK(%struct.dadq*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @DAD_REMREF(%struct.dadq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
