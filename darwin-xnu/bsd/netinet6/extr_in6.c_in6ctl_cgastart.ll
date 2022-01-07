; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6ctl_cgastart.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6ctl_cgastart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in6_cgareq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i32)* @in6ctl_cgastart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6ctl_cgastart(%struct.ifnet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.in6_cgareq, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = icmp ne %struct.ifnet* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @VERIFY(i32 %12)
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %30 [
    i32 129, label %15
    i32 128, label %15
  ]

15:                                               ; preds = %3, %3
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 128
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @in6_cgareq_to_native(i32 %19, i32 %20, %struct.in6_cgareq* %7)
  %22 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %23 = call i32 @in6_ifattach_llcgareq(%struct.ifnet* %22, %struct.in6_cgareq* %7)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = call i32 @in6_if_up_dad_start(%struct.ifnet* %27)
  br label %29

29:                                               ; preds = %26, %15
  br label %32

30:                                               ; preds = %3
  %31 = call i32 @VERIFY(i32 0)
  br label %32

32:                                               ; preds = %30, %29
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @in6_cgareq_to_native(i32, i32, %struct.in6_cgareq*) #1

declare dso_local i32 @in6_ifattach_llcgareq(%struct.ifnet*, %struct.in6_cgareq*) #1

declare dso_local i32 @in6_if_up_dad_start(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
