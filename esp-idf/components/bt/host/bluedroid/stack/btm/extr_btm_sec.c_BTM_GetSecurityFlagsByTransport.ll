; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_BTM_GetSecurityFlagsByTransport.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_BTM_GetSecurityFlagsByTransport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@BT_TRANSPORT_BR_EDR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"BTM_GetSecurityFlags false\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_GetSecurityFlagsByTransport(i32 %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.TYPE_3__* @btm_find_dev(i32 %9)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %8, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @BT_TRANSPORT_BR_EDR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64*, i64** %6, align 8
  store i64 %20, i64* %21, align 8
  br label %29

22:                                               ; preds = %12
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 8
  %27 = sext i32 %26 to i64
  %28 = load i64*, i64** %6, align 8
  store i64 %27, i64* %28, align 8
  br label %29

29:                                               ; preds = %22, %16
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %4, align 4
  br label %34

31:                                               ; preds = %3
  %32 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %29
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.TYPE_3__* @btm_find_dev(i32) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
