; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_src.c_in6_selecthlim.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_src.c_in6_selecthlim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6pcb = type { i64 }
%struct.ifnet = type { i32 }
%struct.nd_ifinfo = type { i32, i64 }

@ip6_defhlim = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_selecthlim(%struct.in6pcb* %0, %struct.ifnet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.in6pcb*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nd_ifinfo*, align 8
  store %struct.in6pcb* %0, %struct.in6pcb** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  %8 = load %struct.in6pcb*, %struct.in6pcb** %4, align 8
  %9 = icmp ne %struct.in6pcb* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.in6pcb*, %struct.in6pcb** %4, align 8
  %12 = getelementptr inbounds %struct.in6pcb, %struct.in6pcb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.in6pcb*, %struct.in6pcb** %4, align 8
  %17 = getelementptr inbounds %struct.in6pcb, %struct.in6pcb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %44

20:                                               ; preds = %10, %2
  %21 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %22 = icmp ne %struct.ifnet* null, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %25 = call %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet* %24)
  store %struct.nd_ifinfo* %25, %struct.nd_ifinfo** %7, align 8
  %26 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %7, align 8
  %27 = icmp ne %struct.nd_ifinfo* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %7, align 8
  %30 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %7, align 8
  %35 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %6, align 4
  br label %39

37:                                               ; preds = %28, %23
  %38 = load i32, i32* @ip6_defhlim, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %44

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* @ip6_defhlim, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %39, %15
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
