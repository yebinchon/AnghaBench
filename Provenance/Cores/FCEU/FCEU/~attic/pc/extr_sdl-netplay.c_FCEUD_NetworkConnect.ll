; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-netplay.c_FCEUD_NetworkConnect.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-netplay.c_FCEUD_NetworkConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

@netplay = common dso_local global i32 0, align 4
@LocalPortUDP = common dso_local global i32 0, align 4
@LocalPortTCP = common dso_local global i32 0, align 4
@UDPSocket = common dso_local global i32 0, align 4
@Socket = common dso_local global i8* null, align 8
@magic = common dso_local global i32 0, align 4
@uport = common dso_local global i32 0, align 4
@RemotePortUDP = common dso_local global i8* null, align 8
@ServerHost = common dso_local global i32* null, align 8
@RemotePortTCP = common dso_local global i32 0, align 4
@set = common dso_local global i32 0, align 4
@TCPSocket = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FCEUD_NetworkConnect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [12 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [12 x i32], align 16
  %9 = call i32 (...) @SDLNet_Init()
  %10 = load i32, i32* @netplay, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %41

12:                                               ; preds = %0
  %13 = load i32, i32* @LocalPortUDP, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @LocalPortTCP, align 4
  %15 = call i32 @SDLNet_ResolveHost(%struct.TYPE_6__* %2, i32* null, i32 %14)
  %16 = call i32 @SDLNet_UDP_Open(i32* %4)
  store i32 %16, i32* @UDPSocket, align 4
  %17 = call i8* @SDLNet_TCP_Open(%struct.TYPE_6__* %2)
  store i8* %17, i8** %3, align 8
  %18 = call i8* @SDLNet_TCP_Accept(i8** %3)
  store i8* %18, i8** @Socket, align 8
  %19 = load i8*, i8** @Socket, align 8
  %20 = call i32 @SDLNet_TCP_GetPeerAddress(i8* %19)
  %21 = call i32 @memcpy(%struct.TYPE_6__* %2, i32 %20, i32 8)
  store i32 1, i32* %6, align 4
  %22 = call i32 (...) @SDL_GetTicks()
  store i32 %22, i32* @magic, align 4
  %23 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %24 = load i32, i32* @uport, align 4
  %25 = call i32 @SDLNet_Write32(i32* %23, i32 %24)
  %26 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = call i32 @SDLNet_Write32(i32* %27, i32 1)
  %29 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %30 = getelementptr inbounds i32, i32* %29, i64 8
  %31 = load i32, i32* @magic, align 4
  %32 = call i32 @SDLNet_Write32(i32* %30, i32 %31)
  %33 = load i8*, i8** @Socket, align 8
  %34 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %35 = call i32 @SDLNet_TCP_Send(i8* %33, i32* %34, i32 12)
  %36 = load i8*, i8** @Socket, align 8
  %37 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %38 = call i32 @SDLNet_TCP_Recv(i8* %36, i32* %37, i32 2)
  %39 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %40 = call i8* @de32(i32* %39)
  store i8* %40, i8** @RemotePortUDP, align 8
  br label %70

41:                                               ; preds = %0
  %42 = load i32*, i32** @ServerHost, align 8
  %43 = load i32, i32* @RemotePortTCP, align 4
  %44 = call i32 @SDLNet_ResolveHost(%struct.TYPE_6__* %2, i32* %42, i32 %43)
  %45 = call i8* @SDLNet_TCP_Open(%struct.TYPE_6__* %2)
  store i8* %45, i8** @Socket, align 8
  %46 = load i32, i32* @LocalPortUDP, align 4
  store i32 %46, i32* %7, align 4
  %47 = call i32 @SDLNet_UDP_Open(i32* %7)
  store i32 %47, i32* @UDPSocket, align 4
  %48 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @en32(i32* %48, i32 %49)
  %51 = load i8*, i8** @Socket, align 8
  %52 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %53 = call i32 @SDLNet_TCP_Send(i8* %51, i32* %52, i32 4)
  %54 = load i8*, i8** @Socket, align 8
  %55 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %56 = call i32 @SDLNet_TCP_Recv(i8* %54, i32* %55, i32 12)
  %57 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %58 = call i8* @de32(i32* %57)
  store i8* %58, i8** @RemotePortUDP, align 8
  %59 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %60 = getelementptr inbounds i32, i32* %59, i64 8
  %61 = call i8* @de32(i32* %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* @magic, align 4
  %63 = call i32 @SDLNet_AllocSocketSet(i32 1)
  store i32 %63, i32* @set, align 4
  %64 = load i32, i32* @set, align 4
  %65 = load i32, i32* @TCPSocket, align 4
  %66 = call i32 @SDLNet_TCP_AddSocket(i32 %64, i32 %65)
  %67 = load i32, i32* @set, align 4
  %68 = load i32, i32* @UDPSocket, align 4
  %69 = call i32 @SDLNet_UDP_AddSocket(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %41, %12
  %71 = load i8*, i8** @RemotePortUDP, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i8* %71, i8** %72, align 8
  %73 = load i32, i32* @UDPSocket, align 4
  %74 = call i32 @SDLNet_UDP_Bind(i32 %73, i32 0, %struct.TYPE_6__* %2)
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local i32 @SDLNet_Init(...) #1

declare dso_local i32 @SDLNet_ResolveHost(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @SDLNet_UDP_Open(i32*) #1

declare dso_local i8* @SDLNet_TCP_Open(%struct.TYPE_6__*) #1

declare dso_local i8* @SDLNet_TCP_Accept(i8**) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @SDLNet_TCP_GetPeerAddress(i8*) #1

declare dso_local i32 @SDL_GetTicks(...) #1

declare dso_local i32 @SDLNet_Write32(i32*, i32) #1

declare dso_local i32 @SDLNet_TCP_Send(i8*, i32*, i32) #1

declare dso_local i32 @SDLNet_TCP_Recv(i8*, i32*, i32) #1

declare dso_local i8* @de32(i32*) #1

declare dso_local i32 @en32(i32*, i32) #1

declare dso_local i32 @SDLNet_AllocSocketSet(i32) #1

declare dso_local i32 @SDLNet_TCP_AddSocket(i32, i32) #1

declare dso_local i32 @SDLNet_UDP_AddSocket(i32, i32) #1

declare dso_local i32 @SDLNet_UDP_Bind(i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
