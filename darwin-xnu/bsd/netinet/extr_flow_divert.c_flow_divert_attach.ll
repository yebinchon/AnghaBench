; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_attach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_group = type { i32 }
%struct.socket = type { %struct.TYPE_3__, %struct.flow_divert_pcb*, i8*, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.flow_divert_pcb = type { i32, %struct.socket* }
%struct.ifnet = type { i32 }
%struct.inpcb = type { %struct.ifnet* }

@LOG_INFO = common dso_local global i32 0, align 4
@nil_pcb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Attaching socket to flow %u\00", align 1
@g_flow_divert_group_lck = common dso_local global i32 0, align 4
@g_flow_divert_groups = common dso_local global %struct.flow_divert_group** null, align 8
@g_active_group_count = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@SOF_FLOW_DIVERT = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i32 0, align 4
@MBUF_DONTWAIT = common dso_local global i32 0, align 4
@FLOW_DIVERT_TRANSFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i64, i64)* @flow_divert_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_attach(%struct.socket* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.flow_divert_pcb*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca %struct.inpcb*, align 8
  %11 = alloca %struct.socket*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.flow_divert_group*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.flow_divert_pcb* null, %struct.flow_divert_pcb** %8, align 8
  store %struct.ifnet* null, %struct.ifnet** %9, align 8
  store %struct.inpcb* null, %struct.inpcb** %10, align 8
  store i32* null, i32** %12, align 8
  %14 = load %struct.socket*, %struct.socket** %4, align 8
  %15 = call i32 @socket_unlock(%struct.socket* %14, i32 0)
  %16 = load i32, i32* @LOG_INFO, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @FDLOG(i32 %16, i32* @nil_pcb, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = call i32 @lck_rw_lock_shared(i32* @g_flow_divert_group_lck)
  %20 = load %struct.flow_divert_group**, %struct.flow_divert_group*** @g_flow_divert_groups, align 8
  %21 = icmp ne %struct.flow_divert_group** %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %3
  %23 = load i64, i64* @g_active_group_count, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load %struct.flow_divert_group**, %struct.flow_divert_group*** @g_flow_divert_groups, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.flow_divert_group*, %struct.flow_divert_group** %26, i64 %27
  %29 = load %struct.flow_divert_group*, %struct.flow_divert_group** %28, align 8
  store %struct.flow_divert_group* %29, %struct.flow_divert_group** %13, align 8
  %30 = load %struct.flow_divert_group*, %struct.flow_divert_group** %13, align 8
  %31 = icmp ne %struct.flow_divert_group* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.flow_divert_group*, %struct.flow_divert_group** %13, align 8
  %35 = call %struct.flow_divert_pcb* @flow_divert_pcb_lookup(i64 %33, %struct.flow_divert_group* %34)
  store %struct.flow_divert_pcb* %35, %struct.flow_divert_pcb** %8, align 8
  br label %36

36:                                               ; preds = %32, %25
  br label %37

37:                                               ; preds = %36, %22, %3
  %38 = call i32 @lck_rw_done(i32* @g_flow_divert_group_lck)
  %39 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %8, align 8
  %40 = icmp eq %struct.flow_divert_pcb* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @ENOENT, align 4
  store i32 %42, i32* %7, align 4
  br label %154

43:                                               ; preds = %37
  %44 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %8, align 8
  %45 = call i32 @FDLOCK(%struct.flow_divert_pcb* %44)
  %46 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %8, align 8
  %47 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %46, i32 0, i32 1
  %48 = load %struct.socket*, %struct.socket** %47, align 8
  store %struct.socket* %48, %struct.socket** %11, align 8
  %49 = load %struct.socket*, %struct.socket** %11, align 8
  %50 = call %struct.inpcb* @sotoinpcb(%struct.socket* %49)
  store %struct.inpcb* %50, %struct.inpcb** %10, align 8
  %51 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %52 = icmp ne %struct.inpcb* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @VERIFY(i32 %53)
  %55 = load %struct.socket*, %struct.socket** %11, align 8
  %56 = call i32 @socket_lock(%struct.socket* %55, i32 0)
  %57 = load %struct.socket*, %struct.socket** %11, align 8
  %58 = call i32 @flow_divert_disconnect_socket(%struct.socket* %57)
  %59 = load i32, i32* @SOF_FLOW_DIVERT, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.socket*, %struct.socket** %11, align 8
  %62 = getelementptr inbounds %struct.socket, %struct.socket* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.socket*, %struct.socket** %11, align 8
  %66 = getelementptr inbounds %struct.socket, %struct.socket* %65, i32 0, i32 1
  store %struct.flow_divert_pcb* null, %struct.flow_divert_pcb** %66, align 8
  %67 = load %struct.socket*, %struct.socket** %11, align 8
  %68 = call i64 @SOCK_TYPE(%struct.socket* %67)
  %69 = load i64, i64* @SOCK_STREAM, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %43
  %72 = load %struct.socket*, %struct.socket** %11, align 8
  %73 = call i32 @SOCK_DOM(%struct.socket* %72)
  %74 = load i32, i32* @IPPROTO_TCP, align 4
  %75 = load i64, i64* @SOCK_STREAM, align 8
  %76 = call i8* @pffindproto(i32 %73, i32 %74, i64 %75)
  %77 = load %struct.socket*, %struct.socket** %11, align 8
  %78 = getelementptr inbounds %struct.socket, %struct.socket* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  br label %93

79:                                               ; preds = %43
  %80 = load %struct.socket*, %struct.socket** %11, align 8
  %81 = call i64 @SOCK_TYPE(%struct.socket* %80)
  %82 = load i64, i64* @SOCK_DGRAM, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.socket*, %struct.socket** %11, align 8
  %86 = call i32 @SOCK_DOM(%struct.socket* %85)
  %87 = load i32, i32* @IPPROTO_UDP, align 4
  %88 = load i64, i64* @SOCK_DGRAM, align 8
  %89 = call i8* @pffindproto(i32 %86, i32 %87, i64 %88)
  %90 = load %struct.socket*, %struct.socket** %11, align 8
  %91 = getelementptr inbounds %struct.socket, %struct.socket* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %84, %79
  br label %93

93:                                               ; preds = %92, %71
  %94 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %8, align 8
  %95 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %94, i32 0, i32 1
  store %struct.socket* null, %struct.socket** %95, align 8
  %96 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %97 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %96, i32 0, i32 0
  %98 = load %struct.ifnet*, %struct.ifnet** %97, align 8
  store %struct.ifnet* %98, %struct.ifnet** %9, align 8
  %99 = load %struct.socket*, %struct.socket** %11, align 8
  %100 = getelementptr inbounds %struct.socket, %struct.socket* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %93
  %105 = load %struct.socket*, %struct.socket** %11, align 8
  %106 = getelementptr inbounds %struct.socket, %struct.socket* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @MBUF_DONTWAIT, align 4
  %110 = call i32 @mbuf_dup(i32 %108, i32 %109, i32** %12)
  store i32 %110, i32* %7, align 4
  %111 = load %struct.socket*, %struct.socket** %11, align 8
  %112 = getelementptr inbounds %struct.socket, %struct.socket* %111, i32 0, i32 0
  %113 = call i32 @sbflush(%struct.TYPE_3__* %112)
  br label %114

114:                                              ; preds = %104, %93
  %115 = load %struct.socket*, %struct.socket** %11, align 8
  %116 = call i32 @socket_unlock(%struct.socket* %115, i32 0)
  %117 = load %struct.socket*, %struct.socket** %4, align 8
  %118 = call i32 @socket_lock(%struct.socket* %117, i32 0)
  %119 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %8, align 8
  %120 = load %struct.socket*, %struct.socket** %4, align 8
  %121 = getelementptr inbounds %struct.socket, %struct.socket* %120, i32 0, i32 1
  store %struct.flow_divert_pcb* %119, %struct.flow_divert_pcb** %121, align 8
  %122 = load %struct.socket*, %struct.socket** %4, align 8
  %123 = call %struct.inpcb* @sotoinpcb(%struct.socket* %122)
  store %struct.inpcb* %123, %struct.inpcb** %10, align 8
  %124 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %125 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %126 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %125, i32 0, i32 0
  store %struct.ifnet* %124, %struct.ifnet** %126, align 8
  %127 = load i32*, i32** %12, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %139

129:                                              ; preds = %114
  %130 = load %struct.socket*, %struct.socket** %4, align 8
  %131 = getelementptr inbounds %struct.socket, %struct.socket* %130, i32 0, i32 0
  %132 = load i32*, i32** %12, align 8
  %133 = call i64 @sbappendstream(%struct.TYPE_3__* %131, i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load %struct.socket*, %struct.socket** %4, align 8
  %137 = call i32 @sorwakeup(%struct.socket* %136)
  br label %138

138:                                              ; preds = %135, %129
  br label %139

139:                                              ; preds = %138, %114
  %140 = load %struct.socket*, %struct.socket** %4, align 8
  %141 = call i32 @flow_divert_set_protosw(%struct.socket* %140)
  %142 = load %struct.socket*, %struct.socket** %4, align 8
  %143 = call i32 @socket_unlock(%struct.socket* %142, i32 0)
  %144 = load %struct.socket*, %struct.socket** %4, align 8
  %145 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %8, align 8
  %146 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %145, i32 0, i32 1
  store %struct.socket* %144, %struct.socket** %146, align 8
  %147 = load i32, i32* @FLOW_DIVERT_TRANSFERRED, align 4
  %148 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %8, align 8
  %149 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  %152 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %8, align 8
  %153 = call i32 @FDUNLOCK(%struct.flow_divert_pcb* %152)
  br label %154

154:                                              ; preds = %139, %41
  %155 = load %struct.socket*, %struct.socket** %4, align 8
  %156 = call i32 @socket_lock(%struct.socket* %155, i32 0)
  %157 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %8, align 8
  %158 = icmp ne %struct.flow_divert_pcb* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %8, align 8
  %161 = call i32 @FDRELEASE(%struct.flow_divert_pcb* %160)
  br label %162

162:                                              ; preds = %159, %154
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @FDLOG(i32, i32*, i8*, i64) #1

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local %struct.flow_divert_pcb* @flow_divert_pcb_lookup(i64, %struct.flow_divert_group*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

declare dso_local i32 @FDLOCK(%struct.flow_divert_pcb*) #1

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @flow_divert_disconnect_socket(%struct.socket*) #1

declare dso_local i64 @SOCK_TYPE(%struct.socket*) #1

declare dso_local i8* @pffindproto(i32, i32, i64) #1

declare dso_local i32 @SOCK_DOM(%struct.socket*) #1

declare dso_local i32 @mbuf_dup(i32, i32, i32**) #1

declare dso_local i32 @sbflush(%struct.TYPE_3__*) #1

declare dso_local i64 @sbappendstream(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @sorwakeup(%struct.socket*) #1

declare dso_local i32 @flow_divert_set_protosw(%struct.socket*) #1

declare dso_local i32 @FDUNLOCK(%struct.flow_divert_pcb*) #1

declare dso_local i32 @FDRELEASE(%struct.flow_divert_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
