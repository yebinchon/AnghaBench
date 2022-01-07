; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_routable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_routable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_addr = type { i32, i32 }
%struct.pfi_kif = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_in = type { i32, i32, i32 }
%struct.route = type { i32 }

@IFT_ENC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pf_routable(%struct.pf_addr* %0, i32 %1, %struct.pfi_kif* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pf_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pfi_kif*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.route, align 4
  store %struct.pf_addr* %0, %struct.pf_addr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pfi_kif* %2, %struct.pfi_kif** %7, align 8
  store i32 1, i32* %9, align 4
  %11 = call i32 @bzero(%struct.route* %10, i32 4)
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %25 [
    i32 129, label %13
  ]

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.route, %struct.route* %10, i32 0, i32 0
  %15 = call %struct.sockaddr_in* @satosin(i32* %14)
  store %struct.sockaddr_in* %15, %struct.sockaddr_in** %8, align 8
  %16 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 0
  store i32 129, i32* %17, align 4
  %18 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 1
  store i32 12, i32* %19, align 4
  %20 = load %struct.pf_addr*, %struct.pf_addr** %5, align 8
  %21 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  br label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

26:                                               ; preds = %13
  %27 = load %struct.pfi_kif*, %struct.pfi_kif** %7, align 8
  %28 = icmp ne %struct.pfi_kif* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %struct.pfi_kif*, %struct.pfi_kif** %7, align 8
  %31 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IFT_ENC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %40

38:                                               ; preds = %29, %26
  %39 = call i32 @rtalloc(%struct.route* %10)
  br label %40

40:                                               ; preds = %38, %37
  %41 = call i32 @ROUTE_RELEASE(%struct.route* %10)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %25
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @bzero(%struct.route*, i32) #1

declare dso_local %struct.sockaddr_in* @satosin(i32*) #1

declare dso_local i32 @rtalloc(%struct.route*) #1

declare dso_local i32 @ROUTE_RELEASE(%struct.route*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
