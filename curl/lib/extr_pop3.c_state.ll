; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pop3.c_state.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pop3.c_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pop3_conn }
%struct.pop3_conn = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connectdata*, i64)* @state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @state(%struct.connectdata* %0, i64 %1) #0 {
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pop3_conn*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.pop3_conn* %8, %struct.pop3_conn** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.pop3_conn*, %struct.pop3_conn** %5, align 8
  %11 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
