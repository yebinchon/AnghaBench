; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_handshake.c_netplay_handshake.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_handshake.c_netplay_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netplay_connection = type { i32 }

@NETPLAY_CONNECTION_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netplay_handshake(i32* %0, %struct.netplay_connection* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.netplay_connection*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.netplay_connection* %1, %struct.netplay_connection** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %10 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %38 [
    i32 133, label %12
    i32 130, label %17
    i32 129, label %22
    i32 131, label %27
    i32 128, label %32
    i32 132, label %37
  ]

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @netplay_handshake_init(i32* %13, %struct.netplay_connection* %14, i32* %15)
  store i32 %16, i32* %8, align 4
  br label %39

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @netplay_handshake_pre_nick(i32* %18, %struct.netplay_connection* %19, i32* %20)
  store i32 %21, i32* %8, align 4
  br label %39

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @netplay_handshake_pre_password(i32* %23, %struct.netplay_connection* %24, i32* %25)
  store i32 %26, i32* %8, align 4
  br label %39

27:                                               ; preds = %3
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @netplay_handshake_pre_info(i32* %28, %struct.netplay_connection* %29, i32* %30)
  store i32 %31, i32* %8, align 4
  br label %39

32:                                               ; preds = %3
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @netplay_handshake_pre_sync(i32* %33, %struct.netplay_connection* %34, i32* %35)
  store i32 %36, i32* %8, align 4
  br label %39

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %3, %37
  store i32 0, i32* %4, align 4
  br label %53

39:                                               ; preds = %32, %27, %22, %17, %12
  %40 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %41 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NETPLAY_CONNECTION_CONNECTED, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %48 = call i32 @netplay_send_cur_input(i32* %46, %struct.netplay_connection* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %53

51:                                               ; preds = %45, %39
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %50, %38
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @netplay_handshake_init(i32*, %struct.netplay_connection*, i32*) #1

declare dso_local i32 @netplay_handshake_pre_nick(i32*, %struct.netplay_connection*, i32*) #1

declare dso_local i32 @netplay_handshake_pre_password(i32*, %struct.netplay_connection*, i32*) #1

declare dso_local i32 @netplay_handshake_pre_info(i32*, %struct.netplay_connection*, i32*) #1

declare dso_local i32 @netplay_handshake_pre_sync(i32*, %struct.netplay_connection*, i32*) #1

declare dso_local i32 @netplay_send_cur_input(i32*, %struct.netplay_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
