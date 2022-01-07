; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_return_link_key_evt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_return_link_key_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pbuf = type { i64 }
%struct.bd_addr = type { i32 }
%struct.hci_link_key = type { i32*, i32, i32 }

@MEMB_NUM_HCI_LINK_KEY = common dso_local global i32 0, align 4
@hci_link_key_results = common dso_local global i32 0, align 4
@hci_dev = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [72 x i8] c"hci_return_link_key_evt: Could not allocate memory for link key result\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pbuf*)* @hci_return_link_key_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_return_link_key_evt(%struct.pbuf* %0) #0 {
  %2 = alloca %struct.pbuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bd_addr*, align 8
  %7 = alloca %struct.hci_link_key*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %2, align 8
  %8 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %65, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MEMB_NUM_HCI_LINK_KEY, align 4
  %21 = icmp slt i32 %19, %20
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %68

24:                                               ; preds = %22
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, 22
  store i32 %26, i32* %5, align 4
  %27 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = bitcast i32* %34 to i8*
  %36 = bitcast i8* %35 to %struct.bd_addr*
  store %struct.bd_addr* %36, %struct.bd_addr** %6, align 8
  %37 = call %struct.hci_link_key* @btmemb_alloc(i32* @hci_link_key_results)
  store %struct.hci_link_key* %37, %struct.hci_link_key** %7, align 8
  %38 = icmp ne %struct.hci_link_key* %37, null
  br i1 %38, label %39, label %62

39:                                               ; preds = %24
  %40 = load %struct.hci_link_key*, %struct.hci_link_key** %7, align 8
  %41 = getelementptr inbounds %struct.hci_link_key, %struct.hci_link_key* %40, i32 0, i32 2
  %42 = load %struct.bd_addr*, %struct.bd_addr** %6, align 8
  %43 = call i32 @bd_addr_set(i32* %41, %struct.bd_addr* %42)
  %44 = load %struct.hci_link_key*, %struct.hci_link_key** %7, align 8
  %45 = getelementptr inbounds %struct.hci_link_key, %struct.hci_link_key* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %48 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = getelementptr inbounds i32, i32* %50, i64 7
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @memcpy(i32 %46, i32* %54, i32 16)
  %56 = load %struct.hci_link_key*, %struct.hci_link_key** %7, align 8
  %57 = getelementptr inbounds %struct.hci_link_key, %struct.hci_link_key* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hci_dev, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.hci_link_key*, %struct.hci_link_key** %7, align 8
  %61 = call i32 @HCI_REG(i32* %59, %struct.hci_link_key* %60)
  br label %64

62:                                               ; preds = %24
  %63 = call i32 @ERROR(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %39
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %14

68:                                               ; preds = %22
  ret void
}

declare dso_local %struct.hci_link_key* @btmemb_alloc(i32*) #1

declare dso_local i32 @bd_addr_set(i32*, %struct.bd_addr*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @HCI_REG(i32*, %struct.hci_link_key*) #1

declare dso_local i32 @ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
