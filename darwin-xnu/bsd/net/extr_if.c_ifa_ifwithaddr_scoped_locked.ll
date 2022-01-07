; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifa_ifwithaddr_scoped_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifa_ifwithaddr_scoped_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ifaddr* }
%struct.ifaddr = type { %struct.sockaddr*, %struct.sockaddr*, %struct.TYPE_4__ }
%struct.sockaddr = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.ifaddr* }

@IFSCOPE_NONE = common dso_local global i32 0, align 4
@if_index = common dso_local global i64 0, align 8
@ifindex2ifnet = common dso_local global %struct.ifnet** null, align 8
@IFF_BROADCAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ifaddr* @ifa_ifwithaddr_scoped_locked(%struct.sockaddr* %0, i32 %1) #0 {
  %3 = alloca %struct.ifaddr*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifaddr*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.ifaddr*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ifaddr* null, %struct.ifaddr** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @IFSCOPE_NONE, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %14 = call %struct.ifaddr* @ifa_ifwithaddr_locked(%struct.sockaddr* %13)
  store %struct.ifaddr* %14, %struct.ifaddr** %3, align 8
  br label %112

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i64, i64* @if_index, align 8
  %18 = trunc i64 %17 to i32
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store %struct.ifaddr* null, %struct.ifaddr** %3, align 8
  br label %112

21:                                               ; preds = %15
  %22 = load %struct.ifnet**, %struct.ifnet*** @ifindex2ifnet, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %22, i64 %24
  %26 = load %struct.ifnet*, %struct.ifnet** %25, align 8
  store %struct.ifnet* %26, %struct.ifnet** %7, align 8
  %27 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %28 = icmp ne %struct.ifnet* %27, null
  br i1 %28, label %29, label %110

29:                                               ; preds = %21
  store %struct.ifaddr* null, %struct.ifaddr** %8, align 8
  %30 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %31 = call i32 @ifnet_lock_shared(%struct.ifnet* %30)
  %32 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.ifaddr*, %struct.ifaddr** %34, align 8
  store %struct.ifaddr* %35, %struct.ifaddr** %8, align 8
  br label %36

36:                                               ; preds = %102, %29
  %37 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %38 = icmp ne %struct.ifaddr* %37, null
  br i1 %38, label %39, label %107

39:                                               ; preds = %36
  %40 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %41 = call i32 @IFA_LOCK_SPIN(%struct.ifaddr* %40)
  %42 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %43 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %42, i32 0, i32 1
  %44 = load %struct.sockaddr*, %struct.sockaddr** %43, align 8
  %45 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %48 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %53 = call i32 @IFA_UNLOCK(%struct.ifaddr* %52)
  br label %102

54:                                               ; preds = %39
  %55 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %56 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %57 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %56, i32 0, i32 1
  %58 = load %struct.sockaddr*, %struct.sockaddr** %57, align 8
  %59 = call i64 @ifa_equal(%struct.sockaddr* %55, %struct.sockaddr* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  store %struct.ifaddr* %62, %struct.ifaddr** %6, align 8
  %63 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %64 = call i32 @IFA_ADDREF_LOCKED(%struct.ifaddr* %63)
  %65 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %66 = call i32 @IFA_UNLOCK(%struct.ifaddr* %65)
  br label %107

67:                                               ; preds = %54
  %68 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %69 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @IFF_BROADCAST, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %67
  %75 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %76 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %75, i32 0, i32 0
  %77 = load %struct.sockaddr*, %struct.sockaddr** %76, align 8
  %78 = icmp ne %struct.sockaddr* %77, null
  br i1 %78, label %79, label %99

79:                                               ; preds = %74
  %80 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %81 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %80, i32 0, i32 0
  %82 = load %struct.sockaddr*, %struct.sockaddr** %81, align 8
  %83 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %79
  %87 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %88 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %87, i32 0, i32 0
  %89 = load %struct.sockaddr*, %struct.sockaddr** %88, align 8
  %90 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %91 = call i64 @ifa_equal(%struct.sockaddr* %89, %struct.sockaddr* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  store %struct.ifaddr* %94, %struct.ifaddr** %6, align 8
  %95 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %96 = call i32 @IFA_ADDREF_LOCKED(%struct.ifaddr* %95)
  %97 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %98 = call i32 @IFA_UNLOCK(%struct.ifaddr* %97)
  br label %107

99:                                               ; preds = %86, %79, %74, %67
  %100 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %101 = call i32 @IFA_UNLOCK(%struct.ifaddr* %100)
  br label %102

102:                                              ; preds = %99, %51
  %103 = load %struct.ifaddr*, %struct.ifaddr** %8, align 8
  %104 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load %struct.ifaddr*, %struct.ifaddr** %105, align 8
  store %struct.ifaddr* %106, %struct.ifaddr** %8, align 8
  br label %36

107:                                              ; preds = %93, %61, %36
  %108 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %109 = call i32 @ifnet_lock_done(%struct.ifnet* %108)
  br label %110

110:                                              ; preds = %107, %21
  %111 = load %struct.ifaddr*, %struct.ifaddr** %6, align 8
  store %struct.ifaddr* %111, %struct.ifaddr** %3, align 8
  br label %112

112:                                              ; preds = %110, %20, %12
  %113 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  ret %struct.ifaddr* %113
}

declare dso_local %struct.ifaddr* @ifa_ifwithaddr_locked(%struct.sockaddr*) #1

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
