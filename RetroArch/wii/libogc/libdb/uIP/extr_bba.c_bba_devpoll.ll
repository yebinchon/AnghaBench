; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c_bba_devpoll.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c_bba_devpoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"bba_devpoll()\0A\00", align 1
@bba_arp_tmr = common dso_local global i8* null, align 8
@UIP_ARP_TMRINTERVAL = common dso_local global i64 0, align 8
@EXI_CHANNEL_0 = common dso_local global i32 0, align 4
@EXI_DEVICE_2 = common dso_local global i32 0, align 4
@BBA_CMD_IRMASKALL = common dso_local global i32 0, align 4
@BBA_CMD_IRMASKNONE = common dso_local global i32 0, align 4
@bba_netif = common dso_local global i32 0, align 4
@bba_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @bba_devpoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bba_devpoll(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = call i32 @UIP_LOG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %8 = call i8* (...) @gettime()
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** @bba_arp_tmr, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @diff_msec(i8* %9, i8* %10)
  %12 = load i64, i64* @UIP_ARP_TMRINTERVAL, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = call i32 (...) @uip_arp_timer()
  %16 = call i8* (...) @gettime()
  store i8* %16, i8** @bba_arp_tmr, align 8
  br label %17

17:                                               ; preds = %14, %1
  store i32 0, i32* %3, align 4
  %18 = load i32*, i32** %2, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* @EXI_CHANNEL_0, align 4
  %20 = load i32, i32* @EXI_DEVICE_2, align 4
  %21 = call i32 @EXI_Lock(i32 %19, i32 %20, i32* null)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %128

23:                                               ; preds = %17
  %24 = call i32 @bba_cmd_in8(i32 3)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %125

27:                                               ; preds = %23
  %28 = load i32, i32* @BBA_CMD_IRMASKALL, align 4
  %29 = call i32 @bba_cmd_out8(i32 2, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, 128
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load i32, i32* %3, align 4
  %35 = shl i32 %34, 8
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @bba_interrupt(i32* %39)
  %41 = call i32 @bba_cmd_out8(i32 3, i32 128)
  %42 = load i32, i32* @BBA_CMD_IRMASKNONE, align 4
  %43 = call i32 @bba_cmd_out8(i32 2, i32 %42)
  %44 = load i32, i32* @EXI_CHANNEL_0, align 4
  %45 = call i32 @EXI_Unlock(i32 %44)
  br label %128

46:                                               ; preds = %27
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, 64
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i32, i32* %3, align 4
  %52 = shl i32 %51, 8
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @bba_netif, align 4
  %57 = call i32 @__bba_init(i32 %56)
  %58 = call i32 @bba_cmd_out8(i32 3, i32 64)
  %59 = load i32, i32* @BBA_CMD_IRMASKNONE, align 4
  %60 = call i32 @bba_cmd_out8(i32 2, i32 %59)
  %61 = load i32, i32* @EXI_CHANNEL_0, align 4
  %62 = call i32 @EXI_Unlock(i32 %61)
  br label %128

63:                                               ; preds = %46
  %64 = load i32, i32* %3, align 4
  %65 = and i32 %64, 32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load i32, i32* %3, align 4
  %69 = shl i32 %68, 8
  %70 = load i32*, i32** %2, align 8
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 4
  %73 = call i32 @bba_cmd_out8(i32 3, i32 32)
  %74 = load i32, i32* @BBA_CMD_IRMASKNONE, align 4
  %75 = call i32 @bba_cmd_out8(i32 2, i32 %74)
  %76 = load i32, i32* @EXI_CHANNEL_0, align 4
  %77 = call i32 @EXI_Unlock(i32 %76)
  br label %128

78:                                               ; preds = %63
  %79 = load i32, i32* %3, align 4
  %80 = and i32 %79, 16
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = load i32, i32* %3, align 4
  %84 = shl i32 %83, 8
  %85 = load i32*, i32** %2, align 8
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bba_device, i32 0, i32 0), align 4
  %89 = call i32 @bba_cmd_out8(i32 5, i32 %88)
  %90 = call i32 @bba_cmd_ins(i32 8, i32* %6, i32 4)
  %91 = load i32, i32* @bba_netif, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @bba_calc_response(i32 %91, i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = call i32 @bba_cmd_outs(i32 9, i32* %5, i32 4)
  %95 = call i32 @bba_cmd_out8(i32 3, i32 16)
  %96 = load i32, i32* @BBA_CMD_IRMASKNONE, align 4
  %97 = call i32 @bba_cmd_out8(i32 2, i32 %96)
  %98 = load i32, i32* @EXI_CHANNEL_0, align 4
  %99 = call i32 @EXI_Unlock(i32 %98)
  br label %128

100:                                              ; preds = %78
  %101 = load i32, i32* %3, align 4
  %102 = and i32 %101, 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %100
  %105 = load i32, i32* %3, align 4
  %106 = shl i32 %105, 8
  %107 = load i32*, i32** %2, align 8
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %106
  store i32 %109, i32* %107, align 4
  %110 = call i32 @bba_cmd_out8(i32 3, i32 8)
  %111 = load i32, i32* @BBA_CMD_IRMASKNONE, align 4
  %112 = call i32 @bba_cmd_out8(i32 2, i32 %111)
  %113 = load i32, i32* @EXI_CHANNEL_0, align 4
  %114 = call i32 @EXI_Unlock(i32 %113)
  br label %128

115:                                              ; preds = %100
  %116 = load i32, i32* %3, align 4
  %117 = shl i32 %116, 8
  %118 = load i32*, i32** %2, align 8
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %117
  store i32 %120, i32* %118, align 4
  %121 = load i32*, i32** %2, align 8
  %122 = call i32 @bba_interrupt(i32* %121)
  %123 = load i32, i32* @BBA_CMD_IRMASKNONE, align 4
  %124 = call i32 @bba_cmd_out8(i32 2, i32 %123)
  br label %125

125:                                              ; preds = %115, %23
  %126 = load i32, i32* @EXI_CHANNEL_0, align 4
  %127 = call i32 @EXI_Unlock(i32 %126)
  br label %128

128:                                              ; preds = %33, %50, %67, %82, %104, %125, %17
  ret void
}

declare dso_local i32 @UIP_LOG(i8*) #1

declare dso_local i8* @gettime(...) #1

declare dso_local i64 @diff_msec(i8*, i8*) #1

declare dso_local i32 @uip_arp_timer(...) #1

declare dso_local i32 @EXI_Lock(i32, i32, i32*) #1

declare dso_local i32 @bba_cmd_in8(i32) #1

declare dso_local i32 @bba_cmd_out8(i32, i32) #1

declare dso_local i32 @bba_interrupt(i32*) #1

declare dso_local i32 @EXI_Unlock(i32) #1

declare dso_local i32 @__bba_init(i32) #1

declare dso_local i32 @bba_cmd_ins(i32, i32*, i32) #1

declare dso_local i32 @bba_calc_response(i32, i32) #1

declare dso_local i32 @bba_cmd_outs(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
