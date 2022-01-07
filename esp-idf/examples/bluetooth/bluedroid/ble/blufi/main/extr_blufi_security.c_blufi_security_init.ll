; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/blufi/main/extr_blufi_security.c_blufi_security_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/blufi/main/extr_blufi_security.c_blufi_security_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blufi_security = type { %struct.blufi_security*, i32, i32 }

@blufi_sec = common dso_local global %struct.blufi_security* null, align 8
@ESP_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blufi_security_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @malloc(i32 16)
  %3 = inttoptr i64 %2 to %struct.blufi_security*
  store %struct.blufi_security* %3, %struct.blufi_security** @blufi_sec, align 8
  %4 = load %struct.blufi_security*, %struct.blufi_security** @blufi_sec, align 8
  %5 = icmp eq %struct.blufi_security* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @ESP_FAIL, align 4
  store i32 %7, i32* %1, align 4
  br label %21

8:                                                ; preds = %0
  %9 = load %struct.blufi_security*, %struct.blufi_security** @blufi_sec, align 8
  %10 = call i32 @memset(%struct.blufi_security* %9, i32 0, i32 16)
  %11 = load %struct.blufi_security*, %struct.blufi_security** @blufi_sec, align 8
  %12 = getelementptr inbounds %struct.blufi_security, %struct.blufi_security* %11, i32 0, i32 2
  %13 = call i32 @mbedtls_dhm_init(i32* %12)
  %14 = load %struct.blufi_security*, %struct.blufi_security** @blufi_sec, align 8
  %15 = getelementptr inbounds %struct.blufi_security, %struct.blufi_security* %14, i32 0, i32 1
  %16 = call i32 @mbedtls_aes_init(i32* %15)
  %17 = load %struct.blufi_security*, %struct.blufi_security** @blufi_sec, align 8
  %18 = getelementptr inbounds %struct.blufi_security, %struct.blufi_security* %17, i32 0, i32 0
  %19 = load %struct.blufi_security*, %struct.blufi_security** %18, align 8
  %20 = call i32 @memset(%struct.blufi_security* %19, i32 0, i32 16)
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %8, %6
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.blufi_security*, i32, i32) #1

declare dso_local i32 @mbedtls_dhm_init(i32*) #1

declare dso_local i32 @mbedtls_aes_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
