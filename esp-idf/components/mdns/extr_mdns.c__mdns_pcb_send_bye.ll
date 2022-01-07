; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_pcb_send_bye.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_pcb_send_bye.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32 }

@MDNS_FLAGS_AUTHORITATIVE = common dso_local global i32 0, align 4
@MDNS_TYPE_PTR = common dso_local global i32 0, align 4
@MDNS_TYPE_A = common dso_local global i32 0, align 4
@MDNS_TYPE_AAAA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_8__**, i64, i32)* @_mdns_pcb_send_bye to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mdns_pcb_send_bye(i32 %0, i32 %1, %struct.TYPE_8__** %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.TYPE_7__* @_mdns_alloc_packet_default(i32 %13, i32 %14)
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %11, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %69

19:                                               ; preds = %5
  %20 = load i32, i32* @MDNS_FLAGS_AUTHORITATIVE, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  store i64 0, i64* %12, align 8
  br label %23

23:                                               ; preds = %43, %19
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* @MDNS_TYPE_PTR, align 4
  %31 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %32 = load i64, i64* %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %31, i64 %32
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @_mdns_alloc_answer(i32* %29, i32 %30, i32* %36, i32 1, i32 1)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %41 = call i32 @_mdns_free_tx_packet(%struct.TYPE_7__* %40)
  br label %69

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %12, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %12, align 8
  br label %23

46:                                               ; preds = %23
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* @MDNS_TYPE_A, align 4
  %53 = call i32 @_mdns_alloc_answer(i32* %51, i32 %52, i32* null, i32 1, i32 1)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* @MDNS_TYPE_AAAA, align 4
  %59 = call i32 @_mdns_alloc_answer(i32* %57, i32 %58, i32* null, i32 1, i32 1)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %55, %49
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %63 = call i32 @_mdns_free_tx_packet(%struct.TYPE_7__* %62)
  br label %69

64:                                               ; preds = %55, %46
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %66 = call i32 @_mdns_dispatch_tx_packet(%struct.TYPE_7__* %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %68 = call i32 @_mdns_free_tx_packet(%struct.TYPE_7__* %67)
  br label %69

69:                                               ; preds = %64, %61, %39, %18
  ret void
}

declare dso_local %struct.TYPE_7__* @_mdns_alloc_packet_default(i32, i32) #1

declare dso_local i32 @_mdns_alloc_answer(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @_mdns_free_tx_packet(%struct.TYPE_7__*) #1

declare dso_local i32 @_mdns_dispatch_tx_packet(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
