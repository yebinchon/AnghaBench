; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_in6_init_address_ltimes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_in6_init_address_ltimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_prefix = type { i32 }
%struct.in6_addrlifetime = type { i64, i64, i8*, i8* }

@ND6_INFINITE_LIFETIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nd_prefix*, %struct.in6_addrlifetime*)* @in6_init_address_ltimes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in6_init_address_ltimes(%struct.nd_prefix* %0, %struct.in6_addrlifetime* %1) #0 {
  %3 = alloca %struct.nd_prefix*, align 8
  %4 = alloca %struct.in6_addrlifetime*, align 8
  %5 = alloca i8*, align 8
  store %struct.nd_prefix* %0, %struct.nd_prefix** %3, align 8
  store %struct.in6_addrlifetime* %1, %struct.in6_addrlifetime** %4, align 8
  %6 = call i8* (...) @net_uptime()
  store i8* %6, i8** %5, align 8
  %7 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %8 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %14 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %13, i32 0, i32 3
  store i8* null, i8** %14, align 8
  br label %26

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %18 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %20 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %23 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr i8, i8* %24, i64 %21
  store i8* %25, i8** %23, align 8
  br label %26

26:                                               ; preds = %15, %12
  %27 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %28 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %34 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %33, i32 0, i32 2
  store i8* null, i8** %34, align 8
  br label %46

35:                                               ; preds = %26
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %38 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %40 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %4, align 8
  %43 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr i8, i8* %44, i64 %41
  store i8* %45, i8** %43, align 8
  br label %46

46:                                               ; preds = %35, %32
  ret void
}

declare dso_local i8* @net_uptime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
