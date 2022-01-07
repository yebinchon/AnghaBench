; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ipc_voucher_receive_postprocessing.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ipc_voucher_receive_postprocessing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MACH_RCV_VOUCHER = common dso_local global i32 0, align 4
@kernel_task = common dso_local global i64 0, align 8
@MACH_VOUCHER_ATTR_AUTO_REDEEM = common dso_local global i32 0, align 4
@IVAM_FLAGS_SUPPORT_RECEIVE_POSTPROCESS = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@MACH_MSG_TYPE_MOVE_SEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_voucher_receive_postprocessing(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = load i32, i32* @MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MACH_RCV_VOUCHER, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = call i32 @IP_VALID(%struct.TYPE_9__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = call i64 (...) @current_task()
  %37 = load i64, i64* @kernel_task, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %29, %2
  store i32 1, i32* %12, align 4
  br label %83

40:                                               ; preds = %35
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = ptrtoint i32* %18 to i32
  %48 = load i32, i32* @MACH_VOUCHER_ATTR_AUTO_REDEEM, align 4
  %49 = load i32, i32* @IVAM_FLAGS_SUPPORT_RECEIVE_POSTPROCESS, align 4
  %50 = call i64 @ipc_voucher_prepare_processing_recipe(i64 %46, i32 %47, i32* %7, i32 %48, i32 %49, i32* %11)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* @KERN_SUCCESS, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %40
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @ipc_create_mach_voucher(i32* %18, i32 %59, i64* %8)
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* @KERN_SUCCESS, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* @MACH_MSG_TYPE_MOVE_SEND, align 4
  %67 = shl i32 %66, 16
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %67
  store i32 %73, i32* %71, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = call i32 @ipc_port_release_send(%struct.TYPE_9__* %76)
  %78 = load i64, i64* %8, align 8
  %79 = call %struct.TYPE_9__* @convert_voucher_to_port(i64 %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %81, align 8
  br label %82

82:                                               ; preds = %58, %40
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %82, %39
  %84 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %12, align 4
  switch i32 %85, label %87 [
    i32 0, label %86
    i32 1, label %86
  ]

86:                                               ; preds = %83, %83
  ret void

87:                                               ; preds = %83
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IP_VALID(%struct.TYPE_9__*) #2

declare dso_local i64 @current_task(...) #2

declare dso_local i64 @ipc_voucher_prepare_processing_recipe(i64, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @ipc_create_mach_voucher(i32*, i32, i64*) #2

declare dso_local i32 @ipc_port_release_send(%struct.TYPE_9__*) #2

declare dso_local %struct.TYPE_9__* @convert_voucher_to_port(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
