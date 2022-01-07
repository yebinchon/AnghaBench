; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_bind.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.uip_tcp_pcb = type { i64, %struct.uip_ip_addr, %struct.uip_tcp_pcb* }
%struct.uip_ip_addr = type { i32 }

@uip_tcp_listen_pcbs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@UIP_ERR_USE = common dso_local global i32 0, align 4
@uip_tcp_active_pcbs = common dso_local global %struct.uip_tcp_pcb* null, align 8
@UIP_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uip_tcp_bind(%struct.uip_tcp_pcb* %0, %struct.uip_ip_addr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uip_tcp_pcb*, align 8
  %6 = alloca %struct.uip_ip_addr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.uip_tcp_pcb*, align 8
  store %struct.uip_tcp_pcb* %0, %struct.uip_tcp_pcb** %5, align 8
  store %struct.uip_ip_addr* %1, %struct.uip_ip_addr** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i64 (...) @uip_tcp_newport()
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uip_tcp_listen_pcbs, i32 0, i32 0), align 8
  %15 = inttoptr i64 %14 to %struct.uip_tcp_pcb*
  store %struct.uip_tcp_pcb* %15, %struct.uip_tcp_pcb** %8, align 8
  br label %16

16:                                               ; preds = %44, %13
  %17 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %8, align 8
  %18 = icmp ne %struct.uip_tcp_pcb* %17, null
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  %20 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %8, align 8
  %21 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %19
  %26 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %8, align 8
  %27 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %26, i32 0, i32 1
  %28 = call i64 @ip_addr_isany(%struct.uip_ip_addr* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %6, align 8
  %32 = call i64 @ip_addr_isany(%struct.uip_ip_addr* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %8, align 8
  %36 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %35, i32 0, i32 1
  %37 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %6, align 8
  %38 = call i64 @ip_addr_cmp(%struct.uip_ip_addr* %36, %struct.uip_ip_addr* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %30, %25
  %41 = load i32, i32* @UIP_ERR_USE, align 4
  store i32 %41, i32* %4, align 4
  br label %97

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %19
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %8, align 8
  %46 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %45, i32 0, i32 2
  %47 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %46, align 8
  store %struct.uip_tcp_pcb* %47, %struct.uip_tcp_pcb** %8, align 8
  br label %16

48:                                               ; preds = %16
  %49 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** @uip_tcp_active_pcbs, align 8
  store %struct.uip_tcp_pcb* %49, %struct.uip_tcp_pcb** %8, align 8
  br label %50

50:                                               ; preds = %78, %48
  %51 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %8, align 8
  %52 = icmp ne %struct.uip_tcp_pcb* %51, null
  br i1 %52, label %53, label %82

53:                                               ; preds = %50
  %54 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %8, align 8
  %55 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %53
  %60 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %8, align 8
  %61 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %60, i32 0, i32 1
  %62 = call i64 @ip_addr_isany(%struct.uip_ip_addr* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %59
  %65 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %6, align 8
  %66 = call i64 @ip_addr_isany(%struct.uip_ip_addr* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %8, align 8
  %70 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %69, i32 0, i32 1
  %71 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %6, align 8
  %72 = call i64 @ip_addr_cmp(%struct.uip_ip_addr* %70, %struct.uip_ip_addr* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68, %64, %59
  %75 = load i32, i32* @UIP_ERR_USE, align 4
  store i32 %75, i32* %4, align 4
  br label %97

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %53
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %8, align 8
  %80 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %79, i32 0, i32 2
  %81 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %80, align 8
  store %struct.uip_tcp_pcb* %81, %struct.uip_tcp_pcb** %8, align 8
  br label %50

82:                                               ; preds = %50
  %83 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %6, align 8
  %84 = call i64 @ip_addr_isany(%struct.uip_ip_addr* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %82
  %87 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %5, align 8
  %88 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %87, i32 0, i32 1
  %89 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %6, align 8
  %90 = bitcast %struct.uip_ip_addr* %88 to i8*
  %91 = bitcast %struct.uip_ip_addr* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 4 %91, i64 4, i1 false)
  br label %92

92:                                               ; preds = %86, %82
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %5, align 8
  %95 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* @UIP_ERR_OK, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %92, %74, %40
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i64 @uip_tcp_newport(...) #1

declare dso_local i64 @ip_addr_isany(%struct.uip_ip_addr*) #1

declare dso_local i64 @ip_addr_cmp(%struct.uip_ip_addr*, %struct.uip_ip_addr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
