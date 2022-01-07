; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifioctl_throttle.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifioctl_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.proc = type { i32 }
%struct.if_throttlereq = type { i32 }

@EALREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64, %struct.proc*)* @ifioctl_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifioctl_throttle(%struct.ifnet* %0, i32 %1, i64 %2, %struct.proc* %3) #0 {
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.if_throttlereq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.proc* %3, %struct.proc** %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.if_throttlereq*
  store %struct.if_throttlereq* %14, %struct.if_throttlereq** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %16 = icmp ne %struct.ifnet* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @VERIFY(i32 %17)
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %46 [
    i32 128, label %20
    i32 129, label %37
  ]

20:                                               ; preds = %4
  %21 = load %struct.proc*, %struct.proc** %8, align 8
  %22 = call i32 @proc_suser(%struct.proc* %21)
  store i32 %22, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %48

25:                                               ; preds = %20
  %26 = load %struct.if_throttlereq*, %struct.if_throttlereq** %9, align 8
  %27 = getelementptr inbounds %struct.if_throttlereq, %struct.if_throttlereq* %26, i32 0, i32 0
  %28 = call i32 @bcopy(i32* %27, i32* %10, i32 4)
  %29 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @ifnet_set_throttle(%struct.ifnet* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @EALREADY, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %35, %25
  br label %48

37:                                               ; preds = %4
  %38 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %39 = call i32 @ifnet_get_throttle(%struct.ifnet* %38, i32* %10)
  store i32 %39, i32* %11, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.if_throttlereq*, %struct.if_throttlereq** %9, align 8
  %43 = getelementptr inbounds %struct.if_throttlereq, %struct.if_throttlereq* %42, i32 0, i32 0
  %44 = call i32 @bcopy(i32* %10, i32* %43, i32 4)
  br label %45

45:                                               ; preds = %41, %37
  br label %48

46:                                               ; preds = %4
  %47 = call i32 @VERIFY(i32 0)
  br label %48

48:                                               ; preds = %46, %45, %36, %24
  %49 = load i32, i32* %11, align 4
  ret i32 %49
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @proc_suser(%struct.proc*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @ifnet_set_throttle(%struct.ifnet*, i32) #1

declare dso_local i32 @ifnet_get_throttle(%struct.ifnet*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
