; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_cmd.c_bta_ag_send_bcs.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_cmd.c_bta_ag_send_bcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@UUID_CODEC_CVSD = common dso_local global i32 0, align 4
@UUID_CODEC_MSBC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"bta_ag_send_bcs: unknown codec %d, use CVSD\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"send +BCS codec is %d\00", align 1
@BTA_AG_RES_BCS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_ag_send_bcs(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @UUID_CODEC_CVSD, align 4
  store i32 %11, i32* %5, align 4
  br label %29

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %22 [
    i32 128, label %16
    i32 130, label %18
    i32 129, label %20
  ]

16:                                               ; preds = %12
  %17 = load i32, i32* @UUID_CODEC_CVSD, align 4
  store i32 %17, i32* %5, align 4
  br label %28

18:                                               ; preds = %12
  %19 = load i32, i32* @UUID_CODEC_CVSD, align 4
  store i32 %19, i32* %5, align 4
  br label %28

20:                                               ; preds = %12
  %21 = load i32, i32* @UUID_CODEC_MSBC, align 4
  store i32 %21, i32* %5, align 4
  br label %28

22:                                               ; preds = %12
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @APPL_TRACE_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @UUID_CODEC_CVSD, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %22, %20, %18, %16
  br label %29

29:                                               ; preds = %28, %10
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = load i32, i32* @BTA_AG_RES_BCS, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @bta_ag_send_result(%struct.TYPE_4__* %32, i32 %33, i32* null, i32 %34)
  ret void
}

declare dso_local i32 @APPL_TRACE_ERROR(i8*, i32) #1

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32) #1

declare dso_local i32 @bta_ag_send_result(%struct.TYPE_4__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
