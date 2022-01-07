; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/api/extr_tcpip.c_tcpip_thread.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/api/extr_tcpip.c_tcpip_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpip_msg = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i32, i32 (i32)* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 (i32*)* }
%struct.TYPE_10__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 (i32*)* }

@tcpip_init_done_arg = common dso_local global i32 0, align 4
@mbox = common dso_local global i32 0, align 4
@TCPIP_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"tcpip_thread: PACKET %p\0A\00", align 1
@MEMP_TCPIP_MSG_INPKT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"tcpip_thread: CALLBACK %p\0A\00", align 1
@MEMP_TCPIP_MSG_API = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"tcpip_thread: CALLBACK_STATIC %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"tcpip_thread: invalid message: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"tcpip_thread: invalid message\00", align 1
@NETIF_FLAG_ETHARP = common dso_local global i32 0, align 4
@NETIF_FLAG_ETHERNET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tcpip_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpip_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tcpip_msg*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @LWIP_UNUSED_ARG(i8* %4)
  %6 = load i32, i32* @tcpip_init_done_arg, align 4
  %7 = call i32 @tcpip_init_done(i32 %6)
  %8 = call i32 (...) @LOCK_TCPIP_CORE()
  br label %9

9:                                                ; preds = %1, %81
  %10 = call i32 (...) @UNLOCK_TCPIP_CORE()
  %11 = call i32 (...) @LWIP_TCPIP_THREAD_ALIVE()
  %12 = bitcast %struct.tcpip_msg** %3 to i8**
  %13 = call i32 @sys_timeouts_mbox_fetch(i32* @mbox, i8** %12)
  %14 = call i32 (...) @LOCK_TCPIP_CORE()
  %15 = load %struct.tcpip_msg*, %struct.tcpip_msg** %3, align 8
  %16 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %72 [
    i32 131, label %18
    i32 133, label %37
    i32 132, label %56
  ]

18:                                               ; preds = %9
  %19 = load i32, i32* @TCPIP_DEBUG, align 4
  %20 = load %struct.tcpip_msg*, %struct.tcpip_msg** %3, align 8
  %21 = bitcast %struct.tcpip_msg* %20 to i8*
  %22 = call i32 @LWIP_DEBUGF(i32 %19, i8* %21)
  %23 = load %struct.tcpip_msg*, %struct.tcpip_msg** %3, align 8
  %24 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.tcpip_msg*, %struct.tcpip_msg** %3, align 8
  %29 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = call i32 @ip_input(i32 %27, %struct.TYPE_15__* %32)
  %34 = load i32, i32* @MEMP_TCPIP_MSG_INPKT, align 4
  %35 = load %struct.tcpip_msg*, %struct.tcpip_msg** %3, align 8
  %36 = call i32 @memp_free(i32 %34, %struct.tcpip_msg* %35)
  br label %81

37:                                               ; preds = %9
  %38 = load i32, i32* @TCPIP_DEBUG, align 4
  %39 = load %struct.tcpip_msg*, %struct.tcpip_msg** %3, align 8
  %40 = bitcast %struct.tcpip_msg* %39 to i8*
  %41 = call i32 @LWIP_DEBUGF(i32 %38, i8* %40)
  %42 = load %struct.tcpip_msg*, %struct.tcpip_msg** %3, align 8
  %43 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i32 (i32)*, i32 (i32)** %45, align 8
  %47 = load %struct.tcpip_msg*, %struct.tcpip_msg** %3, align 8
  %48 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 %46(i32 %51)
  %53 = load i32, i32* @MEMP_TCPIP_MSG_API, align 4
  %54 = load %struct.tcpip_msg*, %struct.tcpip_msg** %3, align 8
  %55 = call i32 @memp_free(i32 %53, %struct.tcpip_msg* %54)
  br label %81

56:                                               ; preds = %9
  %57 = load i32, i32* @TCPIP_DEBUG, align 4
  %58 = load %struct.tcpip_msg*, %struct.tcpip_msg** %3, align 8
  %59 = bitcast %struct.tcpip_msg* %58 to i8*
  %60 = call i32 @LWIP_DEBUGF(i32 %57, i8* %59)
  %61 = load %struct.tcpip_msg*, %struct.tcpip_msg** %3, align 8
  %62 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i32 (i32)*, i32 (i32)** %64, align 8
  %66 = load %struct.tcpip_msg*, %struct.tcpip_msg** %3, align 8
  %67 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 %65(i32 %70)
  br label %81

72:                                               ; preds = %9
  %73 = load i32, i32* @TCPIP_DEBUG, align 4
  %74 = load %struct.tcpip_msg*, %struct.tcpip_msg** %3, align 8
  %75 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 @LWIP_DEBUGF(i32 %73, i8* %78)
  %80 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %81

81:                                               ; preds = %72, %56, %37, %18
  br label %9
}

declare dso_local i32 @LWIP_UNUSED_ARG(i8*) #1

declare dso_local i32 @tcpip_init_done(i32) #1

declare dso_local i32 @LOCK_TCPIP_CORE(...) #1

declare dso_local i32 @UNLOCK_TCPIP_CORE(...) #1

declare dso_local i32 @LWIP_TCPIP_THREAD_ALIVE(...) #1

declare dso_local i32 @sys_timeouts_mbox_fetch(i32*, i8**) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @ip_input(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @memp_free(i32, %struct.tcpip_msg*) #1

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
