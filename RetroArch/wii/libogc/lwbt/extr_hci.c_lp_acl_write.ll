; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_lp_acl_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_lp_acl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.bd_addr = type { i32 }
%struct.pbuf = type { i32, i64 }
%struct.hci_link = type { i32, i32, i32, %struct.pbuf* }
%struct.hci_acl_hdr = type { i8*, i8* }

@.str = private unnamed_addr constant [45 x i8] c"lp_acl_write: ACL connection does not exist\0A\00", align 1
@ERR_CONN = common dso_local global i32 0, align 4
@hci_dev = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"lp_acl_write: Host buffer full. Dropped packet\0A\00", align 1
@ERR_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"lp_acl_write: Host queued packet %p\0A\00", align 1
@PBUF_RAW = common dso_local global i32 0, align 4
@HCI_ACL_HDR_LEN = common dso_local global i64 0, align 8
@PBUF_RAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"lp_acl_write: Could not allocate memory for pbuf\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@HCI_ACL_DATA_PACKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lp_acl_write(%struct.bd_addr* %0, %struct.pbuf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bd_addr*, align 8
  %7 = alloca %struct.pbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hci_link*, align 8
  %12 = alloca %struct.hci_acl_hdr*, align 8
  %13 = alloca %struct.pbuf*, align 8
  store %struct.bd_addr* %0, %struct.bd_addr** %6, align 8
  store %struct.pbuf* %1, %struct.pbuf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.bd_addr*, %struct.bd_addr** %6, align 8
  %15 = call %struct.hci_link* @hci_get_link(%struct.bd_addr* %14)
  store %struct.hci_link* %15, %struct.hci_link** %11, align 8
  %16 = load %struct.hci_link*, %struct.hci_link** %11, align 8
  %17 = icmp eq %struct.hci_link* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = call i32 @ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ERR_CONN, align 4
  store i32 %20, i32* %5, align 4
  br label %116

21:                                               ; preds = %4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hci_dev, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %21
  %27 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %28 = icmp ne %struct.pbuf* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = load %struct.hci_link*, %struct.hci_link** %11, align 8
  %31 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %30, i32 0, i32 3
  %32 = load %struct.pbuf*, %struct.pbuf** %31, align 8
  %33 = icmp ne %struct.pbuf* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ERR_OK, align 4
  store i32 %36, i32* %5, align 4
  br label %116

37:                                               ; preds = %29
  %38 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %39 = call %struct.pbuf* @btpbuf_take(%struct.pbuf* %38)
  store %struct.pbuf* %39, %struct.pbuf** %7, align 8
  %40 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %41 = load %struct.hci_link*, %struct.hci_link** %11, align 8
  %42 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %41, i32 0, i32 3
  store %struct.pbuf* %40, %struct.pbuf** %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.hci_link*, %struct.hci_link** %11, align 8
  %45 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.hci_link*, %struct.hci_link** %11, align 8
  %48 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %50 = call i32 @btpbuf_ref(%struct.pbuf* %49)
  %51 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %52 = bitcast %struct.pbuf* %51 to i8*
  %53 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54, %26
  br label %56

56:                                               ; preds = %55, %21
  %57 = load i32, i32* @PBUF_RAW, align 4
  %58 = load i64, i64* @HCI_ACL_HDR_LEN, align 8
  %59 = add nsw i64 %58, 1
  %60 = load i32, i32* @PBUF_RAM, align 4
  %61 = call %struct.pbuf* @btpbuf_alloc(i32 %57, i64 %59, i32 %60)
  store %struct.pbuf* %61, %struct.pbuf** %13, align 8
  %62 = icmp eq %struct.pbuf* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = call i32 @ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @ERR_MEM, align 4
  store i32 %65, i32* %5, align 4
  br label %116

66:                                               ; preds = %56
  %67 = load %struct.pbuf*, %struct.pbuf** %13, align 8
  %68 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %69 = call i32 @btpbuf_chain(%struct.pbuf* %67, %struct.pbuf* %68)
  %70 = load i32, i32* @HCI_ACL_DATA_PACKET, align 4
  %71 = load %struct.pbuf*, %struct.pbuf** %13, align 8
  %72 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %70, i32* %75, align 4
  %76 = load %struct.pbuf*, %struct.pbuf** %13, align 8
  %77 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i32*
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = bitcast i32* %80 to i8*
  %82 = bitcast i8* %81 to %struct.hci_acl_hdr*
  store %struct.hci_acl_hdr* %82, %struct.hci_acl_hdr** %12, align 8
  %83 = load %struct.hci_link*, %struct.hci_link** %11, align 8
  %84 = getelementptr inbounds %struct.hci_link, %struct.hci_link* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %9, align 4
  %87 = shl i32 %86, 12
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = and i32 %90, 16383
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i8* @htole16(i32 %92)
  %94 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %12, align 8
  %95 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i8* @htole16(i32 %96)
  %98 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %12, align 8
  %99 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  %100 = load %struct.pbuf*, %struct.pbuf** %13, align 8
  %101 = load %struct.pbuf*, %struct.pbuf** %13, align 8
  %102 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %103, %104
  %106 = call i32 @physbusif_output(%struct.pbuf* %100, i32 %105)
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hci_dev, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, -1
  store i64 %110, i64* %108, align 8
  %111 = load %struct.pbuf*, %struct.pbuf** %13, align 8
  %112 = call %struct.pbuf* @btpbuf_dechain(%struct.pbuf* %111)
  store %struct.pbuf* %112, %struct.pbuf** %7, align 8
  %113 = load %struct.pbuf*, %struct.pbuf** %13, align 8
  %114 = call i32 @btpbuf_free(%struct.pbuf* %113)
  %115 = load i32, i32* @ERR_OK, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %66, %63, %34, %18
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.hci_link* @hci_get_link(%struct.bd_addr*) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local i32 @LOG(i8*, ...) #1

declare dso_local %struct.pbuf* @btpbuf_take(%struct.pbuf*) #1

declare dso_local i32 @btpbuf_ref(%struct.pbuf*) #1

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i64, i32) #1

declare dso_local i32 @btpbuf_chain(%struct.pbuf*, %struct.pbuf*) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i32 @physbusif_output(%struct.pbuf*, i32) #1

declare dso_local %struct.pbuf* @btpbuf_dechain(%struct.pbuf*) #1

declare dso_local i32 @btpbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
