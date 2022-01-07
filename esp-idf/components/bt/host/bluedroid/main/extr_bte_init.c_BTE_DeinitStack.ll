; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/main/extr_bte_init.c_BTE_DeinitStack.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/main/extr_bte_init.c_BTE_DeinitStack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bta_gatts_cb_ptr = common dso_local global i32* null, align 8
@bta_gattc_cb_ptr = common dso_local global i32* null, align 8
@bta_hh_cb_ptr = common dso_local global i32* null, align 8
@bta_av_cb_ptr = common dso_local global i32* null, align 8
@bta_av_sbc_ups_cb_ptr = common dso_local global i32* null, align 8
@bta_ar_cb_ptr = common dso_local global i32* null, align 8
@g_disc_raw_data_buf = common dso_local global i32* null, align 8
@bta_sdp_cb_ptr = common dso_local global i32* null, align 8
@bta_dm_conn_srvcs_ptr = common dso_local global i32* null, align 8
@bta_dm_di_cb_ptr = common dso_local global i32* null, align 8
@bta_dm_search_cb_ptr = common dso_local global i32* null, align 8
@bta_dm_cb_ptr = common dso_local global i32* null, align 8
@bta_sys_cb_ptr = common dso_local global i32* null, align 8
@avct_cb_ptr = common dso_local global i32* null, align 8
@avdt_cb_ptr = common dso_local global i32* null, align 8
@bta_hf_client_cb_ptr = common dso_local global i32* null, align 8
@bta_jv_cb_ptr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BTE_DeinitStack() #0 {
  %1 = load i32*, i32** @bta_gatts_cb_ptr, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32*, i32** @bta_gatts_cb_ptr, align 8
  %5 = call i32 @osi_free(i32* %4)
  store i32* null, i32** @bta_gatts_cb_ptr, align 8
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32*, i32** @bta_gattc_cb_ptr, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32*, i32** @bta_gattc_cb_ptr, align 8
  %11 = call i32 @osi_free(i32* %10)
  store i32* null, i32** @bta_gattc_cb_ptr, align 8
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32*, i32** @bta_hh_cb_ptr, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32*, i32** @bta_hh_cb_ptr, align 8
  %17 = call i32 @osi_free(i32* %16)
  store i32* null, i32** @bta_hh_cb_ptr, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32*, i32** @bta_av_cb_ptr, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** @bta_av_cb_ptr, align 8
  %23 = call i32 @osi_free(i32* %22)
  store i32* null, i32** @bta_av_cb_ptr, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32*, i32** @bta_av_sbc_ups_cb_ptr, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** @bta_av_sbc_ups_cb_ptr, align 8
  %29 = call i32 @osi_free(i32* %28)
  store i32* null, i32** @bta_av_sbc_ups_cb_ptr, align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32*, i32** @bta_ar_cb_ptr, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32*, i32** @bta_ar_cb_ptr, align 8
  %35 = call i32 @osi_free(i32* %34)
  store i32* null, i32** @bta_ar_cb_ptr, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32*, i32** @g_disc_raw_data_buf, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32*, i32** @g_disc_raw_data_buf, align 8
  %41 = call i32 @osi_free(i32* %40)
  store i32* null, i32** @g_disc_raw_data_buf, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32*, i32** @bta_sdp_cb_ptr, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32*, i32** @bta_sdp_cb_ptr, align 8
  %47 = call i32 @osi_free(i32* %46)
  store i32* null, i32** @bta_sdp_cb_ptr, align 8
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32*, i32** @bta_dm_conn_srvcs_ptr, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32*, i32** @bta_dm_conn_srvcs_ptr, align 8
  %53 = call i32 @osi_free(i32* %52)
  store i32* null, i32** @bta_dm_conn_srvcs_ptr, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32*, i32** @bta_dm_di_cb_ptr, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32*, i32** @bta_dm_di_cb_ptr, align 8
  %59 = call i32 @osi_free(i32* %58)
  store i32* null, i32** @bta_dm_di_cb_ptr, align 8
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32*, i32** @bta_dm_search_cb_ptr, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32*, i32** @bta_dm_search_cb_ptr, align 8
  %65 = call i32 @osi_free(i32* %64)
  store i32* null, i32** @bta_dm_search_cb_ptr, align 8
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32*, i32** @bta_dm_cb_ptr, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32*, i32** @bta_dm_cb_ptr, align 8
  %71 = call i32 @osi_free(i32* %70)
  store i32* null, i32** @bta_dm_cb_ptr, align 8
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32*, i32** @bta_sys_cb_ptr, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32*, i32** @bta_sys_cb_ptr, align 8
  %77 = call i32 @osi_free(i32* %76)
  store i32* null, i32** @bta_sys_cb_ptr, align 8
  br label %78

78:                                               ; preds = %75, %72
  ret void
}

declare dso_local i32 @osi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
