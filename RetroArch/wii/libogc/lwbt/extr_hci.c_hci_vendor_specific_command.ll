; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_vendor_specific_command.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_vendor_specific_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i32, i64 }

@PBUF_RAW = common dso_local global i32 0, align 4
@HCI_W_VENDOR_CMD_PLEN = common dso_local global i64 0, align 8
@PBUF_RAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"hci_vendor_specific_patch: Could not allocate memory for pbuf\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_vendor_specific_command(i64 %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pbuf*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.pbuf* null, %struct.pbuf** %10, align 8
  %11 = load i32, i32* @PBUF_RAW, align 4
  %12 = load i64, i64* @HCI_W_VENDOR_CMD_PLEN, align 8
  %13 = load i64, i64* %9, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* @PBUF_RAM, align 4
  %16 = call %struct.pbuf* @btpbuf_alloc(i32 %11, i64 %14, i32 %15)
  store %struct.pbuf* %16, %struct.pbuf** %10, align 8
  %17 = icmp eq %struct.pbuf* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = call i32 @ERROR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ERR_MEM, align 4
  store i32 %20, i32* %5, align 4
  br label %45

21:                                               ; preds = %4
  %22 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @HCI_W_VENDOR_CMD_PLEN, align 8
  %26 = load i64, i64* %9, align 8
  %27 = add nsw i64 %25, %26
  %28 = call %struct.pbuf* @hci_cmd_ass(%struct.pbuf* %22, i64 %23, i64 %24, i64 %27)
  store %struct.pbuf* %28, %struct.pbuf** %10, align 8
  %29 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %30 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i64*
  %33 = getelementptr inbounds i64, i64* %32, i64 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @memcpy(i64* %33, i8* %34, i64 %35)
  %37 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %38 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %39 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @physbusif_output(%struct.pbuf* %37, i32 %40)
  %42 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %43 = call i32 @btpbuf_free(%struct.pbuf* %42)
  %44 = load i32, i32* @ERR_OK, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %21, %18
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i64, i32) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local %struct.pbuf* @hci_cmd_ass(%struct.pbuf*, i64, i64, i64) #1

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

declare dso_local i32 @physbusif_output(%struct.pbuf*, i32) #1

declare dso_local i32 @btpbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
