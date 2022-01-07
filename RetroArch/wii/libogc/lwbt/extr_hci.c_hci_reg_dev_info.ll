; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_reg_dev_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_reg_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bd_addr = type { i32 }
%struct.hci_inq_res = type { i32*, i32, i8*, i8*, i32, i32 }

@hci_dev = common dso_local global %struct.TYPE_2__* null, align 8
@ERR_VAL = common dso_local global i32 0, align 4
@hci_inq_results = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@ERR_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_reg_dev_info(%struct.bd_addr* %0, i8** %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bd_addr*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hci_inq_res*, align 8
  store %struct.bd_addr* %0, %struct.bd_addr** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hci_dev, align 8
  %14 = icmp eq %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load i32, i32* @ERR_VAL, align 4
  store i32 %16, i32* %6, align 4
  br label %48

17:                                               ; preds = %5
  %18 = call %struct.hci_inq_res* @btmemb_alloc(i32* @hci_inq_results)
  store %struct.hci_inq_res* %18, %struct.hci_inq_res** %12, align 8
  %19 = icmp ne %struct.hci_inq_res* %18, null
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = load %struct.hci_inq_res*, %struct.hci_inq_res** %12, align 8
  %22 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %21, i32 0, i32 5
  %23 = load %struct.bd_addr*, %struct.bd_addr** %7, align 8
  %24 = call i32 @bd_addr_set(i32* %22, %struct.bd_addr* %23)
  %25 = load %struct.hci_inq_res*, %struct.hci_inq_res** %12, align 8
  %26 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i8**, i8*** %8, align 8
  %29 = call i32 @memcpy(i32 %27, i8** %28, i32 3)
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.hci_inq_res*, %struct.hci_inq_res** %12, align 8
  %32 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.hci_inq_res*, %struct.hci_inq_res** %12, align 8
  %35 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.hci_inq_res*, %struct.hci_inq_res** %12, align 8
  %38 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.hci_inq_res*, %struct.hci_inq_res** %12, align 8
  %40 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hci_dev, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.hci_inq_res*, %struct.hci_inq_res** %12, align 8
  %44 = call i32 @HCI_REG(i32* %42, %struct.hci_inq_res* %43)
  %45 = load i32, i32* @ERR_OK, align 4
  store i32 %45, i32* %6, align 4
  br label %48

46:                                               ; preds = %17
  %47 = load i32, i32* @ERR_MEM, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %46, %20, %15
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.hci_inq_res* @btmemb_alloc(i32*) #1

declare dso_local i32 @bd_addr_set(i32*, %struct.bd_addr*) #1

declare dso_local i32 @memcpy(i32, i8**, i32) #1

declare dso_local i32 @HCI_REG(i32*, %struct.hci_inq_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
