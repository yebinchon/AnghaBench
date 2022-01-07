; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbflush_priq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbflush_priq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_priq = type { i64, i64, i32*, %struct.mbuf*, %struct.mbuf* }
%struct.mbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msg_priq*)* @sbflush_priq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbflush_priq(%struct.msg_priq* %0) #0 {
  %2 = alloca %struct.msg_priq*, align 8
  %3 = alloca %struct.mbuf*, align 8
  store %struct.msg_priq* %0, %struct.msg_priq** %2, align 8
  %4 = load %struct.msg_priq*, %struct.msg_priq** %2, align 8
  %5 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %4, i32 0, i32 4
  %6 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %6, %struct.mbuf** %3, align 8
  %7 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %8 = icmp ne %struct.mbuf* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %11 = call i32 @m_freem_list(%struct.mbuf* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.msg_priq*, %struct.msg_priq** %2, align 8
  %14 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = load %struct.msg_priq*, %struct.msg_priq** %2, align 8
  %16 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %15, i32 0, i32 3
  store %struct.mbuf* null, %struct.mbuf** %16, align 8
  %17 = load %struct.msg_priq*, %struct.msg_priq** %2, align 8
  %18 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %17, i32 0, i32 4
  store %struct.mbuf* null, %struct.mbuf** %18, align 8
  %19 = load %struct.msg_priq*, %struct.msg_priq** %2, align 8
  %20 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.msg_priq*, %struct.msg_priq** %2, align 8
  %22 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  ret void
}

declare dso_local i32 @m_freem_list(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
