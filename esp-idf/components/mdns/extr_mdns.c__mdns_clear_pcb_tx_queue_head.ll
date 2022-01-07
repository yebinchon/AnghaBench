; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_clear_pcb_tx_queue_head.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_clear_pcb_tx_queue_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_4__* }

@_mdns_server = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @_mdns_clear_pcb_tx_queue_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mdns_clear_pcb_tx_queue_head(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  br label %7

7:                                                ; preds = %30, %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_mdns_server, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %7
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_mdns_server, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %12
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_mdns_server, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %20, %12, %7
  %29 = phi i1 [ false, %12 ], [ false, %7 ], [ %27, %20 ]
  br i1 %29, label %30, label %43

30:                                               ; preds = %28
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_mdns_server, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %5, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_mdns_server, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_mdns_server, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = call i32 @_mdns_free_tx_packet(%struct.TYPE_4__* %41)
  br label %7

43:                                               ; preds = %28
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_mdns_server, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = icmp ne %struct.TYPE_4__* %46, null
  br i1 %47, label %48, label %90

48:                                               ; preds = %43
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_mdns_server, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %5, align 8
  br label %52

52:                                               ; preds = %88, %48
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %57, label %89

57:                                               ; preds = %52
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %3, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %57
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %4, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %65
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  store %struct.TYPE_4__* %76, %struct.TYPE_4__** %6, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store %struct.TYPE_4__* %79, %struct.TYPE_4__** %81, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %83 = call i32 @_mdns_free_tx_packet(%struct.TYPE_4__* %82)
  br label %88

84:                                               ; preds = %65, %57
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  store %struct.TYPE_4__* %87, %struct.TYPE_4__** %5, align 8
  br label %88

88:                                               ; preds = %84, %73
  br label %52

89:                                               ; preds = %52
  br label %90

90:                                               ; preds = %89, %43
  ret void
}

declare dso_local i32 @_mdns_free_tx_packet(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
