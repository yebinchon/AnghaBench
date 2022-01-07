; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_physbusif.c_physbusif_output.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_physbusif.c_physbusif_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.memb_blks = type { i32 }
%struct.pbuf = type { i64, i64, %struct.pbuf* }
%struct.usbtxbuf = type { i8*, i64 }

@__usbdev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@HCI_COMMAND_DATA_PACKET = common dso_local global i64 0, align 8
@ctrlbufs = common dso_local global %struct.memb_blks zeroinitializer, align 4
@HCI_ACL_DATA_PACKET = common dso_local global i64 0, align 8
@aclbufs = common dso_local global %struct.memb_blks zeroinitializer, align 4
@__writectrlmsgCB = common dso_local global i32 0, align 4
@__writebulkmsgCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @physbusif_output(%struct.pbuf* %0, i64 %1) #0 {
  %3 = alloca %struct.pbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.pbuf*, align 8
  %8 = alloca %struct.memb_blks*, align 8
  %9 = alloca %struct.usbtxbuf*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__usbdev, i32 0, i32 0), align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %139

13:                                               ; preds = %2
  %14 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i64*
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HCI_COMMAND_DATA_PACKET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store %struct.memb_blks* @ctrlbufs, %struct.memb_blks** %8, align 8
  br label %35

23:                                               ; preds = %13
  %24 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %25 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i64*
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HCI_ACL_DATA_PACKET, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store %struct.memb_blks* @aclbufs, %struct.memb_blks** %8, align 8
  br label %34

33:                                               ; preds = %23
  br label %139

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34, %22
  %36 = load %struct.memb_blks*, %struct.memb_blks** %8, align 8
  %37 = call %struct.usbtxbuf* @btmemb_alloc(%struct.memb_blks* %36)
  store %struct.usbtxbuf* %37, %struct.usbtxbuf** %9, align 8
  %38 = load %struct.usbtxbuf*, %struct.usbtxbuf** %9, align 8
  %39 = icmp ne %struct.usbtxbuf* %38, null
  br i1 %39, label %40, label %139

40:                                               ; preds = %35
  %41 = load i64, i64* %4, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %4, align 8
  %43 = load %struct.usbtxbuf*, %struct.usbtxbuf** %9, align 8
  %44 = getelementptr inbounds %struct.usbtxbuf, %struct.usbtxbuf* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.usbtxbuf*, %struct.usbtxbuf** %9, align 8
  %46 = ptrtoint %struct.usbtxbuf* %45 to i64
  %47 = add i64 %46, 16
  %48 = call i64 @ROUNDUP32(i64 %47)
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.usbtxbuf*, %struct.usbtxbuf** %9, align 8
  %51 = getelementptr inbounds %struct.usbtxbuf, %struct.usbtxbuf* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.usbtxbuf*, %struct.usbtxbuf** %9, align 8
  %53 = getelementptr inbounds %struct.usbtxbuf, %struct.usbtxbuf* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = bitcast i8* %54 to i64*
  store i64* %55, i64** %6, align 8
  %56 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  store %struct.pbuf* %56, %struct.pbuf** %7, align 8
  store i64 1, i64* %5, align 8
  br label %57

57:                                               ; preds = %92, %40
  %58 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %59 = icmp ne %struct.pbuf* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i64, i64* %4, align 8
  %62 = icmp sgt i64 %61, 0
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i1 [ false, %57 ], [ %62, %60 ]
  br i1 %64, label %65, label %96

65:                                               ; preds = %63
  %66 = load i64*, i64** %6, align 8
  %67 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %68 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %5, align 8
  %71 = add nsw i64 %69, %70
  %72 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %73 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %5, align 8
  %76 = sub nsw i64 %74, %75
  %77 = call i32 @memcpy(i64* %66, i64 %71, i64 %76)
  %78 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %79 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = sub nsw i64 %80, %81
  %83 = load i64*, i64** %6, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 %82
  store i64* %84, i64** %6, align 8
  %85 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %86 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %5, align 8
  %89 = sub nsw i64 %87, %88
  %90 = load i64, i64* %4, align 8
  %91 = sub nsw i64 %90, %89
  store i64 %91, i64* %4, align 8
  br label %92

92:                                               ; preds = %65
  %93 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %94 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %93, i32 0, i32 2
  %95 = load %struct.pbuf*, %struct.pbuf** %94, align 8
  store %struct.pbuf* %95, %struct.pbuf** %7, align 8
  store i64 0, i64* %5, align 8
  br label %57

96:                                               ; preds = %63
  %97 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %98 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i64*
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @HCI_COMMAND_DATA_PACKET, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %96
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__usbdev, i32 0, i32 2), align 4
  %107 = load %struct.usbtxbuf*, %struct.usbtxbuf** %9, align 8
  %108 = getelementptr inbounds %struct.usbtxbuf, %struct.usbtxbuf* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.usbtxbuf*, %struct.usbtxbuf** %9, align 8
  %111 = getelementptr inbounds %struct.usbtxbuf, %struct.usbtxbuf* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* @__writectrlmsgCB, align 4
  %114 = load %struct.usbtxbuf*, %struct.usbtxbuf** %9, align 8
  %115 = call i32 @USB_WriteCtrlMsgAsync(i32 %106, i32 32, i32 0, i32 0, i32 0, i64 %109, i8* %112, i32 %113, %struct.usbtxbuf* %114)
  br label %138

116:                                              ; preds = %96
  %117 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %118 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i64*
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @HCI_ACL_DATA_PACKET, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %116
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__usbdev, i32 0, i32 2), align 4
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__usbdev, i32 0, i32 1), align 4
  %128 = load %struct.usbtxbuf*, %struct.usbtxbuf** %9, align 8
  %129 = getelementptr inbounds %struct.usbtxbuf, %struct.usbtxbuf* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.usbtxbuf*, %struct.usbtxbuf** %9, align 8
  %132 = getelementptr inbounds %struct.usbtxbuf, %struct.usbtxbuf* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load i32, i32* @__writebulkmsgCB, align 4
  %135 = load %struct.usbtxbuf*, %struct.usbtxbuf** %9, align 8
  %136 = call i32 @USB_WriteBlkMsgAsync(i32 %126, i32 %127, i64 %130, i8* %133, i32 %134, %struct.usbtxbuf* %135)
  br label %137

137:                                              ; preds = %125, %116
  br label %138

138:                                              ; preds = %137, %105
  br label %139

139:                                              ; preds = %12, %33, %138, %35
  ret void
}

declare dso_local %struct.usbtxbuf* @btmemb_alloc(%struct.memb_blks*) #1

declare dso_local i64 @ROUNDUP32(i64) #1

declare dso_local i32 @memcpy(i64*, i64, i64) #1

declare dso_local i32 @USB_WriteCtrlMsgAsync(i32, i32, i32, i32, i32, i64, i8*, i32, %struct.usbtxbuf*) #1

declare dso_local i32 @USB_WriteBlkMsgAsync(i32, i32, i64, i8*, i32, %struct.usbtxbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
