; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_rtsock.c_sysctl_dumpentry_ext.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_rtsock.c_sysctl_dumpentry_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32 }
%struct.walkarg = type { i64, i32, i32*, i32* }
%struct.rtentry = type { i32, i32 (%struct.rtentry*, %struct.rt_addrinfo*)*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.rt_addrinfo = type opaque
%struct.TYPE_2__ = type { i32 }
%struct.rt_addrinfo.0 = type { i32, i32, i32, i32, i32* }
%struct.rt_msghdr_ext = type { i32, %struct.rt_addrinfo.0, i32, i64, i64, i64, i32, i32, i32 }

@NET_RT_DUMPX_FLAGS = common dso_local global i64 0, align 8
@RTAX_DST = common dso_local global i64 0, align 8
@RTAX_GATEWAY = common dso_local global i64 0, align 8
@RTAX_NETMASK = common dso_local global i64 0, align 8
@RTAX_GENMASK = common dso_local global i64 0, align 8
@RTM_GET_EXT = common dso_local global i32 0, align 4
@IFNET_RSSI_UNKNOWN = common dso_local global i32 0, align 4
@IFNET_LQM_THRESH_OFF = common dso_local global i32 0, align 4
@IFNET_NPM_THRESH_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_node*, i8*)* @sysctl_dumpentry_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_dumpentry_ext(%struct.radix_node* %0, i8* %1) #0 {
  %3 = alloca %struct.radix_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.walkarg*, align 8
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rt_addrinfo.0, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rt_msghdr_ext*, align 8
  store %struct.radix_node* %0, %struct.radix_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.walkarg*
  store %struct.walkarg* %13, %struct.walkarg** %5, align 8
  %14 = load %struct.radix_node*, %struct.radix_node** %3, align 8
  %15 = bitcast %struct.radix_node* %14 to %struct.rtentry*
  store %struct.rtentry* %15, %struct.rtentry** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = call i32 (...) @current_proc()
  %17 = call i32 @kauth_cred_proc_ref(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %19 = call i32 @RT_LOCK(%struct.rtentry* %18)
  %20 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %21 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NET_RT_DUMPX_FLAGS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %27 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %30 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %150

35:                                               ; preds = %25, %2
  %36 = call i32 @bzero(%struct.rt_addrinfo.0* %9, i32 24)
  %37 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %38 = call i32 @rt_key(%struct.rtentry* %37)
  %39 = getelementptr inbounds %struct.rt_addrinfo.0, %struct.rt_addrinfo.0* %9, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @RTAX_DST, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 %38, i32* %42, align 4
  %43 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %44 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.rt_addrinfo.0, %struct.rt_addrinfo.0* %9, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @RTAX_GATEWAY, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %45, i32* %49, align 4
  %50 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %51 = call i32 @rt_mask(%struct.rtentry* %50)
  %52 = getelementptr inbounds %struct.rt_addrinfo.0, %struct.rt_addrinfo.0* %9, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @RTAX_NETMASK, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %51, i32* %55, align 4
  %56 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %57 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.rt_addrinfo.0, %struct.rt_addrinfo.0* %9, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @RTAX_GENMASK, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* @RTM_GET_EXT, align 4
  %64 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %65 = call i32 @rt_msg2(i32 %63, %struct.rt_addrinfo.0* %9, i32* null, %struct.walkarg* %64, i32* %10)
  store i32 %65, i32* %8, align 4
  %66 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %67 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %149

70:                                               ; preds = %35
  %71 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %72 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %149

75:                                               ; preds = %70
  %76 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %77 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = bitcast i32* %78 to i8*
  %80 = bitcast i8* %79 to %struct.rt_msghdr_ext*
  store %struct.rt_msghdr_ext* %80, %struct.rt_msghdr_ext** %11, align 8
  %81 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %82 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.rt_msghdr_ext*, %struct.rt_msghdr_ext** %11, align 8
  %85 = getelementptr inbounds %struct.rt_msghdr_ext, %struct.rt_msghdr_ext* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %87 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.rt_msghdr_ext*, %struct.rt_msghdr_ext** %11, align 8
  %90 = getelementptr inbounds %struct.rt_msghdr_ext, %struct.rt_msghdr_ext* %89, i32 0, i32 8
  store i32 %88, i32* %90, align 8
  %91 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %92 = load %struct.rt_msghdr_ext*, %struct.rt_msghdr_ext** %11, align 8
  %93 = getelementptr inbounds %struct.rt_msghdr_ext, %struct.rt_msghdr_ext* %92, i32 0, i32 7
  %94 = call i32 @rt_getmetrics(%struct.rtentry* %91, i32* %93)
  %95 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %96 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.rt_msghdr_ext*, %struct.rt_msghdr_ext** %11, align 8
  %101 = getelementptr inbounds %struct.rt_msghdr_ext, %struct.rt_msghdr_ext* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 8
  %102 = load %struct.rt_msghdr_ext*, %struct.rt_msghdr_ext** %11, align 8
  %103 = getelementptr inbounds %struct.rt_msghdr_ext, %struct.rt_msghdr_ext* %102, i32 0, i32 5
  store i64 0, i64* %103, align 8
  %104 = load %struct.rt_msghdr_ext*, %struct.rt_msghdr_ext** %11, align 8
  %105 = getelementptr inbounds %struct.rt_msghdr_ext, %struct.rt_msghdr_ext* %104, i32 0, i32 4
  store i64 0, i64* %105, align 8
  %106 = load %struct.rt_msghdr_ext*, %struct.rt_msghdr_ext** %11, align 8
  %107 = getelementptr inbounds %struct.rt_msghdr_ext, %struct.rt_msghdr_ext* %106, i32 0, i32 3
  store i64 0, i64* %107, align 8
  %108 = getelementptr inbounds %struct.rt_addrinfo.0, %struct.rt_addrinfo.0* %9, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.rt_msghdr_ext*, %struct.rt_msghdr_ext** %11, align 8
  %111 = getelementptr inbounds %struct.rt_msghdr_ext, %struct.rt_msghdr_ext* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %113 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %112, i32 0, i32 1
  %114 = load i32 (%struct.rtentry*, %struct.rt_addrinfo*)*, i32 (%struct.rtentry*, %struct.rt_addrinfo*)** %113, align 8
  %115 = icmp eq i32 (%struct.rtentry*, %struct.rt_addrinfo*)* %114, null
  br i1 %115, label %116, label %132

116:                                              ; preds = %75
  %117 = load %struct.rt_msghdr_ext*, %struct.rt_msghdr_ext** %11, align 8
  %118 = getelementptr inbounds %struct.rt_msghdr_ext, %struct.rt_msghdr_ext* %117, i32 0, i32 1
  %119 = call i32 @bzero(%struct.rt_addrinfo.0* %118, i32 24)
  %120 = load i32, i32* @IFNET_RSSI_UNKNOWN, align 4
  %121 = load %struct.rt_msghdr_ext*, %struct.rt_msghdr_ext** %11, align 8
  %122 = getelementptr inbounds %struct.rt_msghdr_ext, %struct.rt_msghdr_ext* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.rt_addrinfo.0, %struct.rt_addrinfo.0* %122, i32 0, i32 2
  store i32 %120, i32* %123, align 8
  %124 = load i32, i32* @IFNET_LQM_THRESH_OFF, align 4
  %125 = load %struct.rt_msghdr_ext*, %struct.rt_msghdr_ext** %11, align 8
  %126 = getelementptr inbounds %struct.rt_msghdr_ext, %struct.rt_msghdr_ext* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.rt_addrinfo.0, %struct.rt_addrinfo.0* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 4
  %128 = load i32, i32* @IFNET_NPM_THRESH_UNKNOWN, align 4
  %129 = load %struct.rt_msghdr_ext*, %struct.rt_msghdr_ext** %11, align 8
  %130 = getelementptr inbounds %struct.rt_msghdr_ext, %struct.rt_msghdr_ext* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.rt_addrinfo.0, %struct.rt_addrinfo.0* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 8
  br label %141

132:                                              ; preds = %75
  %133 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %134 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %133, i32 0, i32 1
  %135 = load i32 (%struct.rtentry*, %struct.rt_addrinfo*)*, i32 (%struct.rtentry*, %struct.rt_addrinfo*)** %134, align 8
  %136 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %137 = load %struct.rt_msghdr_ext*, %struct.rt_msghdr_ext** %11, align 8
  %138 = getelementptr inbounds %struct.rt_msghdr_ext, %struct.rt_msghdr_ext* %137, i32 0, i32 1
  %139 = bitcast %struct.rt_addrinfo.0* %138 to %struct.rt_addrinfo*
  %140 = call i32 %135(%struct.rtentry* %136, %struct.rt_addrinfo* %139)
  br label %141

141:                                              ; preds = %132, %116
  %142 = load %struct.walkarg*, %struct.walkarg** %5, align 8
  %143 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.rt_msghdr_ext*, %struct.rt_msghdr_ext** %11, align 8
  %146 = ptrtoint %struct.rt_msghdr_ext* %145 to i32
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @SYSCTL_OUT(i32* %144, i32 %146, i32 %147)
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %141, %70, %35
  br label %150

150:                                              ; preds = %149, %34
  %151 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %152 = call i32 @RT_UNLOCK(%struct.rtentry* %151)
  %153 = call i32 @kauth_cred_unref(i32* %10)
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local i32 @kauth_cred_proc_ref(i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @bzero(%struct.rt_addrinfo.0*, i32) #1

declare dso_local i32 @rt_key(%struct.rtentry*) #1

declare dso_local i32 @rt_mask(%struct.rtentry*) #1

declare dso_local i32 @rt_msg2(i32, %struct.rt_addrinfo.0*, i32*, %struct.walkarg*, i32*) #1

declare dso_local i32 @rt_getmetrics(%struct.rtentry*, i32*) #1

declare dso_local i32 @SYSCTL_OUT(i32*, i32, i32) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
