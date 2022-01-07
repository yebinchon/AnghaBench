; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2ca_datawrite.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2ca_datawrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_pcb = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.pbuf = type { i64, %struct.l2cap_hdr* }
%struct.l2cap_hdr = type { i8*, i8* }

@L2CAP_OPEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"l2cap_datawrite: State != L2CAP_OPEN. Dropping data\0A\00", align 1
@ERR_CONN = common dso_local global i32 0, align 4
@PBUF_RAW = common dso_local global i32 0, align 4
@L2CAP_HDR_LEN = common dso_local global i64 0, align 8
@PBUF_RAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"l2cap_datawrite: Could not allocate memory for pbuf\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@ERR_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2ca_datawrite(%struct.l2cap_pcb* %0, %struct.pbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_pcb*, align 8
  %5 = alloca %struct.pbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.l2cap_hdr*, align 8
  %8 = alloca %struct.pbuf*, align 8
  store %struct.l2cap_pcb* %0, %struct.l2cap_pcb** %4, align 8
  store %struct.pbuf* %1, %struct.pbuf** %5, align 8
  %9 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %4, align 8
  %10 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @L2CAP_OPEN, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call i32 @ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ERR_CONN, align 4
  store i32 %16, i32* %3, align 4
  br label %90

17:                                               ; preds = %2
  %18 = load i32, i32* @PBUF_RAW, align 4
  %19 = load i64, i64* @L2CAP_HDR_LEN, align 8
  %20 = load i32, i32* @PBUF_RAM, align 4
  %21 = call %struct.pbuf* @btpbuf_alloc(i32 %18, i64 %19, i32 %20)
  store %struct.pbuf* %21, %struct.pbuf** %8, align 8
  %22 = icmp eq %struct.pbuf* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = call i32 @ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ERR_MEM, align 4
  store i32 %25, i32* %3, align 4
  br label %90

26:                                               ; preds = %17
  %27 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %28 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %29 = call i32 @btpbuf_chain(%struct.pbuf* %27, %struct.pbuf* %28)
  %30 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %31 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %30, i32 0, i32 1
  %32 = load %struct.l2cap_hdr*, %struct.l2cap_hdr** %31, align 8
  store %struct.l2cap_hdr* %32, %struct.l2cap_hdr** %7, align 8
  %33 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %4, align 8
  %34 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @htole16(i64 %35)
  %37 = load %struct.l2cap_hdr*, %struct.l2cap_hdr** %7, align 8
  %38 = getelementptr inbounds %struct.l2cap_hdr, %struct.l2cap_hdr* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %40 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %4, align 8
  %43 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %41, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %26
  %48 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %4, align 8
  %49 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i8* @htole16(i64 %51)
  %53 = load %struct.l2cap_hdr*, %struct.l2cap_hdr** %7, align 8
  %54 = getelementptr inbounds %struct.l2cap_hdr, %struct.l2cap_hdr* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %4, align 8
  %56 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %55, i32 0, i32 2
  %57 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %58 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %4, align 8
  %59 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @L2CAP_HDR_LEN, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @l2cap_write(i32* %56, %struct.pbuf* %57, i64 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* @ERR_OK, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %47
  %68 = load i32, i32* @ERR_BUF, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %67, %47
  br label %84

70:                                               ; preds = %26
  %71 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %72 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @htole16(i64 %73)
  %75 = load %struct.l2cap_hdr*, %struct.l2cap_hdr** %7, align 8
  %76 = getelementptr inbounds %struct.l2cap_hdr, %struct.l2cap_hdr* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %4, align 8
  %78 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %77, i32 0, i32 2
  %79 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %80 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %81 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @l2cap_write(i32* %78, %struct.pbuf* %79, i64 %82)
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %70, %69
  %85 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %86 = call %struct.pbuf* @btpbuf_dechain(%struct.pbuf* %85)
  store %struct.pbuf* %86, %struct.pbuf** %5, align 8
  %87 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %88 = call i32 @btpbuf_free(%struct.pbuf* %87)
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %84, %23, %14
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @ERROR(i8*) #1

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i64, i32) #1

declare dso_local i32 @btpbuf_chain(%struct.pbuf*, %struct.pbuf*) #1

declare dso_local i8* @htole16(i64) #1

declare dso_local i32 @l2cap_write(i32*, %struct.pbuf*, i64) #1

declare dso_local %struct.pbuf* @btpbuf_dechain(%struct.pbuf*) #1

declare dso_local i32 @btpbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
