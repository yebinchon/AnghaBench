; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_arp.c_arp_llinfo_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_arp.c_arp_llinfo_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llinfo_arp = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@llinfo_arp_zone = common dso_local global i32 0, align 4
@Q_DROPHEAD = common dso_local global i32 0, align 4
@arp_maxhold = common dso_local global i64 0, align 8
@QP_MBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.llinfo_arp* (i32)* @arp_llinfo_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.llinfo_arp* @arp_llinfo_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.llinfo_arp*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @llinfo_arp_zone, align 4
  %9 = call %struct.llinfo_arp* @zalloc(i32 %8)
  br label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @llinfo_arp_zone, align 4
  %12 = call %struct.llinfo_arp* @zalloc_noblock(i32 %11)
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi %struct.llinfo_arp* [ %9, %7 ], [ %12, %10 ]
  store %struct.llinfo_arp* %14, %struct.llinfo_arp** %3, align 8
  %15 = load %struct.llinfo_arp*, %struct.llinfo_arp** %3, align 8
  %16 = icmp ne %struct.llinfo_arp* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load %struct.llinfo_arp*, %struct.llinfo_arp** %3, align 8
  %19 = call i32 @bzero(%struct.llinfo_arp* %18, i32 4)
  %20 = load %struct.llinfo_arp*, %struct.llinfo_arp** %3, align 8
  %21 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %20, i32 0, i32 0
  %22 = load i32, i32* @Q_DROPHEAD, align 4
  %23 = load i64, i64* @arp_maxhold, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %28

26:                                               ; preds = %17
  %27 = load i64, i64* @arp_maxhold, align 8
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i64 [ -1, %25 ], [ %27, %26 ]
  %30 = load i32, i32* @QP_MBUF, align 4
  %31 = call i32 @_qinit(i32* %21, i32 %22, i64 %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %13
  %33 = load %struct.llinfo_arp*, %struct.llinfo_arp** %3, align 8
  ret %struct.llinfo_arp* %33
}

declare dso_local %struct.llinfo_arp* @zalloc(i32) #1

declare dso_local %struct.llinfo_arp* @zalloc_noblock(i32) #1

declare dso_local i32 @bzero(%struct.llinfo_arp*, i32) #1

declare dso_local i32 @_qinit(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
