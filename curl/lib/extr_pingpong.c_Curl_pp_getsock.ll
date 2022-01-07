; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pingpong.c_Curl_pp_getsock.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pingpong.c_Curl_pp_getsock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pingpong = type { i64, %struct.connectdata* }
%struct.connectdata = type { i32* }

@FIRSTSOCKET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_pp_getsock(%struct.pingpong* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pingpong*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.connectdata*, align 8
  store %struct.pingpong* %0, %struct.pingpong** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.pingpong*, %struct.pingpong** %4, align 8
  %8 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %7, i32 0, i32 1
  %9 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  store %struct.connectdata* %9, %struct.connectdata** %6, align 8
  %10 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @FIRSTSOCKET, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.pingpong*, %struct.pingpong** %4, align 8
  %19 = getelementptr inbounds %struct.pingpong, %struct.pingpong* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 @GETSOCK_WRITESOCK(i32 0)
  store i32 %23, i32* %3, align 4
  br label %26

24:                                               ; preds = %2
  %25 = call i32 @GETSOCK_READSOCK(i32 0)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @GETSOCK_WRITESOCK(i32) #1

declare dso_local i32 @GETSOCK_READSOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
