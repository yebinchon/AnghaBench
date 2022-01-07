; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_arp.c_arp_llinfo_flushq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_arp.c_arp_llinfo_flushq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.llinfo_arp = type { i32, i64 }

@arpstat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.llinfo_arp*)* @arp_llinfo_flushq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_llinfo_flushq(%struct.llinfo_arp* %0) #0 {
  %2 = alloca %struct.llinfo_arp*, align 8
  %3 = alloca i32, align 4
  store %struct.llinfo_arp* %0, %struct.llinfo_arp** %2, align 8
  %4 = load %struct.llinfo_arp*, %struct.llinfo_arp** %2, align 8
  %5 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %4, i32 0, i32 0
  %6 = call i32 @qlen(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @atomic_add_32(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arpstat, i32 0, i32 1), i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = sub nsw i32 0, %12
  %14 = call i32 @atomic_add_32(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arpstat, i32 0, i32 0), i32 %13)
  %15 = load %struct.llinfo_arp*, %struct.llinfo_arp** %2, align 8
  %16 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %15, i32 0, i32 0
  %17 = call i32 @_flushq(i32* %16)
  br label %18

18:                                               ; preds = %9, %1
  %19 = load %struct.llinfo_arp*, %struct.llinfo_arp** %2, align 8
  %20 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.llinfo_arp*, %struct.llinfo_arp** %2, align 8
  %22 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %21, i32 0, i32 0
  %23 = call i32 @qempty(i32* %22)
  %24 = call i32 @VERIFY(i32 %23)
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @qlen(i32*) #1

declare dso_local i32 @atomic_add_32(i32*, i32) #1

declare dso_local i32 @_flushq(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @qempty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
