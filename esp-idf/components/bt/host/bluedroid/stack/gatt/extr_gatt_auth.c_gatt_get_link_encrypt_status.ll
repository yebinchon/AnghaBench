; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_auth.c_gatt_get_link_encrypt_status.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_auth.c_gatt_get_link_encrypt_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@GATT_NOT_ENCRYPTED = common dso_local global i32 0, align 4
@BTM_SEC_FLAG_ENCRYPTED = common dso_local global i32 0, align 4
@BTM_SEC_FLAG_LKEY_KNOWN = common dso_local global i32 0, align 4
@GATT_ENCRYPED_NO_MITM = common dso_local global i32 0, align 4
@BTM_SEC_FLAG_LKEY_AUTHED = common dso_local global i32 0, align 4
@GATT_ENCRYPED_MITM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"gatt_get_link_encrypt_status status=0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gatt_get_link_encrypt_status(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load i32, i32* @GATT_NOT_ENCRYPTED, align 4
  store i32 %5, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BTM_GetSecurityFlagsByTransport(i32 %8, i32* %4, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @BTM_SEC_FLAG_ENCRYPTED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @BTM_SEC_FLAG_LKEY_KNOWN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i32, i32* @GATT_ENCRYPED_NO_MITM, align 4
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @BTM_SEC_FLAG_LKEY_AUTHED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @GATT_ENCRYPED_MITM, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %22
  br label %31

31:                                               ; preds = %30, %17, %1
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @BTM_GetSecurityFlagsByTransport(i32, i32*, i32) #1

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
