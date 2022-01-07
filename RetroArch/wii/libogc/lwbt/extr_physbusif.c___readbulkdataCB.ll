; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_physbusif.c___readbulkdataCB.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_physbusif.c___readbulkdataCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pbuf = type { i64, i32, %struct.pbuf* }
%struct.usbtxbuf = type { i32* }

@__usbdev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PBUF_RAW = common dso_local global i32 0, align 4
@PBUF_POOL = common dso_local global i32 0, align 4
@hci_acldata_handler = common dso_local global i64 0, align 8
@__ppc_btstack2 = common dso_local global i32* null, align 8
@STACKSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"__readbulkdataCB: Could not allocate memory for pbuf.\0A\00", align 1
@aclbufs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*)* @__readbulkdataCB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__readbulkdataCB(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pbuf*, align 8
  %9 = alloca %struct.pbuf*, align 8
  %10 = alloca %struct.usbtxbuf*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.usbtxbuf*
  store %struct.usbtxbuf* %12, %struct.usbtxbuf** %10, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__usbdev, i32 0, i32 0), align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %81

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %77

19:                                               ; preds = %16
  %20 = load i64, i64* %4, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i32, i32* @PBUF_RAW, align 4
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* @PBUF_POOL, align 4
  %24 = call %struct.pbuf* @btpbuf_alloc(i32 %21, i64 %22, i32 %23)
  store %struct.pbuf* %24, %struct.pbuf** %8, align 8
  %25 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %26 = icmp ne %struct.pbuf* %25, null
  br i1 %26, label %27, label %74

27:                                               ; preds = %19
  %28 = load %struct.usbtxbuf*, %struct.usbtxbuf** %10, align 8
  %29 = getelementptr inbounds %struct.usbtxbuf, %struct.usbtxbuf* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %6, align 8
  %31 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  store %struct.pbuf* %31, %struct.pbuf** %9, align 8
  br label %32

32:                                               ; preds = %59, %27
  %33 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %34 = icmp ne %struct.pbuf* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i64, i64* %7, align 8
  %37 = icmp sgt i64 %36, 0
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i1 [ false, %32 ], [ %37, %35 ]
  br i1 %39, label %40, label %63

40:                                               ; preds = %38
  %41 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %42 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %46 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @memcpy(i32 %43, i32* %44, i64 %47)
  %49 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %50 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 %51
  store i32* %53, i32** %6, align 8
  %54 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %55 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = sub nsw i64 %57, %56
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %40
  %60 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %61 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %60, i32 0, i32 2
  %62 = load %struct.pbuf*, %struct.pbuf** %61, align 8
  store %struct.pbuf* %62, %struct.pbuf** %9, align 8
  br label %32

63:                                               ; preds = %38
  %64 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %65 = ptrtoint %struct.pbuf* %64 to i64
  %66 = load i64, i64* @hci_acldata_handler, align 8
  %67 = load i32*, i32** @__ppc_btstack2, align 8
  %68 = load i64, i64* @STACKSIZE, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = ptrtoint i32* %69 to i64
  %71 = call i32 @SYS_SwitchFiber(i64 %65, i32 0, i32 0, i32 0, i64 %66, i64 %70)
  %72 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %73 = call i32 @btpbuf_free(%struct.pbuf* %72)
  br label %76

74:                                               ; preds = %19
  %75 = call i32 @ERROR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %63
  br label %77

77:                                               ; preds = %76, %16
  %78 = load %struct.usbtxbuf*, %struct.usbtxbuf** %10, align 8
  %79 = call i32 @btmemb_free(i32* @aclbufs, %struct.usbtxbuf* %78)
  %80 = call i64 (...) @__issue_bulkread()
  store i64 %80, i64* %3, align 8
  br label %81

81:                                               ; preds = %77, %15
  %82 = load i64, i64* %3, align 8
  ret i64 %82
}

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i64, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @SYS_SwitchFiber(i64, i32, i32, i32, i64, i64) #1

declare dso_local i32 @btpbuf_free(%struct.pbuf*) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local i32 @btmemb_free(i32*, %struct.usbtxbuf*) #1

declare dso_local i64 @__issue_bulkread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
