; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_close.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsocket = type { i32*, i64, i32* }

@SOCKETS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"net_close(%d)\0A\00", align 1
@netsocket_sem = common dso_local global i32 0, align 4
@ENOTSOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_close(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.netsocket*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @SOCKETS_DEBUG, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i8*
  %9 = call i32 @LWIP_DEBUGF(i32 %5, i8* %8)
  %10 = load i32, i32* @netsocket_sem, align 4
  %11 = call i32 @LWP_SemWait(i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.netsocket* @get_socket(i32 %12)
  store %struct.netsocket* %13, %struct.netsocket** %4, align 8
  %14 = load %struct.netsocket*, %struct.netsocket** %4, align 8
  %15 = icmp ne %struct.netsocket* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @netsocket_sem, align 4
  %18 = call i32 @LWP_SemPost(i32 %17)
  %19 = load i32, i32* @ENOTSOCK, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %44

21:                                               ; preds = %1
  %22 = load %struct.netsocket*, %struct.netsocket** %4, align 8
  %23 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @netconn_delete(i32* %24)
  %26 = load %struct.netsocket*, %struct.netsocket** %4, align 8
  %27 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.netsocket*, %struct.netsocket** %4, align 8
  %32 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @netbuf_delete(i32* %33)
  br label %35

35:                                               ; preds = %30, %21
  %36 = load %struct.netsocket*, %struct.netsocket** %4, align 8
  %37 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load %struct.netsocket*, %struct.netsocket** %4, align 8
  %39 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.netsocket*, %struct.netsocket** %4, align 8
  %41 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* @netsocket_sem, align 4
  %43 = call i32 @LWP_SemPost(i32 %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %35, %16
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @LWP_SemWait(i32) #1

declare dso_local %struct.netsocket* @get_socket(i32) #1

declare dso_local i32 @LWP_SemPost(i32) #1

declare dso_local i32 @netconn_delete(i32*) #1

declare dso_local i32 @netbuf_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
