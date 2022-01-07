; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifa_ifwithdstaddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifa_ifwithdstaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.ifnet* }
%struct.ifnet = type { i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.ifaddr* }
%struct.ifaddr = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.ifaddr* }
%struct.TYPE_6__ = type { %struct.ifnet* }
%struct.sockaddr = type { i64 }

@ifnet_head = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@IFF_POINTOPOINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ifaddr* @ifa_ifwithdstaddr(%struct.sockaddr* %0) #0 {
  %2 = alloca %struct.sockaddr*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifaddr*, align 8
  %5 = alloca %struct.ifaddr*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %2, align 8
  store %struct.ifaddr* null, %struct.ifaddr** %5, align 8
  %6 = call i32 (...) @ifnet_head_lock_shared()
  %7 = load %struct.ifnet*, %struct.ifnet** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ifnet_head, i32 0, i32 0), align 8
  store %struct.ifnet* %7, %struct.ifnet** %3, align 8
  br label %8

8:                                                ; preds = %74, %1
  %9 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %10 = icmp ne %struct.ifnet* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %13 = icmp ne %struct.ifaddr* %12, null
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i1 [ false, %8 ], [ %14, %11 ]
  br i1 %16, label %17, label %79

17:                                               ; preds = %15
  %18 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IFF_POINTOPOINT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %73

24:                                               ; preds = %17
  %25 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %26 = call i32 @ifnet_lock_shared(%struct.ifnet* %25)
  %27 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.ifaddr*, %struct.ifaddr** %29, align 8
  store %struct.ifaddr* %30, %struct.ifaddr** %4, align 8
  br label %31

31:                                               ; preds = %65, %24
  %32 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %33 = icmp ne %struct.ifaddr* %32, null
  br i1 %33, label %34, label %70

34:                                               ; preds = %31
  %35 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %36 = call i32 @IFA_LOCK_SPIN(%struct.ifaddr* %35)
  %37 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %38 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %43 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %48 = call i32 @IFA_UNLOCK(%struct.ifaddr* %47)
  br label %65

49:                                               ; preds = %34
  %50 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %51 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %52 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @ifa_equal(%struct.sockaddr* %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  store %struct.ifaddr* %57, %struct.ifaddr** %5, align 8
  %58 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %59 = call i32 @IFA_ADDREF_LOCKED(%struct.ifaddr* %58)
  %60 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %61 = call i32 @IFA_UNLOCK(%struct.ifaddr* %60)
  br label %70

62:                                               ; preds = %49
  %63 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %64 = call i32 @IFA_UNLOCK(%struct.ifaddr* %63)
  br label %65

65:                                               ; preds = %62, %46
  %66 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %67 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.ifaddr*, %struct.ifaddr** %68, align 8
  store %struct.ifaddr* %69, %struct.ifaddr** %4, align 8
  br label %31

70:                                               ; preds = %56, %31
  %71 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %72 = call i32 @ifnet_lock_done(%struct.ifnet* %71)
  br label %73

73:                                               ; preds = %70, %17
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %76 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.ifnet*, %struct.ifnet** %77, align 8
  store %struct.ifnet* %78, %struct.ifnet** %3, align 8
  br label %8

79:                                               ; preds = %15
  %80 = call i32 (...) @ifnet_head_done()
  %81 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  ret %struct.ifaddr* %81
}

declare dso_local i32 @ifnet_head_lock_shared(...) #1

declare dso_local i32 @ifnet_lock_shared(%struct.ifnet*) #1

declare dso_local i32 @IFA_LOCK_SPIN(%struct.ifaddr*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.ifaddr*) #1

declare dso_local i64 @ifa_equal(%struct.sockaddr*, i32) #1

declare dso_local i32 @IFA_ADDREF_LOCKED(%struct.ifaddr*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i32 @ifnet_head_done(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
