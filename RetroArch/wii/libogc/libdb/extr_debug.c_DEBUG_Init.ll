; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug.c_DEBUG_Init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug.c_DEBUG_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_ip_addr = type { i8* }

@.str = private unnamed_addr constant [14 x i8] c"DEBUG_Init()\0A\00", align 1
@GDBSTUB_DEVICE_USB = common dso_local global i64 0, align 8
@current_device = common dso_local global i32* null, align 8
@tcp_localip = common dso_local global i64 0, align 8
@tcp_netmask = common dso_local global i64 0, align 8
@tcp_gateway = common dso_local global i64 0, align 8
@EX_DSI = common dso_local global i32 0, align 4
@dbg_exceptionhandler = common dso_local global i32 0, align 4
@EX_PRG = common dso_local global i32 0, align 4
@EX_TRACE = common dso_local global i32 0, align 4
@EX_IABR = common dso_local global i32 0, align 4
@dbg_initialized = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DEBUG_Init(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uip_ip_addr, align 8
  %7 = alloca %struct.uip_ip_addr, align 8
  %8 = alloca %struct.uip_ip_addr, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = call i32 @UIP_LOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (...) @__lwp_thread_dispatchdisable()
  %11 = call i32 (...) @bp_init()
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @GDBSTUB_DEVICE_USB, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = call i32* @usb_init(i64 %16)
  store i32* %17, i32** @current_device, align 8
  br label %34

18:                                               ; preds = %2
  %19 = load i64, i64* @tcp_localip, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = call i8* @uip_ipaddr(i32* %20)
  %22 = getelementptr inbounds %struct.uip_ip_addr, %struct.uip_ip_addr* %6, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load i64, i64* @tcp_netmask, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = call i8* @uip_ipaddr(i32* %24)
  %26 = getelementptr inbounds %struct.uip_ip_addr, %struct.uip_ip_addr* %7, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = load i64, i64* @tcp_gateway, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = call i8* @uip_ipaddr(i32* %28)
  %30 = getelementptr inbounds %struct.uip_ip_addr, %struct.uip_ip_addr* %8, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  %31 = load i64, i64* %4, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32* @tcpip_init(%struct.uip_ip_addr* %6, %struct.uip_ip_addr* %7, %struct.uip_ip_addr* %8, i32 %32)
  store i32* %33, i32** @current_device, align 8
  br label %34

34:                                               ; preds = %18, %15
  %35 = load i32*, i32** @current_device, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @_CPU_ISR_Disable(i32 %38)
  %40 = load i32, i32* @EX_DSI, align 4
  %41 = load i32, i32* @dbg_exceptionhandler, align 4
  %42 = call i32 @__exception_sethandler(i32 %40, i32 %41)
  %43 = load i32, i32* @EX_PRG, align 4
  %44 = load i32, i32* @dbg_exceptionhandler, align 4
  %45 = call i32 @__exception_sethandler(i32 %43, i32 %44)
  %46 = load i32, i32* @EX_TRACE, align 4
  %47 = load i32, i32* @dbg_exceptionhandler, align 4
  %48 = call i32 @__exception_sethandler(i32 %46, i32 %47)
  %49 = load i32, i32* @EX_IABR, align 4
  %50 = load i32, i32* @dbg_exceptionhandler, align 4
  %51 = call i32 @__exception_sethandler(i32 %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @_CPU_ISR_Restore(i32 %52)
  store i32 1, i32* @dbg_initialized, align 4
  br label %54

54:                                               ; preds = %37, %34
  %55 = call i32 (...) @__lwp_thread_dispatchenable()
  ret void
}

declare dso_local i32 @UIP_LOG(i8*) #1

declare dso_local i32 @__lwp_thread_dispatchdisable(...) #1

declare dso_local i32 @bp_init(...) #1

declare dso_local i32* @usb_init(i64) #1

declare dso_local i8* @uip_ipaddr(i32*) #1

declare dso_local i32* @tcpip_init(%struct.uip_ip_addr*, %struct.uip_ip_addr*, %struct.uip_ip_addr*, i32) #1

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @__exception_sethandler(i32, i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @__lwp_thread_dispatchenable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
