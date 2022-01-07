; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_IPCDhcpRequestInformIP.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_IPCDhcpRequestInformIP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }

@DHCP_INFORM = common dso_local global i32 0, align 4
@DHCP_ACK = common dso_local global i32 0, align 4
@IPC_DHCP_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IPCDhcpRequestInformIP(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = call i32 (...) @Rand32()
  store i32 %14, i32* %12, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = icmp eq %struct.TYPE_16__* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %19 = icmp eq %struct.TYPE_17__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32*, i32** %9, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17, %4
  store i32 0, i32* %5, align 4
  br label %70

24:                                               ; preds = %20
  %25 = call i32 @Zero(%struct.TYPE_17__* %10, i32 12)
  %26 = load i32, i32* @DHCP_INFORM, align 4
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @IPToUINT(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @StrCpy(i32 %32, i32 4, i32 %35)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = call i32 @IPCDhcpSetConditionalUserClass(%struct.TYPE_16__* %37, %struct.TYPE_17__* %10)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @DHCP_ACK, align 4
  %42 = load i32, i32* @IPC_DHCP_TIMEOUT, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call %struct.TYPE_18__* @IPCSendDhcpRequest(%struct.TYPE_16__* %39, i32* null, i32 %40, %struct.TYPE_17__* %10, i32 %41, i32 %42, i32* %43)
  store %struct.TYPE_18__* %44, %struct.TYPE_18__** %11, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %46 = icmp eq %struct.TYPE_18__* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %70

48:                                               ; preds = %24
  store i32 1, i32* %13, align 4
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %55, %48
  %57 = load i32, i32* %13, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %61 = call i32 @FreeDHCPv4Data(%struct.TYPE_18__* %60)
  store i32 0, i32* %5, align 4
  br label %70

62:                                               ; preds = %56
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = call i32 @Copy(%struct.TYPE_17__* %63, %struct.TYPE_15__* %66, i32 12)
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %69 = call i32 @FreeDHCPv4Data(%struct.TYPE_18__* %68)
  store i32 1, i32* %5, align 4
  br label %70

70:                                               ; preds = %62, %59, %47, %23
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @Rand32(...) #1

declare dso_local i32 @Zero(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @IPToUINT(i32*) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @IPCDhcpSetConditionalUserClass(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @IPCSendDhcpRequest(%struct.TYPE_16__*, i32*, i32, %struct.TYPE_17__*, i32, i32, i32*) #1

declare dso_local i32 @FreeDHCPv4Data(%struct.TYPE_18__*) #1

declare dso_local i32 @Copy(%struct.TYPE_17__*, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
