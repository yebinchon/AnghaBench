; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_redzone_verify.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_redzone_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@M_PKTHDR = common dso_local global i32 0, align 4
@mb_redzone_cookie = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"mbuf %p redzone violation with value 0x%x (instead of 0x%x, using cookie 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*)* @m_redzone_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m_redzone_verify(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  %4 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %5 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @M_PKTHDR, align 4
  %8 = and i32 %6, %7
  %9 = call i32 @VERIFY(i32 %8)
  %10 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %11 = ptrtoint %struct.mbuf* %10 to i64
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @mb_redzone_cookie, align 4
  %14 = xor i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %23 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @mb_redzone_cookie, align 4
  %29 = call i32 @panic(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), %struct.mbuf* %22, i32 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @panic(i8*, %struct.mbuf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
