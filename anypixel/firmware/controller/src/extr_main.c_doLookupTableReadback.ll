; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_doLookupTableReadback.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_doLookupTableReadback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i64 }

@global_row = common dso_local global i64 0, align 8
@POWER_ROW = common dso_local global i64 0, align 8
@PBUF_TRANSPORT = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@USART_NW = common dso_local global i32 0, align 4
@PANEL_NW = common dso_local global i32 0, align 4
@USART_NE = common dso_local global i32 0, align 4
@PANEL_NE = common dso_local global i32 0, align 4
@USART_SW = common dso_local global i32 0, align 4
@PANEL_SW = common dso_local global i32 0, align 4
@USART_SE = common dso_local global i32 0, align 4
@PANEL_SE = common dso_local global i32 0, align 4
@global_pcb = common dso_local global i32 0, align 4
@udp_dest = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i64 0, align 8
@LocalTime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @doLookupTableReadback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doLookupTableReadback() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pbuf*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* @global_row, align 8
  %7 = load i64, i64* @POWER_ROW, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %97

10:                                               ; preds = %0
  %11 = load i32, i32* @PBUF_TRANSPORT, align 4
  %12 = load i32, i32* @PBUF_RAM, align 4
  %13 = call %struct.pbuf* @pbuf_alloc(i32 %11, i32 886, i32 %12)
  store %struct.pbuf* %13, %struct.pbuf** %4, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %91, %10
  store i32 0, i32* %5, align 4
  %15 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %16 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @USART_NW, align 4
  %21 = load i32, i32* @PANEL_NW, align 4
  %22 = call i32 @lookupTableReadbackHelper(i32* %3, i64 %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %26 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 4
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* @USART_NE, align 4
  %31 = load i32, i32* @PANEL_NE, align 4
  %32 = call i32 @lookupTableReadbackHelper(i32* %3, i64 %28, i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %36 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 4
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @USART_SW, align 4
  %41 = load i32, i32* @PANEL_SW, align 4
  %42 = call i32 @lookupTableReadbackHelper(i32* %3, i64 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %46 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 4
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* @USART_SE, align 4
  %51 = load i32, i32* @PANEL_SE, align 4
  %52 = call i32 @lookupTableReadbackHelper(i32* %3, i64 %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %14
  %58 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %59 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 35, i32* %62, align 4
  %63 = load i32, i32* %1, align 4
  %64 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %65 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i32*
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %63, i32* %68, align 4
  %69 = load i32, i32* @global_pcb, align 4
  %70 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %71 = call i64 @udp_sendto(i32 %69, %struct.pbuf* %70, i32* @udp_dest, i32 27482)
  %72 = load i64, i64* @ERR_OK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %57
  %75 = call i32 @Delay(i32 100)
  %76 = load i32, i32* @LocalTime, align 4
  %77 = call i32 @LwIP_Periodic_Handle(i32 %76)
  br label %91

78:                                               ; preds = %57
  %79 = call i32 @Delay(i32 20)
  %80 = load i32, i32* @LocalTime, align 4
  %81 = call i32 @LwIP_Periodic_Handle(i32 %80)
  %82 = load i32, i32* %1, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %90

84:                                               ; preds = %14
  %85 = load i32, i32* %2, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %2, align 4
  %87 = icmp sgt i32 %85, 4
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %94

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %78
  br label %91

91:                                               ; preds = %90, %74
  %92 = load i32, i32* %1, align 4
  %93 = icmp slt i32 %92, 65
  br i1 %93, label %14, label %94

94:                                               ; preds = %91, %88
  %95 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %96 = call i32 @pbuf_free(%struct.pbuf* %95)
  br label %97

97:                                               ; preds = %94, %9
  ret void
}

declare dso_local %struct.pbuf* @pbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @lookupTableReadbackHelper(i32*, i64, i32, i32, i32) #1

declare dso_local i64 @udp_sendto(i32, %struct.pbuf*, i32*, i32) #1

declare dso_local i32 @Delay(i32) #1

declare dso_local i32 @LwIP_Periodic_Handle(i32) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
