; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_storelladdr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_storelladdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32 }
%struct.rtentry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.mbuf = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_dl = type { i64 }
%struct.TYPE_3__ = type { i32 }

@M_MCAST = common dso_local global i32 0, align 4
@AF_LINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"nd6_storelladdr: something odd happens\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"nd6_storelladdr: sdl_alen == 0\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd6_storelladdr(%struct.ifnet* %0, %struct.rtentry* %1, %struct.mbuf* %2, %struct.sockaddr* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.rtentry*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr_dl*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %7, align 8
  store %struct.rtentry* %1, %struct.rtentry** %8, align 8
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @M_MCAST, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %5
  %21 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %48 [
    i32 133, label %24
    i32 132, label %24
    i32 128, label %24
    i32 129, label %24
    i32 130, label %24
    i32 134, label %24
    i32 131, label %30
    i32 135, label %46
  ]

24:                                               ; preds = %20, %20, %20, %20, %20, %20
  %25 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %26 = call %struct.TYPE_3__* @SIN6(%struct.sockaddr* %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @ETHER_MAP_IPV6_MULTICAST(i32* %27, i32* %28)
  store i32 1, i32* %6, align 4
  br label %90

30:                                               ; preds = %20
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %42, %30
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 -1, i32* %41, align 4
  br label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %31

45:                                               ; preds = %31
  store i32 1, i32* %6, align 4
  br label %90

46:                                               ; preds = %20
  %47 = load i32*, i32** %11, align 8
  store i32 0, i32* %47, align 4
  store i32 1, i32* %6, align 4
  br label %90

48:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %90

49:                                               ; preds = %5
  %50 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %51 = icmp eq %struct.rtentry* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %90

53:                                               ; preds = %49
  %54 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %55 = call i32 @RT_LOCK(%struct.rtentry* %54)
  %56 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %57 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AF_LINK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %66 = call i32 @RT_UNLOCK(%struct.rtentry* %65)
  store i32 0, i32* %6, align 4
  br label %90

67:                                               ; preds = %53
  %68 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %69 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = call %struct.sockaddr_dl* @SDL(%struct.TYPE_4__* %70)
  store %struct.sockaddr_dl* %71, %struct.sockaddr_dl** %13, align 8
  %72 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %13, align 8
  %73 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %79 = call i32 @RT_UNLOCK(%struct.rtentry* %78)
  store i32 0, i32* %6, align 4
  br label %90

80:                                               ; preds = %67
  %81 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %13, align 8
  %82 = call i32 @LLADDR(%struct.sockaddr_dl* %81)
  %83 = load i32*, i32** %11, align 8
  %84 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %13, align 8
  %85 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @bcopy(i32 %82, i32* %83, i64 %86)
  %88 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %89 = call i32 @RT_UNLOCK(%struct.rtentry* %88)
  store i32 1, i32* %6, align 4
  br label %90

90:                                               ; preds = %80, %76, %63, %52, %48, %46, %45, %24
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @ETHER_MAP_IPV6_MULTICAST(i32*, i32*) #1

declare dso_local %struct.TYPE_3__* @SIN6(%struct.sockaddr*) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local %struct.sockaddr_dl* @SDL(%struct.TYPE_4__*) #1

declare dso_local i32 @bcopy(i32, i32*, i64) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
