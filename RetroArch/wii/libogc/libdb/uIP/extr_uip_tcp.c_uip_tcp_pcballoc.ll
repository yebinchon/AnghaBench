; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_pcballoc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_pcballoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_tcp_pcb = type { i32, i32, i32, i64, i32, i32, i64, i32, i8*, i8*, i8*, i8*, i8*, i64, i64, i32, i32, i64, i32, i64, i32, i32 }

@uip_tcp_pcbs = common dso_local global i32 0, align 4
@UIP_TCP_PRIO_NORMAL = common dso_local global i32 0, align 4
@UIP_TCP_SND_BUF = common dso_local global i32 0, align 4
@UIP_TCP_WND = common dso_local global i32 0, align 4
@UIP_TCP_TTL = common dso_local global i32 0, align 4
@UIP_TCP_MSS = common dso_local global i32 0, align 4
@UIP_TCP_SLOW_INTERVAL = common dso_local global i32 0, align 4
@uip_tcp_ticks = common dso_local global i32 0, align 4
@uip_tcp_nullrecv = common dso_local global i32 0, align 4
@UIP_TCP_KEEPDEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uip_tcp_pcb* @uip_tcp_pcballoc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.uip_tcp_pcb*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.uip_tcp_pcb* null, %struct.uip_tcp_pcb** %4, align 8
  %5 = call %struct.uip_tcp_pcb* @memb_alloc(i32* @uip_tcp_pcbs)
  store %struct.uip_tcp_pcb* %5, %struct.uip_tcp_pcb** %4, align 8
  %6 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %7 = icmp ne %struct.uip_tcp_pcb* %6, null
  br i1 %7, label %8, label %73

8:                                                ; preds = %1
  %9 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %10 = call i32 @UIP_MEMSET(%struct.uip_tcp_pcb* %9, i32 0, i32 144)
  %11 = load i32, i32* @UIP_TCP_PRIO_NORMAL, align 4
  %12 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %13 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %12, i32 0, i32 21
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @UIP_TCP_SND_BUF, align 4
  %15 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %16 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %15, i32 0, i32 20
  store i32 %14, i32* %16, align 8
  %17 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %18 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %17, i32 0, i32 19
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @UIP_TCP_WND, align 4
  %20 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %21 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %20, i32 0, i32 18
  store i32 %19, i32* %21, align 8
  %22 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %23 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %22, i32 0, i32 17
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @UIP_TCP_TTL, align 4
  %25 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %26 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %25, i32 0, i32 16
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @UIP_TCP_MSS, align 4
  %28 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %29 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %28, i32 0, i32 15
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @UIP_TCP_SLOW_INTERVAL, align 4
  %31 = sdiv i32 3000, %30
  %32 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %33 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %35 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %34, i32 0, i32 14
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @UIP_TCP_SLOW_INTERVAL, align 4
  %37 = sdiv i32 3000, %36
  %38 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %39 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %41 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %40, i32 0, i32 13
  store i64 0, i64* %41, align 8
  %42 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %43 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %42, i32 0, i32 2
  store i32 1, i32* %43, align 8
  %44 = call i8* (...) @uip_tcpiss_next()
  store i8* %44, i8** %3, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %47 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %46, i32 0, i32 12
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %50 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %49, i32 0, i32 11
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %53 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %52, i32 0, i32 10
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %56 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %55, i32 0, i32 9
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %59 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %58, i32 0, i32 8
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @uip_tcp_ticks, align 4
  %61 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %62 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 8
  %63 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %64 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %63, i32 0, i32 6
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* @uip_tcp_nullrecv, align 4
  %66 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %67 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @UIP_TCP_KEEPDEFAULT, align 4
  %69 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %70 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %72 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %8, %1
  %74 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  ret %struct.uip_tcp_pcb* %74
}

declare dso_local %struct.uip_tcp_pcb* @memb_alloc(i32*) #1

declare dso_local i32 @UIP_MEMSET(%struct.uip_tcp_pcb*, i32, i32) #1

declare dso_local i8* @uip_tcpiss_next(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
