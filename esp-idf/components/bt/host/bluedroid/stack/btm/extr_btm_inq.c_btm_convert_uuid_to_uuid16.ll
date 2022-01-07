; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_convert_uuid_to_uuid16.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_convert_uuid_to_uuid16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@btm_convert_uuid_to_uuid16.base_uuid = internal constant <{ [10 x i32], [120 x i32] }> <{ [10 x i32] [i32 251, i32 52, i32 155, i32 95, i32 128, i32 0, i32 0, i32 128, i32 0, i32 16], [120 x i32] zeroinitializer }>, align 16
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"btm_convert_uuid_to_uuid16 invalid uuid size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @btm_convert_uuid_to_uuid16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btm_convert_uuid_to_uuid16(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %66 [
    i32 129, label %10
    i32 128, label %14
    i32 130, label %23
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @STREAM_TO_UINT16(i32 %11, i32* %12)
  br label %68

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @STREAM_TO_UINT32(i32 %15, i32* %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 65536
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %20, %14
  br label %68

23:                                               ; preds = %2
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %42, %23
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 126
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [130 x i32], [130 x i32]* bitcast (<{ [10 x i32], [120 x i32] }>* @btm_convert_uuid_to_uuid16.base_uuid to [130 x i32]*), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %33, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %7, align 4
  br label %45

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %25

45:                                               ; preds = %39, %25
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load i32*, i32** %3, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 129
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load i32*, i32** %3, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 128
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32*, i32** %3, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 126
  store i32* %60, i32** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @STREAM_TO_UINT16(i32 %61, i32* %62)
  br label %64

64:                                               ; preds = %58, %53, %48
  br label %65

65:                                               ; preds = %64, %45
  br label %68

66:                                               ; preds = %2
  %67 = call i32 @BTM_TRACE_WARNING(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %65, %22, %10
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @STREAM_TO_UINT16(i32, i32*) #1

declare dso_local i32 @STREAM_TO_UINT32(i32, i32*) #1

declare dso_local i32 @BTM_TRACE_WARNING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
