; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_devctl.c_BTM_SetLocalDeviceName.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_devctl.c_BTM_SetLocalDeviceName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_5__ = type { i32 (...)* }

@BD_NAME_LEN = common dso_local global i64 0, align 8
@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@BTM_DEV_RESET = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@BTM_MAX_LOC_BD_NAME_LEN = common dso_local global i64 0, align 8
@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_SetLocalDeviceName(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = load i64, i64* @BD_NAME_LEN, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12, %7, %1
  %18 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %18, i32* %2, align 4
  br label %37

19:                                               ; preds = %12
  %20 = call %struct.TYPE_5__* (...) @controller_get_interface()
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32 (...)*, i32 (...)** %21, align 8
  %23 = call i32 (...) %22()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @BTM_DEV_RESET, align 4
  store i32 %26, i32* %2, align 4
  br label %37

27:                                               ; preds = %19
  %28 = load i8*, i8** %3, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %4, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i64 @btsnd_hcic_change_name(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @BTM_CMD_STARTED, align 4
  store i32 %34, i32* %2, align 4
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %33, %25, %17
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_5__* @controller_get_interface(...) #1

declare dso_local i64 @btsnd_hcic_change_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
