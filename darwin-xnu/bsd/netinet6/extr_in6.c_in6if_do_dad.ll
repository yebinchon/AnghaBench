; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6if_do_dad.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6if_do_dad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i64, i32 }
%struct.nd_ifinfo = type { i64, i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@ND6_IFF_DAD = common dso_local global i32 0, align 4
@IFEF_IPV6_ND6ALT = common dso_local global i32 0, align 4
@IFEF_LOCALNET_PRIVATE = common dso_local global i32 0, align 4
@IFEF_DIRECTLINK = common dso_local global i32 0, align 4
@IFNET_SUBFAMILY_IPSEC = common dso_local global i64 0, align 8
@IFNET_SUBFAMILY_UTUN = common dso_local global i64 0, align 8
@IFF_UP = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6if_do_dad(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.nd_ifinfo*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.nd_ifinfo* null, %struct.nd_ifinfo** %4, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %6 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @IFF_LOOPBACK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %78

12:                                               ; preds = %1
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = call %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet* %13)
  store %struct.nd_ifinfo* %14, %struct.nd_ifinfo** %4, align 8
  %15 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %4, align 8
  %16 = icmp ne %struct.nd_ifinfo* null, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i64, i64* @TRUE, align 8
  %19 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %4, align 8
  %20 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br label %23

23:                                               ; preds = %17, %12
  %24 = phi i1 [ false, %12 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @VERIFY(i32 %25)
  %27 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %4, align 8
  %28 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ND6_IFF_DAD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %78

34:                                               ; preds = %23
  %35 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFEF_IPV6_ND6ALT, align 4
  %39 = load i32, i32* @IFEF_LOCALNET_PRIVATE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @IFEF_DIRECTLINK, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %37, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %78

46:                                               ; preds = %34
  %47 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IFNET_SUBFAMILY_IPSEC, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IFNET_SUBFAMILY_UTUN, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52, %46
  store i32 0, i32* %2, align 4
  br label %78

59:                                               ; preds = %52
  %60 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %64 [
    i32 129, label %63
    i32 128, label %63
  ]

63:                                               ; preds = %59, %59
  store i32 0, i32* %2, align 4
  br label %78

64:                                               ; preds = %59
  %65 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IFF_UP, align 4
  %69 = load i32, i32* @IFF_RUNNING, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = load i32, i32* @IFF_UP, align 4
  %73 = load i32, i32* @IFF_RUNNING, align 4
  %74 = or i32 %72, %73
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %78

77:                                               ; preds = %64
  store i32 1, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %76, %63, %58, %45, %33, %11
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet*) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
