; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_read_remote_ext_features_failed.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_read_remote_ext_features_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [67 x i8] c"btm_read_remote_ext_features_failed (status 0x%02x) for handle %d\0A\00", align 1
@MAX_L2CAP_LINKS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"btm_read_remote_ext_features_failed handle=%d invalid\0A\00", align 1
@btm_cb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_read_remote_ext_features_failed(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @BTM_TRACE_WARNING(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @btm_handle_to_acl_index(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* @MAX_L2CAP_LINKS, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %25

17:                                               ; preds = %2
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @btm_cb, i32 0, i32 0), align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @btm_process_remote_ext_features(i32* %21, i32 1)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @btm_establish_continue(i32* %23)
  br label %25

25:                                               ; preds = %17, %14
  ret void
}

declare dso_local i32 @BTM_TRACE_WARNING(i8*, i64, i32) #1

declare dso_local i64 @btm_handle_to_acl_index(i32) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*, i32) #1

declare dso_local i32 @btm_process_remote_ext_features(i32*, i32) #1

declare dso_local i32 @btm_establish_continue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
