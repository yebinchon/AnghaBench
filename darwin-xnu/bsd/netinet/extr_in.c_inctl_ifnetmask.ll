; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_inctl_ifnetmask.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_inctl_ifnetmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32 }
%struct.in_ifaddr = type { %struct.TYPE_11__, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.sockaddr_in }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ifreq = type { %struct.sockaddr_in }
%struct.kev_in_data = type { %struct.TYPE_10__*, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.kev_msg* }
%struct.kev_msg = type { %struct.TYPE_10__*, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32* }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@KEV_VENDOR_APPLE = common dso_local global i32 0, align 4
@KEV_NETWORK_CLASS = common dso_local global i32 0, align 4
@KEV_INET_SUBCLASS = common dso_local global i32 0, align 4
@KEV_INET_SIFNETMASK = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.in_ifaddr*, i32, %struct.ifreq*)* @inctl_ifnetmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inctl_ifnetmask(%struct.ifnet* %0, %struct.in_ifaddr* %1, i32 %2, %struct.ifreq* %3) #0 {
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.in_ifaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.kev_in_data, align 8
  %10 = alloca %struct.kev_msg, align 8
  %11 = alloca %struct.sockaddr_in, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.in_ifaddr* %1, %struct.in_ifaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ifreq* %3, %struct.ifreq** %8, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %15 = icmp ne %struct.ifnet* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @VERIFY(i32 %16)
  %18 = bitcast %struct.kev_in_data* %9 to %struct.kev_msg*
  %19 = call i32 @bzero(%struct.kev_msg* %18, i32 72)
  %20 = call i32 @bzero(%struct.kev_msg* %10, i32 72)
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %152 [
    i32 129, label %22
    i32 128, label %39
  ]

22:                                               ; preds = %4
  %23 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %24 = icmp eq %struct.in_ifaddr* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %26, i32* %12, align 4
  br label %154

27:                                               ; preds = %22
  %28 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %29 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %28, i32 0, i32 0
  %30 = call i32 @IFA_LOCK(%struct.TYPE_11__* %29)
  %31 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %32 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %31, i32 0, i32 7
  %33 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %34 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %33, i32 0, i32 0
  %35 = call i32 @bcopy(%struct.sockaddr_in* %32, %struct.sockaddr_in* %34, i32 4)
  %36 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %37 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %36, i32 0, i32 0
  %38 = call i32 @IFA_UNLOCK(%struct.TYPE_11__* %37)
  br label %154

39:                                               ; preds = %4
  %40 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %41 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %40, i32 0, i32 0
  %42 = call i32 @bcopy(%struct.sockaddr_in* %41, %struct.sockaddr_in* %11, i32 4)
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %13, align 4
  %46 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %47 = icmp ne %struct.in_ifaddr* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 @VERIFY(i32 %48)
  %50 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %51 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %50, i32 0, i32 0
  %52 = call i32 @IFA_LOCK(%struct.TYPE_11__* %51)
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %55 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 8
  %58 = call i32 @ntohl(i32 %53)
  %59 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %60 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @KEV_VENDOR_APPLE, align 4
  %62 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %10, i32 0, i32 12
  store i32 %61, i32* %62, align 8
  %63 = load i32, i32* @KEV_NETWORK_CLASS, align 4
  %64 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %10, i32 0, i32 11
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @KEV_INET_SUBCLASS, align 4
  %66 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %10, i32 0, i32 10
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* @KEV_INET_SIFNETMASK, align 4
  %68 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %10, i32 0, i32 9
  store i32 %67, i32* %68, align 4
  %69 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %70 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %39
  %75 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %9, i32 0, i32 8
  %76 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %77 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = bitcast i8* %80 to %struct.sockaddr_in*
  %82 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %81, i32 0, i32 0
  %83 = bitcast %struct.TYPE_7__* %75 to i8*
  %84 = bitcast %struct.TYPE_7__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 4 %84, i64 4, i1 false)
  br label %89

85:                                               ; preds = %39
  %86 = load i32, i32* @INADDR_ANY, align 4
  %87 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %9, i32 0, i32 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %85, %74
  %90 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %91 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %9, i32 0, i32 7
  store i32 %93, i32* %94, align 4
  %95 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %96 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %9, i32 0, i32 6
  store i32 %97, i32* %98, align 8
  %99 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %100 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %9, i32 0, i32 5
  store i32 %101, i32* %102, align 4
  %103 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %104 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %9, i32 0, i32 4
  store i32 %105, i32* %106, align 8
  %107 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %108 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %9, i32 0, i32 3
  store i32 %109, i32* %110, align 4
  %111 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %112 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %9, i32 0, i32 2
  store i32 %113, i32* %114, align 8
  %115 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %116 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %115, i32 0, i32 0
  %117 = call i32 @IFA_UNLOCK(%struct.TYPE_11__* %116)
  %118 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %9, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %123 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @IFNAMSIZ, align 4
  %126 = call i32 @strlcpy(i32* %121, i32 %124, i32 %125)
  %127 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %128 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %9, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %133 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.kev_in_data, %struct.kev_in_data* %9, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = bitcast %struct.kev_in_data* %9 to %struct.kev_msg*
  %138 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %10, i32 0, i32 0
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i64 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  store %struct.kev_msg* %137, %struct.kev_msg** %141, align 8
  %142 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %10, i32 0, i32 0
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  store i32 72, i32* %145, align 8
  %146 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %10, i32 0, i32 0
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i64 1
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  store i32 0, i32* %149, align 8
  %150 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %151 = call i32 @dlil_post_complete_msg(%struct.ifnet* %150, %struct.kev_msg* %10)
  br label %154

152:                                              ; preds = %4
  %153 = call i32 @VERIFY(i32 0)
  br label %154

154:                                              ; preds = %152, %89, %27, %25
  %155 = load i32, i32* %12, align 4
  ret i32 %155
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bzero(%struct.kev_msg*, i32) #1

declare dso_local i32 @IFA_LOCK(%struct.TYPE_11__*) #1

declare dso_local i32 @bcopy(%struct.sockaddr_in*, %struct.sockaddr_in*, i32) #1

declare dso_local i32 @IFA_UNLOCK(%struct.TYPE_11__*) #1

declare dso_local i32 @ntohl(i32) #1

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
