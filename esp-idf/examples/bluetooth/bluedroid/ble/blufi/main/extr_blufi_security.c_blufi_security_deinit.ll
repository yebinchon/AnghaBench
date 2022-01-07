; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/blufi/main/extr_blufi_security.c_blufi_security_deinit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/blufi/main/extr_blufi_security.c_blufi_security_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_4__* }

@blufi_sec = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blufi_security_deinit() #0 {
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** @blufi_sec, align 8
  %2 = icmp eq %struct.TYPE_4__* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %27

4:                                                ; preds = %0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @blufi_sec, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @blufi_sec, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = call i32 @free(%struct.TYPE_4__* %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @blufi_sec, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %15, align 8
  br label %16

16:                                               ; preds = %9, %4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @blufi_sec, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = call i32 @mbedtls_dhm_free(i32* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @blufi_sec, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @mbedtls_aes_free(i32* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @blufi_sec, align 8
  %24 = call i32 @memset(%struct.TYPE_4__* %23, i32 0, i32 4)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @blufi_sec, align 8
  %26 = call i32 @free(%struct.TYPE_4__* %25)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** @blufi_sec, align 8
  br label %27

27:                                               ; preds = %16, %3
  ret void
}

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local i32 @mbedtls_dhm_free(i32*) #1

declare dso_local i32 @mbedtls_aes_free(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
