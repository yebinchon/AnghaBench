; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_inctl_ifbrdaddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_inctl_ifbrdaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32 }
%struct.in_ifaddr = type { %struct.TYPE_11__, i32, i32, i32, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.ifreq = type { i32 }
%struct.kev_in_data = type { %struct.TYPE_10__*, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.kev_msg* }
%struct.kev_msg = type { %struct.TYPE_10__*, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_7__ }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KEV_VENDOR_APPLE = common dso_local global i32 0, align 4
@KEV_NETWORK_CLASS = common dso_local global i32 0, align 4
@KEV_INET_SUBCLASS = common dso_local global i32 0, align 4
@KEV_INET_SIFBRDADDR = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.in_ifaddr*, i32, %struct.ifreq*)* @inctl_ifbrdaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inctl_ifbrdaddr(%struct.ifnet* %0, %struct.in_ifaddr* %1, i32 %2, %struct.ifreq* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.in_ifaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca %struct.kev_in_data, align 8
  %11 = alloca %struct.kev_msg, align 8
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.in_ifaddr* %1, %struct.in_ifaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ifreq* %3, %struct.ifreq** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %14 = icmp ne %struct.ifnet* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @VERIFY(i32 %15)
  %17 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %18 = icmp eq %struct.in_ifaddr* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %20, i32* %5, align 4
  br label %151

21:                                               ; preds = %4
  %22 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IFF_BROADCAST, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %5, align 4
  br label %151

30:                                               ; preds = %21
  %31 = bitcast %struct.kev_in_data* %10 to %struct.kev_msg*
  %32 = call i32 @bzero(%struct.kev_msg* %31, i32 72)
  %33 = call i32 @bzero(%struct.kev_msg* %11, i32 72)
  %34 = load i32, i32* %8, align 4
  switch i32 %34, label %147 [
    i32 129, label %35
    i32 128, label %47
  ]

35:                                               ; preds = %30
  %36 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %37 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %36, i32 0, i32 0
  %38 = call i32 @IFA_LOCK(%struct.TYPE_11__* %37)
  %39 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %40 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %39, i32 0, i32 7
  %41 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %42 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %41, i32 0, i32 0
  %43 = call i32 @bcopy(i32* %40, i32* %42, i32 4)
  %44 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %45 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %44, i32 0, i32 0
  %46 = call i32 @IFA_UNLOCK(%struct.TYPE_11__* %45)
  br label %149

47:                                               ; preds = %30
  %48 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %49 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %48, i32 0, i32 0
  %50 = call i32 @IFA_LOCK(%struct.TYPE_11__* %49)
  %51 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %52 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %51, i32 0, i32 0
  %53 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %54 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %53, i32 0, i32 7
  %55 = call i32 @bcopy(i32* %52, i32* %54, i32 4)
  %56 = load i32, i32* @KEV_VENDOR_APPLE, align 4
  %57 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %11, i32 0, i32 12
  store i32 %56, i32* %57, align 8
  %58 = load i32, i32* @KEV_NETWORK_CLASS, align 4
  %59 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %11, i32 0, i32 11
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @KEV_INET_SUBCLASS, align 4
  %61 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %11, i32 0, i32 10
  store i32 %60, i32* %61, align 8
  %62 = load i32, i32* @KEV_INET_SIFBRDADDR, align 4
  %63 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %11, i32 0, i32 9
  store i32 %62, i32* %63, align 4
  %64 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %65 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %47
  %70 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 8
  %71 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %72 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = bitcast i8* %75 to %struct.sockaddr_in*
  %77 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %76, i32 0, i32 0
  %78 = bitcast %struct.TYPE_7__* %70 to i8*
  %79 = bitcast %struct.TYPE_7__* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 4 %79, i64 4, i1 false)
  br label %84

80:                                               ; preds = %47
  %81 = load i32, i32* @INADDR_ANY, align 4
  %82 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %80, %69
  %85 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %86 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %85, i32 0, i32 6
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 7
  store i32 %88, i32* %89, align 4
  %90 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %91 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 6
  store i32 %92, i32* %93, align 8
  %94 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %95 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 5
  store i32 %96, i32* %97, align 4
  %98 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %99 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 4
  store i32 %100, i32* %101, align 8
  %102 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %103 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 3
  store i32 %104, i32* %105, align 4
  %106 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %107 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 2
  store i32 %108, i32* %109, align 8
  %110 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %111 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %110, i32 0, i32 0
  %112 = call i32 @IFA_UNLOCK(%struct.TYPE_11__* %111)
  %113 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %118 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @IFNAMSIZ, align 4
  %121 = call i32 @strlcpy(i32* %116, i32 %119, i32 %120)
  %122 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %123 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %128 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %10, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = bitcast %struct.kev_in_data* %10 to %struct.kev_msg*
  %133 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %11, i32 0, i32 0
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  store %struct.kev_msg* %132, %struct.kev_msg** %136, align 8
  %137 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %11, i32 0, i32 0
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  store i32 72, i32* %140, align 8
  %141 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %11, i32 0, i32 0
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i64 1
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  store i32 0, i32* %144, align 8
  %145 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %146 = call i32 @dlil_post_complete_msg(%struct.ifnet* %145, %struct.kev_msg* %11)
  br label %149

147:                                              ; preds = %30
  %148 = call i32 @VERIFY(i32 0)
  br label %149

149:                                              ; preds = %147, %84, %35
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %149, %28, %19
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bzero(%struct.kev_msg*, i32) #1

declare dso_local i32 @IFA_LOCK(%struct.TYPE_11__*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @IFA_UNLOCK(%struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strlcpy(i32*, i32, i32) #1

declare dso_local i32 @dlil_post_complete_msg(%struct.ifnet*, %struct.kev_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
