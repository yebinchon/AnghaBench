; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifioctl_qstats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifioctl_qstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.if_qstatsreq = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @ifioctl_qstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifioctl_qstats(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.if_qstatsreq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.if_qstatsreq*
  store %struct.if_qstatsreq* %13, %struct.if_qstatsreq** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %15 = icmp ne %struct.ifnet* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @VERIFY(i32 %16)
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %40 [
    i32 128, label %19
  ]

19:                                               ; preds = %3
  %20 = load %struct.if_qstatsreq*, %struct.if_qstatsreq** %7, align 8
  %21 = getelementptr inbounds %struct.if_qstatsreq, %struct.if_qstatsreq* %20, i32 0, i32 2
  %22 = call i32 @bcopy(i32* %21, i32* %9, i32 4)
  %23 = load %struct.if_qstatsreq*, %struct.if_qstatsreq** %7, align 8
  %24 = getelementptr inbounds %struct.if_qstatsreq, %struct.if_qstatsreq* %23, i32 0, i32 0
  %25 = call i32 @bcopy(i32* %24, i32* %8, i32 4)
  %26 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 0
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.if_qstatsreq*, %struct.if_qstatsreq** %7, align 8
  %30 = getelementptr inbounds %struct.if_qstatsreq, %struct.if_qstatsreq* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ifclassq_getqstats(i32* %27, i32 %28, i32 %31, i32* %8)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %35, %19
  %37 = load %struct.if_qstatsreq*, %struct.if_qstatsreq** %7, align 8
  %38 = getelementptr inbounds %struct.if_qstatsreq, %struct.if_qstatsreq* %37, i32 0, i32 0
  %39 = call i32 @bcopy(i32* %8, i32* %38, i32 4)
  br label %42

40:                                               ; preds = %3
  %41 = call i32 @VERIFY(i32 0)
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* %10, align 4
  ret i32 %43
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @ifclassq_getqstats(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
