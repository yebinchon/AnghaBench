; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ipc_voucher_send_preprocessing.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ipc_voucher_send_preprocessing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@kernel_task = common dso_local global i64 0, align 8
@MACH_VOUCHER_ATTR_SEND_PREPROCESS = common dso_local global i32 0, align 4
@IVAM_FLAGS_SUPPORT_SEND_PREPROCESS = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_voucher_send_preprocessing(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %11 = load i32, i32* @MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %3, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %4, align 8
  %17 = load i32, i32* @MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = call i32 @IP_VALID(%struct.TYPE_7__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = call i64 (...) @current_task()
  %30 = load i64, i64* @kernel_task, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %1
  store i32 1, i32* %10, align 4
  br label %68

33:                                               ; preds = %28
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = ptrtoint i32* %16 to i32
  %41 = load i32, i32* @MACH_VOUCHER_ATTR_SEND_PREPROCESS, align 4
  %42 = load i32, i32* @IVAM_FLAGS_SUPPORT_SEND_PREPROCESS, align 4
  %43 = call i64 @ipc_voucher_prepare_processing_recipe(i64 %39, i32 %40, i32* %5, i32 %41, i32 %42, i32* %9)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* @KERN_SUCCESS, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %33
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @ipc_create_mach_voucher(i32* %16, i32 %52, i64* %7)
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* @KERN_SUCCESS, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = call i32 @ipc_port_release_send(%struct.TYPE_7__* %61)
  %63 = load i64, i64* %7, align 8
  %64 = call %struct.TYPE_7__* @convert_voucher_to_port(i64 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %66, align 8
  br label %67

67:                                               ; preds = %51, %33
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %67, %32
  %69 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %10, align 4
  switch i32 %70, label %72 [
    i32 0, label %71
    i32 1, label %71
  ]

71:                                               ; preds = %68, %68
  ret void

72:                                               ; preds = %68
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IP_VALID(%struct.TYPE_7__*) #2

declare dso_local i64 @current_task(...) #2

declare dso_local i64 @ipc_voucher_prepare_processing_recipe(i64, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @ipc_create_mach_voucher(i32*, i32, i64*) #2

declare dso_local i32 @ipc_port_release_send(%struct.TYPE_7__*) #2

declare dso_local %struct.TYPE_7__* @convert_voucher_to_port(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
