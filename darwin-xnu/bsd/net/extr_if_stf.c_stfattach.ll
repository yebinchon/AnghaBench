; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_stf.c_stfattach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_stf.c_stfattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stf_softc = type { i32, i32, %struct.encaptab* }
%struct.encaptab = type { i32 }
%struct.ifnet_init_eparams = type { i32, i8*, i32, i32, %struct.stf_softc*, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@PF_INET6 = common dso_local global i32 0, align 4
@APPLE_IF_FAM_STF = common dso_local global i32 0, align 4
@stf_attach_inet6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"proto_register_plumber failed for AF_INET6 error=%d\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"stf softc attach failed\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@stf_encapcheck = common dso_local global i32 0, align 4
@in_stf_protosw = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"sftattach encap_attach_func failed\0A\00", align 1
@stf_mtx_grp = common dso_local global i32 0, align 4
@LCK_ATTR_NULL = common dso_local global i32 0, align 4
@IFNET_INIT_CURRENT_VERSION = common dso_local global i32 0, align 4
@IFNET_INIT_LEGACY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"stf\00", align 1
@IFT_STF = common dso_local global i32 0, align 4
@IFNET_FAMILY_STF = common dso_local global i32 0, align 4
@stf_output = common dso_local global i32 0, align 4
@stf_demux = common dso_local global i32 0, align 4
@stf_add_proto = common dso_local global i32 0, align 4
@stf_del_proto = common dso_local global i32 0, align 4
@stf_ioctl = common dso_local global i32 0, align 4
@stf_set_bpf_tap = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"stfattach, ifnet_allocate failed - %d\0A\00", align 1
@IPV6_MMTU = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"stfattach: ifnet_attach returned error=%d\0A\00", align 1
@DLT_NULL = common dso_local global i32 0, align 4
@IFF_LINK2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stfattach() #0 {
  %1 = alloca %struct.stf_softc*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.encaptab*, align 8
  %4 = alloca %struct.ifnet_init_eparams, align 8
  %5 = call i32 (...) @stfinit()
  %6 = load i32, i32* @PF_INET6, align 4
  %7 = load i32, i32* @APPLE_IF_FAM_STF, align 4
  %8 = load i32, i32* @stf_attach_inet6, align 4
  %9 = call i32 @proto_register_plumber(i32 %6, i32 %7, i32 %8, i32* null)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32, i32* %2, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %12, %0
  %16 = load i32, i32* @M_DEVBUF, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = load i32, i32* @M_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.stf_softc* @_MALLOC(i32 16, i32 %16, i32 %19)
  store %struct.stf_softc* %20, %struct.stf_softc** %1, align 8
  %21 = load %struct.stf_softc*, %struct.stf_softc** %1, align 8
  %22 = icmp eq %struct.stf_softc* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %132

25:                                               ; preds = %15
  %26 = load i32, i32* @AF_INET, align 4
  %27 = load i32, i32* @IPPROTO_IPV6, align 4
  %28 = load i32, i32* @stf_encapcheck, align 4
  %29 = load %struct.stf_softc*, %struct.stf_softc** %1, align 8
  %30 = call %struct.encaptab* @encap_attach_func(i32 %26, i32 %27, i32 %28, i32* @in_stf_protosw, %struct.stf_softc* %29)
  store %struct.encaptab* %30, %struct.encaptab** %3, align 8
  %31 = load %struct.encaptab*, %struct.encaptab** %3, align 8
  %32 = icmp eq %struct.encaptab* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.stf_softc*, %struct.stf_softc** %1, align 8
  %36 = load i32, i32* @M_DEVBUF, align 4
  %37 = call i32 @FREE(%struct.stf_softc* %35, i32 %36)
  br label %132

38:                                               ; preds = %25
  %39 = load %struct.encaptab*, %struct.encaptab** %3, align 8
  %40 = load %struct.stf_softc*, %struct.stf_softc** %1, align 8
  %41 = getelementptr inbounds %struct.stf_softc, %struct.stf_softc* %40, i32 0, i32 2
  store %struct.encaptab* %39, %struct.encaptab** %41, align 8
  %42 = load %struct.stf_softc*, %struct.stf_softc** %1, align 8
  %43 = getelementptr inbounds %struct.stf_softc, %struct.stf_softc* %42, i32 0, i32 1
  %44 = load i32, i32* @stf_mtx_grp, align 4
  %45 = load i32, i32* @LCK_ATTR_NULL, align 4
  %46 = call i32 @lck_mtx_init(i32* %43, i32 %44, i32 %45)
  %47 = call i32 @bzero(%struct.ifnet_init_eparams* %4, i32 72)
  %48 = load i32, i32* @IFNET_INIT_CURRENT_VERSION, align 4
  %49 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %4, i32 0, i32 13
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %4, i32 0, i32 0
  store i32 72, i32* %50, align 8
  %51 = load i32, i32* @IFNET_INIT_LEGACY, align 4
  %52 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %4, i32 0, i32 12
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %4, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %53, align 8
  %54 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %4, i32 0, i32 11
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @IFT_STF, align 4
  %56 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %4, i32 0, i32 10
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @IFNET_FAMILY_STF, align 4
  %58 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %4, i32 0, i32 9
  store i32 %57, i32* %58, align 8
  %59 = load i32, i32* @stf_output, align 4
  %60 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %4, i32 0, i32 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @stf_demux, align 4
  %62 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %4, i32 0, i32 7
  store i32 %61, i32* %62, align 8
  %63 = load i32, i32* @stf_add_proto, align 4
  %64 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %4, i32 0, i32 6
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @stf_del_proto, align 4
  %66 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %4, i32 0, i32 5
  store i32 %65, i32* %66, align 8
  %67 = load %struct.stf_softc*, %struct.stf_softc** %1, align 8
  %68 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %4, i32 0, i32 4
  store %struct.stf_softc* %67, %struct.stf_softc** %68, align 8
  %69 = load i32, i32* @stf_ioctl, align 4
  %70 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %4, i32 0, i32 3
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @stf_set_bpf_tap, align 4
  %72 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %4, i32 0, i32 2
  store i32 %71, i32* %72, align 8
  %73 = load %struct.stf_softc*, %struct.stf_softc** %1, align 8
  %74 = getelementptr inbounds %struct.stf_softc, %struct.stf_softc* %73, i32 0, i32 0
  %75 = call i32 @ifnet_allocate_extended(%struct.ifnet_init_eparams* %4, i32* %74)
  store i32 %75, i32* %2, align 4
  %76 = load i32, i32* %2, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %38
  %79 = load i32, i32* %2, align 4
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load %struct.stf_softc*, %struct.stf_softc** %1, align 8
  %82 = getelementptr inbounds %struct.stf_softc, %struct.stf_softc* %81, i32 0, i32 2
  %83 = load %struct.encaptab*, %struct.encaptab** %82, align 8
  %84 = call i32 @encap_detach(%struct.encaptab* %83)
  %85 = load %struct.stf_softc*, %struct.stf_softc** %1, align 8
  %86 = getelementptr inbounds %struct.stf_softc, %struct.stf_softc* %85, i32 0, i32 1
  %87 = load i32, i32* @stf_mtx_grp, align 4
  %88 = call i32 @lck_mtx_destroy(i32* %86, i32 %87)
  %89 = load %struct.stf_softc*, %struct.stf_softc** %1, align 8
  %90 = load i32, i32* @M_DEVBUF, align 4
  %91 = call i32 @FREE(%struct.stf_softc* %89, i32 %90)
  br label %132

92:                                               ; preds = %38
  %93 = load %struct.stf_softc*, %struct.stf_softc** %1, align 8
  %94 = getelementptr inbounds %struct.stf_softc, %struct.stf_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @IPV6_MMTU, align 4
  %97 = call i32 @ifnet_set_mtu(i32 %95, i32 %96)
  %98 = load %struct.stf_softc*, %struct.stf_softc** %1, align 8
  %99 = getelementptr inbounds %struct.stf_softc, %struct.stf_softc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @ifnet_set_flags(i32 %100, i32 0, i32 65535)
  %102 = load %struct.stf_softc*, %struct.stf_softc** %1, align 8
  %103 = getelementptr inbounds %struct.stf_softc, %struct.stf_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @ifnet_attach(i32 %104, i32* null)
  store i32 %105, i32* %2, align 4
  %106 = load i32, i32* %2, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %92
  %109 = load i32, i32* %2, align 4
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %109)
  %111 = load %struct.stf_softc*, %struct.stf_softc** %1, align 8
  %112 = getelementptr inbounds %struct.stf_softc, %struct.stf_softc* %111, i32 0, i32 2
  %113 = load %struct.encaptab*, %struct.encaptab** %112, align 8
  %114 = call i32 @encap_detach(%struct.encaptab* %113)
  %115 = load %struct.stf_softc*, %struct.stf_softc** %1, align 8
  %116 = getelementptr inbounds %struct.stf_softc, %struct.stf_softc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @ifnet_release(i32 %117)
  %119 = load %struct.stf_softc*, %struct.stf_softc** %1, align 8
  %120 = getelementptr inbounds %struct.stf_softc, %struct.stf_softc* %119, i32 0, i32 1
  %121 = load i32, i32* @stf_mtx_grp, align 4
  %122 = call i32 @lck_mtx_destroy(i32* %120, i32 %121)
  %123 = load %struct.stf_softc*, %struct.stf_softc** %1, align 8
  %124 = load i32, i32* @M_DEVBUF, align 4
  %125 = call i32 @FREE(%struct.stf_softc* %123, i32 %124)
  br label %132

