; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_ip2key.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_ip2key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_fragment = type { %struct.TYPE_8__, %struct.TYPE_11__, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.ip = type { %struct.TYPE_9__, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_fragment*, %struct.ip*)* @pf_ip2key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_ip2key(%struct.pf_fragment* %0, %struct.ip* %1) #0 {
  %3 = alloca %struct.pf_fragment*, align 8
  %4 = alloca %struct.ip*, align 8
  store %struct.pf_fragment* %0, %struct.pf_fragment** %3, align 8
  store %struct.ip* %1, %struct.ip** %4, align 8
  %5 = load %struct.ip*, %struct.ip** %4, align 8
  %6 = getelementptr inbounds %struct.ip, %struct.ip* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.pf_fragment*, %struct.pf_fragment** %3, align 8
  %9 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ip*, %struct.ip** %4, align 8
  %11 = getelementptr inbounds %struct.ip, %struct.ip* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.pf_fragment*, %struct.pf_fragment** %3, align 8
  %14 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @AF_INET, align 4
  %16 = load %struct.pf_fragment*, %struct.pf_fragment** %3, align 8
  %17 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ip*, %struct.ip** %4, align 8
  %19 = getelementptr inbounds %struct.ip, %struct.ip* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pf_fragment*, %struct.pf_fragment** %3, align 8
  %23 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load %struct.ip*, %struct.ip** %4, align 8
  %27 = getelementptr inbounds %struct.ip, %struct.ip* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pf_fragment*, %struct.pf_fragment** %3, align 8
  %31 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
