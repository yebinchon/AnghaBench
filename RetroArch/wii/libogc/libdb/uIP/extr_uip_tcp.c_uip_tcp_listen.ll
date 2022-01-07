; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_listen.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.uip_tcp_pcb = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.uip_tcp_pcb_listen = type { i32, i32, i32, i32, i32, i64, i32, i32 }

@UIP_LISTEN = common dso_local global i64 0, align 8
@uip_listen_tcp_pcbs = common dso_local global i32 0, align 4
@UIP_SOF_ACCEPTCONN = common dso_local global i32 0, align 4
@uip_tcp_pcbs = common dso_local global i32 0, align 4
@uip_tcp_nullaccept = common dso_local global i32 0, align 4
@uip_tcp_listen_pcbs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uip_tcp_pcb* @uip_tcp_listen(%struct.uip_tcp_pcb* %0) #0 {
  %2 = alloca %struct.uip_tcp_pcb*, align 8
  %3 = alloca %struct.uip_tcp_pcb*, align 8
  %4 = alloca %struct.uip_tcp_pcb_listen*, align 8
  store %struct.uip_tcp_pcb* %0, %struct.uip_tcp_pcb** %3, align 8
  %5 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %6 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @UIP_LISTEN, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  store %struct.uip_tcp_pcb* %11, %struct.uip_tcp_pcb** %2, align 8
  br label %65

12:                                               ; preds = %1
  %13 = call %struct.uip_tcp_pcb_listen* @memb_alloc(i32* @uip_listen_tcp_pcbs)
  store %struct.uip_tcp_pcb_listen* %13, %struct.uip_tcp_pcb_listen** %4, align 8
  %14 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %4, align 8
  %15 = icmp eq %struct.uip_tcp_pcb_listen* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store %struct.uip_tcp_pcb* null, %struct.uip_tcp_pcb** %2, align 8
  br label %65

17:                                               ; preds = %12
  %18 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %19 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %4, align 8
  %22 = getelementptr inbounds %struct.uip_tcp_pcb_listen, %struct.uip_tcp_pcb_listen* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %24 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %4, align 8
  %27 = getelementptr inbounds %struct.uip_tcp_pcb_listen, %struct.uip_tcp_pcb_listen* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load i64, i64* @UIP_LISTEN, align 8
  %29 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %4, align 8
  %30 = getelementptr inbounds %struct.uip_tcp_pcb_listen, %struct.uip_tcp_pcb_listen* %29, i32 0, i32 5
  store i64 %28, i64* %30, align 8
  %31 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %32 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %4, align 8
  %35 = getelementptr inbounds %struct.uip_tcp_pcb_listen, %struct.uip_tcp_pcb_listen* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @UIP_SOF_ACCEPTCONN, align 4
  %37 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %4, align 8
  %38 = getelementptr inbounds %struct.uip_tcp_pcb_listen, %struct.uip_tcp_pcb_listen* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %42 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %4, align 8
  %45 = getelementptr inbounds %struct.uip_tcp_pcb_listen, %struct.uip_tcp_pcb_listen* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %47 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %4, align 8
  %50 = getelementptr inbounds %struct.uip_tcp_pcb_listen, %struct.uip_tcp_pcb_listen* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %4, align 8
  %52 = getelementptr inbounds %struct.uip_tcp_pcb_listen, %struct.uip_tcp_pcb_listen* %51, i32 0, i32 1
  %53 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %54 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %53, i32 0, i32 1
  %55 = call i32 @ip_addr_set(i32* %52, i32* %54)
  %56 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %57 = call i32 @memb_free(i32* @uip_tcp_pcbs, %struct.uip_tcp_pcb* %56)
  %58 = load i32, i32* @uip_tcp_nullaccept, align 4
  %59 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %4, align 8
  %60 = getelementptr inbounds %struct.uip_tcp_pcb_listen, %struct.uip_tcp_pcb_listen* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %4, align 8
  %62 = call i32 @UIP_TCP_REG(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uip_tcp_listen_pcbs, i32 0, i32 0), %struct.uip_tcp_pcb_listen* %61)
  %63 = load %struct.uip_tcp_pcb_listen*, %struct.uip_tcp_pcb_listen** %4, align 8
  %64 = bitcast %struct.uip_tcp_pcb_listen* %63 to %struct.uip_tcp_pcb*
  store %struct.uip_tcp_pcb* %64, %struct.uip_tcp_pcb** %2, align 8
  br label %65

65:                                               ; preds = %17, %16, %10
  %66 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  ret %struct.uip_tcp_pcb* %66
}

declare dso_local %struct.uip_tcp_pcb_listen* @memb_alloc(i32*) #1

declare dso_local i32 @ip_addr_set(i32*, i32*) #1

declare dso_local i32 @memb_free(i32*, %struct.uip_tcp_pcb*) #1

declare dso_local i32 @UIP_TCP_REG(i32*, %struct.uip_tcp_pcb_listen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
