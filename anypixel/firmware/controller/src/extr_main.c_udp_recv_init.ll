; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_udp_recv_init.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_udp_recv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global_pcb = common dso_local global i32* null, align 8
@UDP_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"udp_new failed!\0A\00", align 1
@IP_ADDR_ANY = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"udp_bind failed!\0A\00", align 1
@udp_process_recv_packet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udp_recv_init() #0 {
  %1 = call i32* (...) @udp_new()
  store i32* %1, i32** @global_pcb, align 8
  %2 = load i32*, i32** @global_pcb, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @UDP_DEBUG, align 4
  %6 = call i32 @LWIP_DEBUGF(i32 %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %20

7:                                                ; preds = %0
  %8 = load i32*, i32** @global_pcb, align 8
  %9 = load i32, i32* @IP_ADDR_ANY, align 4
  %10 = call i64 @udp_bind(i32* %8, i32 %9, i32 7)
  %11 = load i64, i64* @ERR_OK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* @UDP_DEBUG, align 4
  %15 = call i32 @LWIP_DEBUGF(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %20

16:                                               ; preds = %7
  %17 = load i32*, i32** @global_pcb, align 8
  %18 = load i32, i32* @udp_process_recv_packet, align 4
  %19 = call i32 @udp_recv(i32* %17, i32 %18, i32* null)
  br label %20

20:                                               ; preds = %16, %13, %4
  ret void
}

declare dso_local i32* @udp_new(...) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i64 @udp_bind(i32*, i32, i32) #1

declare dso_local i32 @udp_recv(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