126:                                              ; preds = %92
  %127 = load %struct.stf_softc*, %struct.stf_softc** %1, align 8
  %128 = getelementptr inbounds %struct.stf_softc, %struct.stf_softc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @DLT_NULL, align 4
  %131 = call i32 @bpfattach(i32 %129, i32 %130, i32 4)
  br label %132

132:                                              ; preds = %126, %108, %78, %33, %23
  ret void
}

declare dso_local i32 @stfinit(...) #1

declare dso_local i32 @proto_register_plumber(i32, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.stf_softc* @_MALLOC(i32, i32, i32) #1

declare dso_local %struct.encaptab* @encap_attach_func(i32, i32, i32, i32*, %struct.stf_softc*) #1

declare dso_local i32 @FREE(%struct.stf_softc*, i32) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

declare dso_local i32 @bzero(%struct.ifnet_init_eparams*, i32) #1

declare dso_local i32 @ifnet_allocate_extended(%struct.ifnet_init_eparams*, i32*) #1

declare dso_local i32 @encap_detach(%struct.encaptab*) #1

declare dso_local i32 @lck_mtx_destroy(i32*, i32) #1

declare dso_local i32 @ifnet_set_mtu(i32, i32) #1

declare dso_local i32 @ifnet_set_flags(i32, i32, i32) #1

declare dso_local i32 @ifnet_attach(i32, i32*) #1

declare dso_local i32 @ifnet_release(i32) #1

declare dso_local i32 @bpfattach(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
