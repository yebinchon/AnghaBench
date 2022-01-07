; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_arp.c_uip_arp_timer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_arp.c_uip_arp_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@UIP_ARPTAB_SIZE = common dso_local global i64 0, align 8
@arp_table = common dso_local global %struct.TYPE_2__* null, align 8
@ARP_STATE_STABLE = common dso_local global i64 0, align 8
@ARP_MAXAGE = common dso_local global i64 0, align 8
@ARP_STATE_EXPIRED = common dso_local global i64 0, align 8
@ARP_STATE_PENDING = common dso_local global i64 0, align 8
@ARP_MAXPENDING = common dso_local global i64 0, align 8
@ARP_STATE_EMPTY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uip_arp_timer() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %73, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @UIP_ARPTAB_SIZE, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %76

6:                                                ; preds = %2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arp_table, align 8
  %8 = load i64, i64* %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* %10, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arp_table, align 8
  %14 = load i64, i64* %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ARP_STATE_STABLE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %6
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arp_table, align 8
  %22 = load i64, i64* %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ARP_MAXAGE, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load i64, i64* @ARP_STATE_EXPIRED, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arp_table, align 8
  %31 = load i64, i64* %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i64 %29, i64* %33, align 8
  br label %58

34:                                               ; preds = %20, %6
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arp_table, align 8
  %36 = load i64, i64* %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ARP_STATE_PENDING, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %34
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arp_table, align 8
  %44 = load i64, i64* %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ARP_MAXPENDING, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load i64, i64* @ARP_STATE_EXPIRED, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arp_table, align 8
  %53 = load i64, i64* %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i64 %51, i64* %55, align 8
  br label %56

56:                                               ; preds = %50, %42
  br label %57

57:                                               ; preds = %56, %34
  br label %58

58:                                               ; preds = %57, %28
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arp_table, align 8
  %60 = load i64, i64* %1, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ARP_STATE_EXPIRED, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load i64, i64* @ARP_STATE_EMPTY, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arp_table, align 8
  %69 = load i64, i64* %1, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i64 %67, i64* %71, align 8
  br label %72

72:                                               ; preds = %66, %58
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %1, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %1, align 8
  br label %2

76:                                               ; preds = %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
