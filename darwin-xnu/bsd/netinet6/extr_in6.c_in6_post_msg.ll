; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_post_msg.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_post_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64, i32, i32 }
%struct.in6_ifaddr = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.kev_msg = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__, %struct.TYPE_4__, i8*, i32, i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.kev_msg* }
%struct.TYPE_5__ = type { i8*, i32, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.kev_in6_data = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__, %struct.TYPE_4__, i8*, i32, i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.in6_addrlifetime = type { i32, i32, i32, i32 }

@KEV_VENDOR_APPLE = common dso_local global i32 0, align 4
@KEV_NETWORK_CLASS = common dso_local global i32 0, align 4
@KEV_INET6_SUBCLASS = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6_post_msg(%struct.ifnet* %0, i8* %1, %struct.in6_ifaddr* %2, i32* %3) #0 {
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.in6_ifaddr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.kev_msg, align 8
  %10 = alloca %struct.kev_in6_data, align 8
  %11 = alloca %struct.in6_addrlifetime, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.in6_ifaddr* %2, %struct.in6_ifaddr** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = bitcast %struct.kev_in6_data* %10 to %struct.kev_msg*
  %13 = call i32 @bzero(%struct.kev_msg* %12, i32 112)
  %14 = call i32 @bzero(%struct.kev_msg* %9, i32 112)
  %15 = load i32, i32* @KEV_VENDOR_APPLE, align 4
  %16 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %9, i32 0, i32 13
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @KEV_NETWORK_CLASS, align 4
  %18 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %9, i32 0, i32 12
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @KEV_INET6_SUBCLASS, align 4
  %20 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %9, i32 0, i32 11
  store i32 %19, i32* %20, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %9, i32 0, i32 10
  store i8* %21, i8** %22, align 8
  %23 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %24 = icmp ne %struct.in6_ifaddr* %23, null
  br i1 %24, label %25, label %75

25:                                               ; preds = %4
  %26 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %27 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %26, i32 0, i32 0
  %28 = call i32 @IFA_LOCK(i32* %27)
  %29 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %30 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.kev_in6_data, %struct.kev_in6_data* %10, i32 0, i32 9
  store i32 %31, i32* %32, align 8
  %33 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %34 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.kev_in6_data, %struct.kev_in6_data* %10, i32 0, i32 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %38 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.kev_in6_data, %struct.kev_in6_data* %10, i32 0, i32 7
  store i32 %39, i32* %40, align 8
  %41 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %42 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.kev_in6_data, %struct.kev_in6_data* %10, i32 0, i32 6
  store i32 %43, i32* %44, align 4
  %45 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %46 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.kev_in6_data, %struct.kev_in6_data* %10, i32 0, i32 5
  store i32 %47, i32* %48, align 8
  %49 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %50 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = getelementptr inbounds %struct.kev_in6_data, %struct.kev_in6_data* %10, i32 0, i32 4
  store i8* %52, i8** %53, align 8
  %54 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %55 = call i32 @in6ifa_getlifetime(%struct.in6_ifaddr* %54, %struct.in6_addrlifetime* %11, i32 1)
  %56 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %11, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.kev_in6_data, %struct.kev_in6_data* %10, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %11, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.kev_in6_data, %struct.kev_in6_data* %10, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %11, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.kev_in6_data, %struct.kev_in6_data* %10, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %11, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.kev_in6_data, %struct.kev_in6_data* %10, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %73 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %72, i32 0, i32 0
  %74 = call i32 @IFA_UNLOCK(i32* %73)
  br label %75

75:                                               ; preds = %25, %4
  %76 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %77 = icmp ne %struct.ifnet* %76, null
  br i1 %77, label %78, label %99

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.kev_in6_data, %struct.kev_in6_data* %10, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %84 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @IFNAMSIZ, align 4
  %87 = call i32 @strlcpy(i32* %82, i32 %85, i32 %86)
  %88 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %89 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.kev_in6_data, %struct.kev_in6_data* %10, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %94 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = getelementptr inbounds %struct.kev_in6_data, %struct.kev_in6_data* %10, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %78, %75
  %100 = load i32*, i32** %8, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.kev_in6_data, %struct.kev_in6_data* %10, i32 0, i32 1
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @memcpy(i32* %103, i32* %104, i32 4)
  br label %106

106:                                              ; preds = %102, %99
  %107 = bitcast %struct.kev_in6_data* %10 to %struct.kev_msg*
  %108 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %9, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  store %struct.kev_msg* %107, %struct.kev_msg** %111, align 8
  %112 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %9, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  store i32 112, i32* %115, align 8
  %116 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %9, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  %120 = call i32 @dlil_post_complete_msg(i32* null, %struct.kev_msg* %9)
  ret void
}

declare dso_local i32 @bzero(%struct.kev_msg*, i32) #1

declare dso_local i32 @IFA_LOCK(i32*) #1

declare dso_local i32 @in6ifa_getlifetime(%struct.in6_ifaddr*, %struct.in6_addrlifetime*, i32) #1

declare dso_local i32 @IFA_UNLOCK(i32*) #1

declare dso_local i32 @strlcpy(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dlil_post_complete_msg(i32*, %struct.kev_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
