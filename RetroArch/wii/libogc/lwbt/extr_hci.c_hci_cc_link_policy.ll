; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_cc_link_policy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_cc_link_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_link = type { i32, i32, %struct.hci_link* }
%struct.pbuf = type { i64 }

@HCI_SUCCESS = common dso_local global i32 0, align 4
@hci_active_links = common dso_local global %struct.hci_link* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"hci_cc_link_policy: Connection does not exist\0A\00", align 1
@hci_dev = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unsuccessful HCI_W_LINK_POLICY.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pbuf*)* @hci_cc_link_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_link_policy(i32 %0, %struct.pbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_link*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pbuf* %1, %struct.pbuf** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %55 [
    i32 128, label %9
  ]

9:                                                ; preds = %2
  %10 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HCI_SUCCESS, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %9
  %19 = load %struct.hci_link*, %struct.hci_link** @hci_active_links, align 8
  store %struct.hci_link* %19, %struct.hci_link** %6, align 8
  br label %20

20:                                               ; preds = %37, %18
  %21 = load %struct.hci_link*, %struct.hci_link** %6, align 8
  %22 = icmp ne %struct.hci_link* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load %struct.hci_link*, %struct.hci_link** %6, align 8
  %25 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le16toh(i32 %32)
  %34 = icmp eq i32 %26, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %41

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.hci_link*, %struct.hci_link** %6, align 8
  %39 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %38, i32 0, i32 2
  %40 = load %struct.hci_link*, %struct.hci_link** %39, align 8
  store %struct.hci_link* %40, %struct.hci_link** %6, align 8
  br label %20

41:                                               ; preds = %35, %20
  %42 = load %struct.hci_link*, %struct.hci_link** %6, align 8
  %43 = icmp eq %struct.hci_link* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 @LOG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %55

46:                                               ; preds = %41
  %47 = load i32, i32* @hci_dev, align 4
  %48 = load %struct.hci_link*, %struct.hci_link** %6, align 8
  %49 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %48, i32 0, i32 0
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @HCI_EVENT_WLP_COMPLETE(i32 %47, i32* %49, i32 %50)
  br label %54

52:                                               ; preds = %9
  %53 = call i32 @LOG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %46
  br label %55

55:                                               ; preds = %2, %54, %44
  ret void
}

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @LOG(i8*) #1

declare dso_local i32 @HCI_EVENT_WLP_COMPLETE(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
