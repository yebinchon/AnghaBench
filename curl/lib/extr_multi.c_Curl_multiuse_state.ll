; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_Curl_multiuse_state.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_Curl_multiuse_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, %struct.connectdata*, %struct.connectdata*, %struct.connectdata* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_multiuse_state(%struct.connectdata* %0, i32 %1) #0 {
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %6 = call i32 @DEBUGASSERT(%struct.connectdata* %5)
  %7 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %8 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %7, i32 0, i32 3
  %9 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %10 = call i32 @DEBUGASSERT(%struct.connectdata* %9)
  %11 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %12 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %11, i32 0, i32 2
  %13 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %14 = call i32 @DEBUGASSERT(%struct.connectdata* %13)
  %15 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %16 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %15, i32 0, i32 2
  %17 = load %struct.connectdata*, %struct.connectdata** %16, align 8
  %18 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %17, i32 0, i32 1
  %19 = load %struct.connectdata*, %struct.connectdata** %18, align 8
  %20 = call i32 @DEBUGASSERT(%struct.connectdata* %19)
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %23 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %22, i32 0, i32 3
  %24 = load %struct.connectdata*, %struct.connectdata** %23, align 8
  %25 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 8
  %26 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %27 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %26, i32 0, i32 2
  %28 = load %struct.connectdata*, %struct.connectdata** %27, align 8
  %29 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %28, i32 0, i32 1
  %30 = load %struct.connectdata*, %struct.connectdata** %29, align 8
  %31 = call i32 @process_pending_handles(%struct.connectdata* %30)
  ret void
}

declare dso_local i32 @DEBUGASSERT(%struct.connectdata*) #1

declare dso_local i32 @process_pending_handles(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
