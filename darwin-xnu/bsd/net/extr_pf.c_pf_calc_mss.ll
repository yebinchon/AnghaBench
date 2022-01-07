; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_calc_mss.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_calc_mss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_addr = type { i32, i32 }
%struct.rtentry = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@tcp_mssdflt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"pf_calc_mss: not AF_INET or AF_INET6!\00", align 1
@CLAT46_HDR_EXPANSION_OVERHD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_addr*, i32, i32)* @pf_calc_mss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_calc_mss(%struct.pf_addr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pf_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pf_addr* %0, %struct.pf_addr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.rtentry* null, %struct.rtentry** %7, align 8
  %10 = load i32, i32* @tcp_mssdflt, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %12 [
  ]

12:                                               ; preds = %3
  %13 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
