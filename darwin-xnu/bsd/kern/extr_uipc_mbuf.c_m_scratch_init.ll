; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_scratch_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_scratch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.pkthdr }
%struct.pkthdr = type { i32, i32 }

@M_PKTHDR = common dso_local global i32 0, align 4
@PKTF_PRIV_GUARDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"Invalid attempt to modify guarded module-private area: mbuf %p, pkt_flags 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_scratch_init(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.pkthdr*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  %4 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %5 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 1
  store %struct.pkthdr* %5, %struct.pkthdr** %3, align 8
  %6 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %7 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @M_PKTHDR, align 4
  %10 = and i32 %8, %9
  %11 = call i32 @VERIFY(i32 %10)
  %12 = load %struct.pkthdr*, %struct.pkthdr** %3, align 8
  %13 = getelementptr inbounds %struct.pkthdr, %struct.pkthdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PKTF_PRIV_GUARDED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %20 = load %struct.pkthdr*, %struct.pkthdr** %3, align 8
  %21 = getelementptr inbounds %struct.pkthdr, %struct.pkthdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @panic_plain(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), %struct.mbuf* %19, i32 %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.pkthdr*, %struct.pkthdr** %3, align 8
  %26 = getelementptr inbounds %struct.pkthdr, %struct.pkthdr* %25, i32 0, i32 1
  %27 = call i32 @bzero(i32* %26, i32 4)
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @panic_plain(i8*, %struct.mbuf*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
