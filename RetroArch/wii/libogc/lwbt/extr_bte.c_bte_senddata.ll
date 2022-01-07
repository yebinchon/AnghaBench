; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_senddata.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_senddata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bte_pcb = type { i64, i32 }
%struct.pbuf = type { i64 }

@ERR_VAL = common dso_local global i32 0, align 4
@STATE_DISCONNECTING = common dso_local global i64 0, align 8
@STATE_DISCONNECTED = common dso_local global i64 0, align 8
@ERR_CLSD = common dso_local global i32 0, align 4
@PBUF_RAW = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"bte_senddata: Could not allocate memory for pbuf\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@HIDP_TRANS_DATA = common dso_local global i32 0, align 4
@HIDP_DATA_RTYPE_OUPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bte_senddata(%struct.bte_pcb* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bte_pcb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pbuf*, align 8
  store %struct.bte_pcb* %0, %struct.bte_pcb** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.bte_pcb*, %struct.bte_pcb** %5, align 8
  %11 = icmp eq %struct.bte_pcb* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %12, %3
  %19 = load i32, i32* @ERR_VAL, align 4
  store i32 %19, i32* %4, align 4
  br label %68

20:                                               ; preds = %15
  %21 = load %struct.bte_pcb*, %struct.bte_pcb** %5, align 8
  %22 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @STATE_DISCONNECTING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.bte_pcb*, %struct.bte_pcb** %5, align 8
  %28 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @STATE_DISCONNECTED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %20
  %33 = load i32, i32* @ERR_CLSD, align 4
  store i32 %33, i32* %4, align 4
  br label %68

34:                                               ; preds = %26
  %35 = load i32, i32* @PBUF_RAW, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 1, %36
  %38 = load i32, i32* @PBUF_RAM, align 4
  %39 = call %struct.pbuf* @btpbuf_alloc(i32 %35, i32 %37, i32 %38)
  store %struct.pbuf* %39, %struct.pbuf** %9, align 8
  %40 = icmp eq %struct.pbuf* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = call i32 @ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ERR_MEM, align 4
  store i32 %43, i32* %4, align 4
  br label %68

44:                                               ; preds = %34
  %45 = load i32, i32* @HIDP_TRANS_DATA, align 4
  %46 = load i32, i32* @HIDP_DATA_RTYPE_OUPUT, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %49 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %47, i32* %52, align 4
  %53 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %54 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @memcpy(i64 %56, i8* %57, i32 %58)
  %60 = load %struct.bte_pcb*, %struct.bte_pcb** %5, align 8
  %61 = getelementptr inbounds %struct.bte_pcb, %struct.bte_pcb* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %64 = call i32 @l2ca_datawrite(i32 %62, %struct.pbuf* %63)
  store i32 %64, i32* %8, align 4
  %65 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %66 = call i32 @btpbuf_free(%struct.pbuf* %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %44, %41, %32, %18
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @l2ca_datawrite(i32, %struct.pbuf*) #1

declare dso_local i32 @btpbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
