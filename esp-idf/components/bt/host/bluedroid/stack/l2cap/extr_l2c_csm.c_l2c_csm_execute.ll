; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_csm.c_l2c_csm_execute.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_csm.c_l2c_csm_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Unhandled event! event = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2c_csm_execute(%struct.TYPE_12__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %55 [
    i32 136, label %10
    i32 133, label %15
    i32 132, label %20
    i32 131, label %25
    i32 129, label %30
    i32 135, label %35
    i32 134, label %40
    i32 130, label %45
    i32 128, label %50
  ]

10:                                               ; preds = %3
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @l2c_csm_closed(%struct.TYPE_12__* %11, i32 %12, i8* %13)
  br label %58

15:                                               ; preds = %3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @l2c_csm_orig_w4_sec_comp(%struct.TYPE_12__* %16, i32 %17, i8* %18)
  br label %58

20:                                               ; preds = %3
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @l2c_csm_term_w4_sec_comp(%struct.TYPE_12__* %21, i32 %22, i8* %23)
  br label %58

25:                                               ; preds = %3
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @l2c_csm_w4_l2cap_connect_rsp(%struct.TYPE_12__* %26, i32 %27, i8* %28)
  br label %58

30:                                               ; preds = %3
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @l2c_csm_w4_l2ca_connect_rsp(%struct.TYPE_12__* %31, i32 %32, i8* %33)
  br label %58

35:                                               ; preds = %3
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @l2c_csm_config(%struct.TYPE_12__* %36, i32 %37, i8* %38)
  br label %58

40:                                               ; preds = %3
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @l2c_csm_open(%struct.TYPE_12__* %41, i32 %42, i8* %43)
  br label %58

45:                                               ; preds = %3
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @l2c_csm_w4_l2cap_disconnect_rsp(%struct.TYPE_12__* %46, i32 %47, i8* %48)
  br label %58

50:                                               ; preds = %3
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @l2c_csm_w4_l2ca_disconnect_rsp(%struct.TYPE_12__* %51, i32 %52, i8* %53)
  br label %58

55:                                               ; preds = %3
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %55, %50, %45, %40, %35, %30, %25, %20, %15, %10
  ret void
}

declare dso_local i32 @l2c_csm_closed(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @l2c_csm_orig_w4_sec_comp(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @l2c_csm_term_w4_sec_comp(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @l2c_csm_w4_l2cap_connect_rsp(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @l2c_csm_w4_l2ca_connect_rsp(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @l2c_csm_config(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @l2c_csm_open(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @l2c_csm_w4_l2cap_disconnect_rsp(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @l2c_csm_w4_l2ca_disconnect_rsp(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @L2CAP_TRACE_DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
