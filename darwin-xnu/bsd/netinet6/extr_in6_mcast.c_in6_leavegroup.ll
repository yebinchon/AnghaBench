; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_in6_leavegroup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_in6_leavegroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_multi_mship = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_leavegroup(%struct.in6_multi_mship* %0) #0 {
  %2 = alloca %struct.in6_multi_mship*, align 8
  store %struct.in6_multi_mship* %0, %struct.in6_multi_mship** %2, align 8
  %3 = load %struct.in6_multi_mship*, %struct.in6_multi_mship** %2, align 8
  %4 = getelementptr inbounds %struct.in6_multi_mship, %struct.in6_multi_mship* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.in6_multi_mship*, %struct.in6_multi_mship** %2, align 8
  %9 = getelementptr inbounds %struct.in6_multi_mship, %struct.in6_multi_mship* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @in6_mc_leave(i32* %10, i32* null)
  %12 = load %struct.in6_multi_mship*, %struct.in6_multi_mship** %2, align 8
  %13 = getelementptr inbounds %struct.in6_multi_mship, %struct.in6_multi_mship* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @IN6M_REMREF(i32* %14)
  %16 = load %struct.in6_multi_mship*, %struct.in6_multi_mship** %2, align 8
  %17 = getelementptr inbounds %struct.in6_multi_mship, %struct.in6_multi_mship* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %7, %1
  %19 = load %struct.in6_multi_mship*, %struct.in6_multi_mship** %2, align 8
  %20 = call i32 @in6_multi_mship_free(%struct.in6_multi_mship* %19)
  ret i32 0
}

declare dso_local i32 @in6_mc_leave(i32*, i32*) #1

declare dso_local i32 @IN6M_REMREF(i32*) #1

declare dso_local i32 @in6_multi_mship_free(%struct.in6_multi_mship*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
