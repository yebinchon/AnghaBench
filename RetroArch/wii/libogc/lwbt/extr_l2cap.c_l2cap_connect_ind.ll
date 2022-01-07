; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2cap_connect_ind.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2cap_connect_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_pcb = type { i32 }
%struct.bd_addr = type { i32 }
%struct.l2cap_pcb_listen = type { i32, i32, i32 (i8*, %struct.l2cap_pcb.0*, i32)*, i32, i32 }
%struct.l2cap_pcb.0 = type opaque

@l2cap_listenpcbs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"l2cap_connect_ind: Could not allocate memory for lpcb\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@L2CAP_LISTEN = common dso_local global i32 0, align 4
@l2cap_pcbs = common dso_local global i32 0, align 4
@l2cap_listen_pcbs = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2cap_connect_ind(%struct.l2cap_pcb* %0, %struct.bd_addr* %1, i32 %2, i32 (i8*, %struct.l2cap_pcb*, i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_pcb*, align 8
  %7 = alloca %struct.bd_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (i8*, %struct.l2cap_pcb*, i32)*, align 8
  %10 = alloca %struct.l2cap_pcb_listen*, align 8
  store %struct.l2cap_pcb* %0, %struct.l2cap_pcb** %6, align 8
  store %struct.bd_addr* %1, %struct.bd_addr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 (i8*, %struct.l2cap_pcb*, i32)* %3, i32 (i8*, %struct.l2cap_pcb*, i32)** %9, align 8
  %11 = call %struct.l2cap_pcb_listen* @btmemb_alloc(i32* @l2cap_listenpcbs)
  store %struct.l2cap_pcb_listen* %11, %struct.l2cap_pcb_listen** %10, align 8
  %12 = load %struct.l2cap_pcb_listen*, %struct.l2cap_pcb_listen** %10, align 8
  %13 = icmp eq %struct.l2cap_pcb_listen* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = call i32 @ERROR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ERR_MEM, align 4
  store i32 %16, i32* %5, align 4
  br label %42

17:                                               ; preds = %4
  %18 = load %struct.l2cap_pcb_listen*, %struct.l2cap_pcb_listen** %10, align 8
  %19 = getelementptr inbounds %struct.l2cap_pcb_listen, %struct.l2cap_pcb_listen* %18, i32 0, i32 4
  %20 = load %struct.bd_addr*, %struct.bd_addr** %7, align 8
  %21 = call i32 @bd_addr_set(i32* %19, %struct.bd_addr* %20)
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.l2cap_pcb_listen*, %struct.l2cap_pcb_listen** %10, align 8
  %24 = getelementptr inbounds %struct.l2cap_pcb_listen, %struct.l2cap_pcb_listen* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load i32 (i8*, %struct.l2cap_pcb*, i32)*, i32 (i8*, %struct.l2cap_pcb*, i32)** %9, align 8
  %26 = bitcast i32 (i8*, %struct.l2cap_pcb*, i32)* %25 to i32 (i8*, %struct.l2cap_pcb.0*, i32)*
  %27 = load %struct.l2cap_pcb_listen*, %struct.l2cap_pcb_listen** %10, align 8
  %28 = getelementptr inbounds %struct.l2cap_pcb_listen, %struct.l2cap_pcb_listen* %27, i32 0, i32 2
  store i32 (i8*, %struct.l2cap_pcb.0*, i32)* %26, i32 (i8*, %struct.l2cap_pcb.0*, i32)** %28, align 8
  %29 = load i32, i32* @L2CAP_LISTEN, align 4
  %30 = load %struct.l2cap_pcb_listen*, %struct.l2cap_pcb_listen** %10, align 8
  %31 = getelementptr inbounds %struct.l2cap_pcb_listen, %struct.l2cap_pcb_listen* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %6, align 8
  %33 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.l2cap_pcb_listen*, %struct.l2cap_pcb_listen** %10, align 8
  %36 = getelementptr inbounds %struct.l2cap_pcb_listen, %struct.l2cap_pcb_listen* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %6, align 8
  %38 = call i32 @btmemb_free(i32* @l2cap_pcbs, %struct.l2cap_pcb* %37)
  %39 = load %struct.l2cap_pcb_listen*, %struct.l2cap_pcb_listen** %10, align 8
  %40 = call i32 @L2CAP_REG(i32* @l2cap_listen_pcbs, %struct.l2cap_pcb_listen* %39)
  %41 = load i32, i32* @ERR_OK, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %17, %14
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.l2cap_pcb_listen* @btmemb_alloc(i32*) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local i32 @bd_addr_set(i32*, %struct.bd_addr*) #1

declare dso_local i32 @btmemb_free(i32*, %struct.l2cap_pcb*) #1

declare dso_local i32 @L2CAP_REG(i32*, %struct.l2cap_pcb_listen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
