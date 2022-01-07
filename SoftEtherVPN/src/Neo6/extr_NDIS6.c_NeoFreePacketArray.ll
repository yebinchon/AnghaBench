; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Neo6/extr_NDIS6.c_NeoFreePacketArray.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Neo6/extr_NDIS6.c_NeoFreePacketArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32** }

@NEO_MAX_PACKET_EXCHANGE = common dso_local global i64 0, align 8
@ctx = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NeoFreePacketArray() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %19, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @NEO_MAX_PACKET_EXCHANGE, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32**, i32*** %8, align 8
  %10 = load i64, i64* %1, align 8
  %11 = getelementptr inbounds i32*, i32** %9, i64 %10
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @NeoFreePacketBuffer(i32* %12)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32**, i32*** %15, align 8
  %17 = load i64, i64* %1, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 %17
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %6
  %20 = load i64, i64* %1, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %1, align 8
  br label %2

22:                                               ; preds = %2
  ret void
}

declare dso_local i32 @NeoFreePacketBuffer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
