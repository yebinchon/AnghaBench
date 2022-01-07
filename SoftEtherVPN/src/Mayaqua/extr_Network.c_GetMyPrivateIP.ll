; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetMyPrivateIP.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetMyPrivateIP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@UDP_NAT_T_GET_PRIVATE_IP_TCP_SERVER = common dso_local global i8* null, align 8
@UDP_NAT_T_PORT_FOR_TCP_1 = common dso_local global i32 0, align 4
@UDP_NAT_T_GET_PRIVATE_IP_CONNECT_TIMEOUT = common dso_local global i32 0, align 4
@UDP_NAT_T_PORT_FOR_TCP_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetMyPrivateIP(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** @UDP_NAT_T_GET_PRIVATE_IP_TCP_SERVER, align 8
  store i8* %9, i8** %8, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

13:                                               ; preds = %2
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* @UDP_NAT_T_PORT_FOR_TCP_1, align 4
  %16 = load i32, i32* @UDP_NAT_T_GET_PRIVATE_IP_CONNECT_TIMEOUT, align 4
  %17 = call %struct.TYPE_5__* @ConnectEx(i8* %14, i32 %15, i32 %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %6, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = icmp eq %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %13
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* @UDP_NAT_T_PORT_FOR_TCP_2, align 4
  %23 = load i32, i32* @UDP_NAT_T_GET_PRIVATE_IP_CONNECT_TIMEOUT, align 4
  %24 = call %struct.TYPE_5__* @ConnectEx(i8* %21, i32 %22, i32 %23)
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %6, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = icmp eq %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = call i8* (...) @GetRandHostNameForGetMyPrivateIP()
  %29 = load i32, i32* @UDP_NAT_T_PORT_FOR_TCP_1, align 4
  %30 = load i32, i32* @UDP_NAT_T_GET_PRIVATE_IP_CONNECT_TIMEOUT, align 4
  %31 = call %struct.TYPE_5__* @ConnectEx(i8* %28, i32 %29, i32 %30)
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %6, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = icmp eq %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %51

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %20
  br label %37

37:                                               ; preds = %36, %13
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = call i32 @Copy(i32* %7, i32* %39, i32 4)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = call i32 @Disconnect(%struct.TYPE_5__* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = call i32 @ReleaseSock(%struct.TYPE_5__* %43)
  %45 = call i64 @IsZeroIp(i32* %7)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %51

48:                                               ; preds = %37
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @Copy(i32* %49, i32* %7, i32 4)
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %47, %34, %12
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_5__* @ConnectEx(i8*, i32, i32) #1

declare dso_local i8* @GetRandHostNameForGetMyPrivateIP(...) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @Disconnect(%struct.TYPE_5__*) #1

declare dso_local i32 @ReleaseSock(%struct.TYPE_5__*) #1

declare dso_local i64 @IsZeroIp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
