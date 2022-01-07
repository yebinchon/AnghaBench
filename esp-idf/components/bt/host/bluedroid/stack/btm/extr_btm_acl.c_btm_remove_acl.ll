; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_remove_acl.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_remove_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@BTM_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"btm_remove_acl\0A\00", align 1
@BTM_SEC_RS_PENDING = common dso_local global i64 0, align 8
@BTM_SEC_DISC_PENDING = common dso_local global i64 0, align 8
@BTM_SEC_STATE_DISCONNECTING = common dso_local global i64 0, align 8
@HCI_ERR_PEER_USER = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@BTM_UNKNOWN_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_remove_acl(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @BTM_GetHCIConnHandle(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %11, i32* %6, align 4
  %12 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.TYPE_3__* @btm_find_dev(i32 %13)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %7, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BTM_SEC_RS_PENDING, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i64, i64* @BTM_SEC_DISC_PENDING, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %50

27:                                               ; preds = %17, %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 65535
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BTM_SEC_STATE_DISCONNECTING, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @HCI_ERR_PEER_USER, align 4
  %42 = call i32 @btsnd_hcic_disconnect(i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %44, %39
  br label %49

47:                                               ; preds = %33, %30, %27
  %48 = load i32, i32* @BTM_UNKNOWN_ADDR, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %46
  br label %50

50:                                               ; preds = %49, %23
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @BTM_GetHCIConnHandle(i32, i32) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*) #1

declare dso_local %struct.TYPE_3__* @btm_find_dev(i32) #1

declare dso_local i32 @btsnd_hcic_disconnect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
