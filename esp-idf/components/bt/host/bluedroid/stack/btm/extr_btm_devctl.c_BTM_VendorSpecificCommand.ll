; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_devctl.c_BTM_VendorSpecificCommand.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_devctl.c_BTM_VendorSpecificCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [62 x i8] c"BTM: BTM_VendorSpecificCommand: Opcode: 0x%04X, ParamLen: %i.\00", align 1
@HCIC_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4
@BTM_SUCCESS = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_VendorSpecificCommand(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 12, %15
  %17 = load i32, i32* @HCIC_PREAMBLE_SIZE, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %16, %18
  %20 = trunc i64 %19 to i32
  %21 = call i8* @osi_malloc(i32 %20)
  store i8* %21, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %4
  %24 = load i8*, i8** %10, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = bitcast i32* %28 to i8*
  %30 = call i32 @btsnd_hcic_vendor_spec_cmd(i8* %24, i32 %25, i32 %26, i32* %27, i8* %29)
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @BTM_CMD_STARTED, align 4
  store i32 %34, i32* %5, align 4
  br label %39

35:                                               ; preds = %23
  %36 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %36, i32* %5, align 4
  br label %39

37:                                               ; preds = %4
  %38 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %35, %33
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @BTM_TRACE_EVENT(i8*, i32, i32) #1

declare dso_local i8* @osi_malloc(i32) #1

declare dso_local i32 @btsnd_hcic_vendor_spec_cmd(i8*, i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
