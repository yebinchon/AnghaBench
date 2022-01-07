; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6ctl_llstart.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6ctl_llstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in6_aliasreq = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i32)* @in6ctl_llstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6ctl_llstart(%struct.ifnet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.in6_aliasreq, align 4
  %8 = alloca %struct.in6_aliasreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.in6_aliasreq* null, %struct.in6_aliasreq** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = icmp ne %struct.ifnet* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @VERIFY(i32 %13)
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %56 [
    i32 129, label %16
    i32 128, label %16
  ]

16:                                               ; preds = %3, %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 128
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.in6_aliasreq* @in6_aliasreq_to_native(i32 %20, i32 %21, %struct.in6_aliasreq* %7)
  store %struct.in6_aliasreq* %22, %struct.in6_aliasreq** %8, align 8
  %23 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %8, align 8
  %24 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AF_INET6, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %16
  %30 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %8, align 8
  %31 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %8, align 8
  %37 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AF_INET6, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %35, %29
  %43 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %44 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %8, align 8
  %45 = call i32 @in6_ifattach_aliasreq(%struct.ifnet* %43, i32* null, %struct.in6_aliasreq* %44)
  store i32 %45, i32* %10, align 4
  br label %49

46:                                               ; preds = %35, %16
  %47 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %48 = call i32 @in6_ifattach_aliasreq(%struct.ifnet* %47, i32* null, %struct.in6_aliasreq* null)
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %54 = call i32 @in6_if_up_dad_start(%struct.ifnet* %53)
  br label %55

55:                                               ; preds = %52, %49
  br label %58

56:                                               ; preds = %3
  %57 = call i32 @VERIFY(i32 0)
  br label %58

58:                                               ; preds = %56, %55
  %59 = load i32, i32* %10, align 4
  ret i32 %59
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.in6_aliasreq* @in6_aliasreq_to_native(i32, i32, %struct.in6_aliasreq*) #1

declare dso_local i32 @in6_ifattach_aliasreq(%struct.ifnet*, i32*, %struct.in6_aliasreq*) #1

declare dso_local i32 @in6_if_up_dad_start(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
