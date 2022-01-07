; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c_bba_event_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c_bba_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.bba_priv = type { i32 }

@gc_netif = common dso_local global %struct.TYPE_4__* null, align 8
@EXI_CHANNEL_0 = common dso_local global i32 0, align 4
@EXI_DEVICE_2 = common dso_local global i32 0, align 4
@NETIF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"bba_event_handler(exi locked)\0A\00", align 1
@BBA_CMD_IRMASKALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"bba_event_handler(status(%02x))\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"bba_event_handler(bba_interrupt(%02x))\0A\00", align 1
@BBA_CMD_IRMASKNONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"bba_event_handler(bba_reset(%02x))\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"bba_event_handler(unknown(%02x))\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"bba_event_handler(challange/response(%02x))\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"bba_event_handler(challange/response status(%02x))\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"GCIF - EXI - ?? %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @bba_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bba_event_handler(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bba_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gc_netif, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.bba_priv*
  store %struct.bba_priv* %13, %struct.bba_priv** %7, align 8
  %14 = load i32, i32* @EXI_CHANNEL_0, align 4
  %15 = load i32, i32* @EXI_DEVICE_2, align 4
  %16 = call i64 @EXI_Lock(i32 %14, i32 %15, i32 (i32, i32)* @bba_event_handler)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @NETIF_DEBUG, align 4
  %20 = or i32 %19, 1
  %21 = call i32 @LWIP_DEBUGF(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %128

22:                                               ; preds = %2
  %23 = call i32 @bba_cmd_in8(i32 3)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @BBA_CMD_IRMASKALL, align 4
  %25 = call i32 @bba_cmd_out8(i32 2, i32 %24)
  %26 = load i32, i32* @NETIF_DEBUG, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @LWIP_DEBUGF(i32 %26, i8* %29)
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 128
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %22
  %35 = load i32, i32* @NETIF_DEBUG, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @LWIP_DEBUGF(i32 %35, i8* %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gc_netif, align 8
  %41 = call i32 @bba_interrupt(%struct.TYPE_4__* %40)
  %42 = call i32 @bba_cmd_out8(i32 3, i32 128)
  %43 = load i32, i32* @BBA_CMD_IRMASKNONE, align 4
  %44 = call i32 @bba_cmd_out8(i32 2, i32 %43)
  %45 = load i32, i32* @EXI_CHANNEL_0, align 4
  %46 = call i32 @EXI_Unlock(i32 %45)
  store i32 1, i32* %3, align 4
  br label %128

47:                                               ; preds = %22
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 64
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @LWIP_ERROR(i8* %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gc_netif, align 8
  %57 = call i32 @__bba_init(%struct.TYPE_4__* %56)
  %58 = call i32 @bba_cmd_out8(i32 3, i32 64)
  %59 = load i32, i32* @BBA_CMD_IRMASKNONE, align 4
  %60 = call i32 @bba_cmd_out8(i32 2, i32 %59)
  %61 = load i32, i32* @EXI_CHANNEL_0, align 4
  %62 = call i32 @EXI_Unlock(i32 %61)
  store i32 1, i32* %3, align 4
  br label %128

63:                                               ; preds = %47
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load i32, i32* @NETIF_DEBUG, align 4
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @LWIP_DEBUGF(i32 %68, i8* %71)
  %73 = call i32 @bba_cmd_out8(i32 3, i32 32)
  %74 = load i32, i32* @BBA_CMD_IRMASKNONE, align 4
  %75 = call i32 @bba_cmd_out8(i32 2, i32 %74)
  %76 = load i32, i32* @EXI_CHANNEL_0, align 4
  %77 = call i32 @EXI_Unlock(i32 %76)
  store i32 1, i32* %3, align 4
  br label %128

78:                                               ; preds = %63
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, 16
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %78
  %83 = load i32, i32* @NETIF_DEBUG, align 4
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 @LWIP_DEBUGF(i32 %83, i8* %86)
  %88 = load %struct.bba_priv*, %struct.bba_priv** %7, align 8
  %89 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @bba_cmd_out8(i32 5, i32 %90)
  %92 = call i32 @bba_cmd_ins(i32 8, i32* %9, i32 4)
  %93 = load %struct.bba_priv*, %struct.bba_priv** %7, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @bba_calc_response(%struct.bba_priv* %93, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = call i32 @bba_cmd_outs(i32 9, i32* %8, i32 4)
  %97 = call i32 @bba_cmd_out8(i32 3, i32 16)
  %98 = load i32, i32* @BBA_CMD_IRMASKNONE, align 4
  %99 = call i32 @bba_cmd_out8(i32 2, i32 %98)
  %100 = load i32, i32* @EXI_CHANNEL_0, align 4
  %101 = call i32 @EXI_Unlock(i32 %100)
  store i32 1, i32* %3, align 4
  br label %128

102:                                              ; preds = %78
  %103 = load i32, i32* %6, align 4
  %104 = and i32 %103, 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %102
  %107 = load i32, i32* @NETIF_DEBUG, align 4
  %108 = call i32 @bba_cmd_in8(i32 11)
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 @LWIP_DEBUGF(i32 %107, i8* %110)
  %112 = call i32 @bba_cmd_out8(i32 3, i32 8)
  %113 = load i32, i32* @BBA_CMD_IRMASKNONE, align 4
  %114 = call i32 @bba_cmd_out8(i32 2, i32 %113)
  %115 = load i32, i32* @EXI_CHANNEL_0, align 4
  %116 = call i32 @EXI_Unlock(i32 %115)
  store i32 1, i32* %3, align 4
  br label %128

117:                                              ; preds = %102
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i8*
  %121 = call i32 @LWIP_ERROR(i8* %120)
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gc_netif, align 8
  %123 = call i32 @bba_interrupt(%struct.TYPE_4__* %122)
  %124 = load i32, i32* @BBA_CMD_IRMASKNONE, align 4
  %125 = call i32 @bba_cmd_out8(i32 2, i32 %124)
  %126 = load i32, i32* @EXI_CHANNEL_0, align 4
  %127 = call i32 @EXI_Unlock(i32 %126)
  store i32 1, i32* %3, align 4
  br label %128

128:                                              ; preds = %117, %106, %82, %67, %51, %34, %18
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i64 @EXI_Lock(i32, i32, i32 (i32, i32)*) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @bba_cmd_in8(i32) #1

declare dso_local i32 @bba_cmd_out8(i32, i32) #1

declare dso_local i32 @bba_interrupt(%struct.TYPE_4__*) #1

declare dso_local i32 @EXI_Unlock(i32) #1

declare dso_local i32 @LWIP_ERROR(i8*) #1

declare dso_local i32 @__bba_init(%struct.TYPE_4__*) #1

declare dso_local i32 @bba_cmd_ins(i32, i32*, i32) #1

declare dso_local i32 @bba_calc_response(%struct.bba_priv*, i32) #1

declare dso_local i32 @bba_cmd_outs(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
