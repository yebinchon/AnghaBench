; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifa_ifwithaddr_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifa_ifwithaddr_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.ifnet* }
%struct.ifnet = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.ifaddr* }
%struct.ifaddr = type { %struct.sockaddr*, %struct.sockaddr*, %struct.TYPE_7__ }
%struct.sockaddr = type { i64, i64 }
%struct.TYPE_7__ = type { %struct.ifaddr* }
%struct.TYPE_5__ = type { %struct.ifnet* }

@ifnet_head = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@IFF_BROADCAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ifaddr* @ifa_ifwithaddr_locked(%struct.sockaddr* %0) #0 {
  %2 = alloca %struct.sockaddr*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifaddr*, align 8
  %5 = alloca %struct.ifaddr*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %2, align 8
  store %struct.ifaddr* null, %struct.ifaddr** %5, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ifnet_head, i32 0, i32 0), align 8
  store %struct.ifnet* %6, %struct.ifnet** %3, align 8
  br label %7

7:                                                ; preds = %97, %1
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = icmp ne %struct.ifnet* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %12 = icmp ne %struct.ifaddr* %11, null
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i1 [ false, %7 ], [ %13, %10 ]
  br i1 %15, label %16, label %102

16:                                               ; preds = %14
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = call i32 @ifnet_lock_shared(%struct.ifnet* %17)
  %19 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.ifaddr*, %struct.ifaddr** %21, align 8
  store %struct.ifaddr* %22, %struct.ifaddr** %4, align 8
  br label %23

23:                                               ; preds = %89, %16
  %24 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %25 = icmp ne %struct.ifaddr* %24, null
  br i1 %25, label %26, label %94

26:                                               ; preds = %23
  %27 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %28 = call i32 @IFA_LOCK_SPIN(%struct.ifaddr* %27)
  %29 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %30 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %29, i32 0, i32 1
  %31 = load %struct.sockaddr*, %struct.sockaddr** %30, align 8
  %32 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %35 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %40 = call i32 @IFA_UNLOCK(%struct.ifaddr* %39)
  br label %89

41:                                               ; preds = %26
  %42 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %43 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %44 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %43, i32 0, i32 1
  %45 = load %struct.sockaddr*, %struct.sockaddr** %44, align 8
  %46 = call i64 @ifa_equal(%struct.sockaddr* %42, %struct.sockaddr* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  store %struct.ifaddr* %49, %struct.ifaddr** %5, align 8
  %50 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %51 = call i32 @IFA_ADDREF_LOCKED(%struct.ifaddr* %50)
  %52 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %53 = call i32 @IFA_UNLOCK(%struct.ifaddr* %52)
  br label %94

54:                                               ; preds = %41
  %55 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IFF_BROADCAST, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %54
  %62 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %63 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %62, i32 0, i32 0
  %64 = load %struct.sockaddr*, %struct.sockaddr** %63, align 8
  %65 = icmp ne %struct.sockaddr* %64, null
  br i1 %65, label %66, label %86

66:                                               ; preds = %61
  %67 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %68 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %67, i32 0, i32 0
  %69 = load %struct.sockaddr*, %struct.sockaddr** %68, align 8
  %70 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %66
  %74 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %75 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %74, i32 0, i32 0
  %76 = load %struct.sockaddr*, %struct.sockaddr** %75, align 8
  %77 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %78 = call i64 @ifa_equal(%struct.sockaddr* %76, %struct.sockaddr* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  store %struct.ifaddr* %81, %struct.ifaddr** %5, align 8
  %82 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %83 = call i32 @IFA_ADDREF_LOCKED(%struct.ifaddr* %82)
  %84 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %85 = call i32 @IFA_UNLOCK(%struct.ifaddr* %84)
  br label %94

86:                                               ; preds = %73, %66, %61, %54
  %87 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %88 = call i32 @IFA_UNLOCK(%struct.ifaddr* %87)
  br label %89

89:                                               ; preds = %86, %38
  %90 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %91 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load %struct.ifaddr*, %struct.ifaddr** %92, align 8
  store %struct.ifaddr* %93, %struct.ifaddr** %4, align 8
  br label %23

94:                                               ; preds = %80, %48, %23
  %95 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %96 = call i32 @ifnet_lock_done(%struct.ifnet* %95)
  br label %97

97:                                               ; preds = %94
  %98 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %99 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load %struct.ifnet*, %struct.ifnet** %100, align 8
  store %struct.ifnet* %101, %struct.ifnet** %3, align 8
  br label %7

102:                                              ; preds = %14
  %103 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  ret %struct.ifaddr* %103
}

declare dso_local i32 @ifnet_lock_shared(%struct.ifnet*) #1

declare dso_local i32 @IFA_LOCK_SPIN(%struct.ifaddr*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.ifaddr*) #1

declare dso_local i64 @ifa_equal(%struct.sockaddr*, %struct.sockaddr*) #1

declare dso_local i32 @IFA_ADDREF_LOCKED(%struct.ifaddr*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
