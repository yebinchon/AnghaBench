; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http_proxy.c_connect_done.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http_proxy.c_connect_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, %struct.http_connect_state* }
%struct.http_connect_state = type { i32 }

@TUNNEL_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"CONNECT phase completed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connectdata*)* @connect_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connect_done(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca %struct.http_connect_state*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %4 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %5 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %4, i32 0, i32 1
  %6 = load %struct.http_connect_state*, %struct.http_connect_state** %5, align 8
  store %struct.http_connect_state* %6, %struct.http_connect_state** %3, align 8
  %7 = load i32, i32* @TUNNEL_COMPLETE, align 4
  %8 = load %struct.http_connect_state*, %struct.http_connect_state** %3, align 8
  %9 = getelementptr inbounds %struct.http_connect_state, %struct.http_connect_state* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @infof(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @infof(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
