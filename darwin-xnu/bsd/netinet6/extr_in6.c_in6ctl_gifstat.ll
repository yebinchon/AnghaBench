; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6ctl_gifstat.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6ctl_gifstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in6_ifreq = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, %struct.in6_ifreq*)* @in6ctl_gifstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6ctl_gifstat(%struct.ifnet* %0, i32 %1, %struct.in6_ifreq* %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.in6_ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.in6_ifreq* %2, %struct.in6_ifreq** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %10 = icmp ne %struct.ifnet* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @VERIFY(i32 %11)
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %53 [
    i32 128, label %17
    i32 129, label %35
  ]

17:                                               ; preds = %3
  %18 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %19 = call %struct.TYPE_4__* @IN6_IFEXTRA(%struct.ifnet* %18)
  %20 = icmp eq %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.in6_ifreq*, %struct.in6_ifreq** %6, align 8
  %23 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = call i32 @bzero(i32* %24, i32 4)
  br label %34

26:                                               ; preds = %17
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = call %struct.TYPE_4__* @IN6_IFEXTRA(%struct.ifnet* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.in6_ifreq*, %struct.in6_ifreq** %6, align 8
  %31 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = call i32 @bcopy(i32* %29, i32* %32, i32 4)
  br label %34

34:                                               ; preds = %26, %21
  br label %55

35:                                               ; preds = %3
  %36 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %37 = call %struct.TYPE_4__* @IN6_IFEXTRA(%struct.ifnet* %36)
  %38 = icmp eq %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.in6_ifreq*, %struct.in6_ifreq** %6, align 8
  %41 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @bzero(i32* %42, i32 4)
  br label %52

44:                                               ; preds = %35
  %45 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %46 = call %struct.TYPE_4__* @IN6_IFEXTRA(%struct.ifnet* %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.in6_ifreq*, %struct.in6_ifreq** %6, align 8
  %49 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @bcopy(i32* %47, i32* %50, i32 4)
  br label %52

52:                                               ; preds = %44, %39
  br label %55

53:                                               ; preds = %3
  %54 = call i32 @VERIFY(i32 0)
  br label %55

55:                                               ; preds = %53, %52, %34
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.TYPE_4__* @IN6_IFEXTRA(%struct.ifnet*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
