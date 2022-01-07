; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifioctl_netsignature.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifioctl_netsignature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.if_nsreq = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @ifioctl_netsignature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifioctl_netsignature(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.if_nsreq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.if_nsreq*
  store %struct.if_nsreq* %12, %struct.if_nsreq** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = icmp ne %struct.ifnet* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @VERIFY(i32 %15)
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %65 [
    i32 128, label %18
    i32 129, label %42
  ]

18:                                               ; preds = %3
  %19 = load %struct.if_nsreq*, %struct.if_nsreq** %7, align 8
  %20 = getelementptr inbounds %struct.if_nsreq, %struct.if_nsreq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ugt i64 %22, 4
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %9, align 4
  br label %67

26:                                               ; preds = %18
  %27 = load %struct.if_nsreq*, %struct.if_nsreq** %7, align 8
  %28 = getelementptr inbounds %struct.if_nsreq, %struct.if_nsreq* %27, i32 0, i32 1
  %29 = call i32 @bcopy(i32* %28, i32* %8, i32 4)
  %30 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %31 = load %struct.if_nsreq*, %struct.if_nsreq** %7, align 8
  %32 = getelementptr inbounds %struct.if_nsreq, %struct.if_nsreq* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.if_nsreq*, %struct.if_nsreq** %7, align 8
  %35 = getelementptr inbounds %struct.if_nsreq, %struct.if_nsreq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.if_nsreq*, %struct.if_nsreq** %7, align 8
  %39 = getelementptr inbounds %struct.if_nsreq, %struct.if_nsreq* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ifnet_set_netsignature(%struct.ifnet* %30, i32 %33, i32 %36, i32 %37, i32 %40)
  store i32 %41, i32* %9, align 4
  br label %67

42:                                               ; preds = %3
  %43 = load %struct.if_nsreq*, %struct.if_nsreq** %7, align 8
  %44 = getelementptr inbounds %struct.if_nsreq, %struct.if_nsreq* %43, i32 0, i32 0
  store i32 4, i32* %44, align 4
  %45 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %46 = load %struct.if_nsreq*, %struct.if_nsreq** %7, align 8
  %47 = getelementptr inbounds %struct.if_nsreq, %struct.if_nsreq* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.if_nsreq*, %struct.if_nsreq** %7, align 8
  %50 = getelementptr inbounds %struct.if_nsreq, %struct.if_nsreq* %49, i32 0, i32 0
  %51 = load %struct.if_nsreq*, %struct.if_nsreq** %7, align 8
  %52 = getelementptr inbounds %struct.if_nsreq, %struct.if_nsreq* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ifnet_get_netsignature(%struct.ifnet* %45, i32 %48, i32* %50, i32* %8, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %42
  %58 = load %struct.if_nsreq*, %struct.if_nsreq** %7, align 8
  %59 = getelementptr inbounds %struct.if_nsreq, %struct.if_nsreq* %58, i32 0, i32 1
  %60 = call i32 @bcopy(i32* %8, i32* %59, i32 4)
  br label %64

61:                                               ; preds = %42
  %62 = load %struct.if_nsreq*, %struct.if_nsreq** %7, align 8
  %63 = getelementptr inbounds %struct.if_nsreq, %struct.if_nsreq* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %57
  br label %67

65:                                               ; preds = %3
  %66 = call i32 @VERIFY(i32 0)
  br label %67

67:                                               ; preds = %65, %64, %26, %24
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @ifnet_set_netsignature(%struct.ifnet*, i32, i32, i32, i32) #1

declare dso_local i32 @ifnet_get_netsignature(%struct.ifnet*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
