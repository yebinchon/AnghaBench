; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_ProcIKEPacketRecv.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_ProcIKEPacketRecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i32 }

@IKE_UDP_TYPE_ISAKMP = common dso_local global i64 0, align 8
@IKE_UDP_TYPE_ESP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcIKEPacketRecv(i32* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = icmp eq %struct.TYPE_16__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  br label %62

12:                                               ; preds = %8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IKE_UDP_TYPE_ISAKMP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %12
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = call %struct.TYPE_17__* @ParseIKEPacketHeader(%struct.TYPE_16__* %19)
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %5, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = icmp eq %struct.TYPE_17__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %62

24:                                               ; preds = %18
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %48 [
    i32 129, label %28
    i32 131, label %33
    i32 128, label %38
    i32 130, label %43
  ]

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %32 = call i32 @ProcIkeMainModePacketRecv(i32* %29, %struct.TYPE_16__* %30, %struct.TYPE_17__* %31)
  br label %48

33:                                               ; preds = %24
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = call i32 @ProcIkeAggressiveModePacketRecv(i32* %34, %struct.TYPE_16__* %35, %struct.TYPE_17__* %36)
  br label %48

38:                                               ; preds = %24
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = call i32 @ProcIkeQuickModePacketRecv(i32* %39, %struct.TYPE_16__* %40, %struct.TYPE_17__* %41)
  br label %48

43:                                               ; preds = %24
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = call i32 @ProcIkeInformationalExchangePacketRecv(i32* %44, %struct.TYPE_16__* %45, %struct.TYPE_17__* %46)
  br label %48

48:                                               ; preds = %24, %43, %38, %33, %28
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %50 = call i32 @IkeFree(%struct.TYPE_17__* %49)
  br label %62

51:                                               ; preds = %12
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IKE_UDP_TYPE_ESP, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32*, i32** %3, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = call i32 @ProcIPsecEspPacketRecv(i32* %58, %struct.TYPE_16__* %59)
  br label %61

61:                                               ; preds = %57, %51
  br label %62

62:                                               ; preds = %11, %23, %61, %48
  ret void
}

declare dso_local %struct.TYPE_17__* @ParseIKEPacketHeader(%struct.TYPE_16__*) #1

declare dso_local i32 @ProcIkeMainModePacketRecv(i32*, %struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ProcIkeAggressiveModePacketRecv(i32*, %struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ProcIkeQuickModePacketRecv(i32*, %struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ProcIkeInformationalExchangePacketRecv(i32*, %struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @IkeFree(%struct.TYPE_17__*) #1

declare dso_local i32 @ProcIPsecEspPacketRecv(i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
