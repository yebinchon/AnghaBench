; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netbuf_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netbuf_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netbuf = type { i32*, i32* }

@MEMP_NETBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netbuf* ()* @netbuf_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netbuf* @netbuf_new() #0 {
  %1 = alloca %struct.netbuf*, align 8
  store %struct.netbuf* null, %struct.netbuf** %1, align 8
  %2 = load i32, i32* @MEMP_NETBUF, align 4
  %3 = call %struct.netbuf* @memp_malloc(i32 %2)
  store %struct.netbuf* %3, %struct.netbuf** %1, align 8
  %4 = load %struct.netbuf*, %struct.netbuf** %1, align 8
  %5 = icmp ne %struct.netbuf* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load %struct.netbuf*, %struct.netbuf** %1, align 8
  %8 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %7, i32 0, i32 1
  store i32* null, i32** %8, align 8
  %9 = load %struct.netbuf*, %struct.netbuf** %1, align 8
  %10 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %9, i32 0, i32 0
  store i32* null, i32** %10, align 8
  br label %11

11:                                               ; preds = %6, %0
  %12 = load %struct.netbuf*, %struct.netbuf** %1, align 8
  ret %struct.netbuf* %12
}

declare dso_local %struct.netbuf* @memp_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
