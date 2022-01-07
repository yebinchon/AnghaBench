; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_acldata_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_acldata_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.hci_link = type { i32, i32, %struct.hci_link* }
%struct.pbuf = type { %struct.hci_acl_hdr* }
%struct.hci_acl_hdr = type { i32, i32 }

@HCI_ACL_HDR_LEN = common dso_local global i32 0, align 4
@hci_dev = common dso_local global %struct.TYPE_2__* null, align 8
@HCI_HOST_MAX_NUM_ACL = common dso_local global i64 0, align 8
@hci_active_links = common dso_local global %struct.hci_link* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_acldata_handler(%struct.pbuf* %0) #0 {
  %2 = alloca %struct.pbuf*, align 8
  %3 = alloca %struct.hci_acl_hdr*, align 8
  %4 = alloca %struct.hci_link*, align 8
  %5 = alloca i32, align 4
  store %struct.pbuf* %0, %struct.pbuf** %2, align 8
  %6 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i32 0, i32 0
  %8 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %7, align 8
  store %struct.hci_acl_hdr* %8, %struct.hci_acl_hdr** %3, align 8
  %9 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %10 = load i32, i32* @HCI_ACL_HDR_LEN, align 4
  %11 = sub nsw i32 0, %10
  %12 = call i32 @btpbuf_header(%struct.pbuf* %9, i32 %11)
  %13 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %3, align 8
  %14 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16toh(i32 %15)
  %17 = and i32 %16, 4095
  store i32 %17, i32* %5, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hci_dev, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hci_dev, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hci_dev, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = load i64, i64* @HCI_HOST_MAX_NUM_ACL, align 8
  %34 = call i32 @hci_host_num_comp_packets(i32 %32, i64 %33)
  %35 = load i64, i64* @HCI_HOST_MAX_NUM_ACL, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hci_dev, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %31, %22
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.hci_link*, %struct.hci_link** @hci_active_links, align 8
  store %struct.hci_link* %40, %struct.hci_link** %4, align 8
  br label %41

41:                                               ; preds = %52, %39
  %42 = load %struct.hci_link*, %struct.hci_link** %4, align 8
  %43 = icmp ne %struct.hci_link* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load %struct.hci_link*, %struct.hci_link** %4, align 8
  %46 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %56

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.hci_link*, %struct.hci_link** %4, align 8
  %54 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %53, i32 0, i32 2
  %55 = load %struct.hci_link*, %struct.hci_link** %54, align 8
  store %struct.hci_link* %55, %struct.hci_link** %4, align 8
  br label %41

56:                                               ; preds = %50, %41
  %57 = load %struct.hci_link*, %struct.hci_link** %4, align 8
  %58 = icmp ne %struct.hci_link* %57, null
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %3, align 8
  %61 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le16toh(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %67 = load %struct.hci_link*, %struct.hci_link** %4, align 8
  %68 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %67, i32 0, i32 1
  %69 = call i32 @l2cap_input(%struct.pbuf* %66, i32* %68)
  br label %73

70:                                               ; preds = %59
  %71 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %72 = call i32 @btpbuf_free(%struct.pbuf* %71)
  br label %73

73:                                               ; preds = %70, %65
  br label %77

74:                                               ; preds = %56
  %75 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %76 = call i32 @btpbuf_free(%struct.pbuf* %75)
  br label %77

77:                                               ; preds = %74, %73
  ret void
}

declare dso_local i32 @btpbuf_header(%struct.pbuf*, i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @hci_host_num_comp_packets(i32, i64) #1

declare dso_local i32 @l2cap_input(%struct.pbuf*, i32*) #1

declare dso_local i32 @btpbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
