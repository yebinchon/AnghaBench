; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_sec_check_pending_enc_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_sec_check_pending_enc_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i32 (i32, i64, i64, i64)*, i32 }

@btm_cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@BTM_SUCCESS = common dso_local global i64 0, align 8
@BTM_ERR_PROCESSING = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BT_TRANSPORT_BR_EDR = common dso_local global i64 0, align 8
@BTM_BLE_SEC_ENCRYPT = common dso_local global i64 0, align 8
@BTM_BLE_SEC_ENCRYPT_NO_MITM = common dso_local global i64 0, align 8
@BTM_BLE_SEC_ENCRYPT_MITM = common dso_local global i64 0, align 8
@BTM_SEC_LE_AUTHENTICATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, i64)* @btm_sec_check_pending_enc_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btm_sec_check_pending_enc_req(%struct.TYPE_6__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @btm_cb, i32 0, i32 0), align 4
  %13 = call i64 @fixed_queue_is_empty(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %116

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i64, i64* @BTM_SUCCESS, align 8
  br label %23

21:                                               ; preds = %16
  %22 = load i64, i64* @BTM_ERR_PROCESSING, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i64 [ %20, %19 ], [ %22, %21 ]
  store i64 %24, i64* %7, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @btm_cb, i32 0, i32 0), align 4
  %26 = call i32* @fixed_queue_get_list(i32 %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32* @list_begin(i32* %27)
  store i32* %28, i32** %9, align 8
  br label %29

29:                                               ; preds = %115, %23
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32* @list_end(i32* %31)
  %33 = icmp ne i32* %30, %32
  br i1 %33, label %34, label %116

34:                                               ; preds = %29
  %35 = load i32*, i32** %9, align 8
  %36 = call i64 @list_node(i32* %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %10, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32* @list_next(i32* %38)
  store i32* %39, i32** %9, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BD_ADDR_LEN, align 4
  %47 = call i64 @memcmp(i32 %42, i32 %45, i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %115

49:                                               ; preds = %34
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %115

54:                                               ; preds = %49
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %115

60:                                               ; preds = %54
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i64*
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %6, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %91, label %68

68:                                               ; preds = %60
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @BT_TRANSPORT_BR_EDR, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %91, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* @BTM_BLE_SEC_ENCRYPT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %91, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* @BTM_BLE_SEC_ENCRYPT_NO_MITM, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %91, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* @BTM_BLE_SEC_ENCRYPT_MITM, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %114

84:                                               ; preds = %80
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @BTM_SEC_LE_AUTHENTICATED, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %84, %76, %72, %68, %60
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = load i32 (i32, i64, i64, i64)*, i32 (i32, i64, i64, i64)** %93, align 8
  %95 = icmp ne i32 (i32, i64, i64, i64)* %94, null
  br i1 %95, label %96, label %109

96:                                               ; preds = %91
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = load i32 (i32, i64, i64, i64)*, i32 (i32, i64, i64, i64)** %98, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %5, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %7, align 8
  %108 = call i32 %99(i32 %102, i64 %103, i64 %106, i64 %107)
  br label %109

109:                                              ; preds = %96, %91
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @btm_cb, i32 0, i32 0), align 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %112 = bitcast %struct.TYPE_5__* %111 to i8*
  %113 = call i32 @fixed_queue_try_remove_from_queue(i32 %110, i8* %112)
  br label %114

114:                                              ; preds = %109, %84, %80
  br label %115

115:                                              ; preds = %114, %54, %49, %34
  br label %29

116:                                              ; preds = %15, %29
  ret void
}

declare dso_local i64 @fixed_queue_is_empty(i32) #1

declare dso_local i32* @fixed_queue_get_list(i32) #1

declare dso_local i32* @list_begin(i32*) #1

declare dso_local i32* @list_end(i32*) #1

declare dso_local i64 @list_node(i32*) #1

declare dso_local i32* @list_next(i32*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @fixed_queue_try_remove_from_queue(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
