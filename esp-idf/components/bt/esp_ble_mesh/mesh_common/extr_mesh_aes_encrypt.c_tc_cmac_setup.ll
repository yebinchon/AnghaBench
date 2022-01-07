; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_common/extr_mesh_aes_encrypt.c_tc_cmac_setup.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_common/extr_mesh_aes_encrypt.c_tc_cmac_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32 }

@TC_CRYPTO_FAIL = common dso_local global i32 0, align 4
@TC_AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@TC_CRYPTO_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tc_cmac_setup(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %9 = icmp eq %struct.TYPE_9__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @TC_CRYPTO_FAIL, align 4
  store i32 %14, i32* %4, align 4
  br label %58

15:                                               ; preds = %10
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = call i32 @_set(%struct.TYPE_9__* %16, i32 0, i32 32)
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @tc_aes128_set_encrypt_key(i32 %23, i32* %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = load i32, i32* @TC_AES_BLOCK_SIZE, align 4
  %30 = call i32 @_set(%struct.TYPE_9__* %28, i32 0, i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @tc_aes_encrypt(%struct.TYPE_9__* %33, %struct.TYPE_9__* %36, i32 %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = call i32 @gf_double(%struct.TYPE_9__* %43, %struct.TYPE_9__* %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = call i32 @gf_double(%struct.TYPE_9__* %50, %struct.TYPE_9__* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = call i32 @tc_cmac_init(%struct.TYPE_9__* %55)
  %57 = load i32, i32* @TC_CRYPTO_SUCCESS, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %15, %13
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @_set(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @tc_aes128_set_encrypt_key(i32, i32*) #1

declare dso_local i32 @tc_aes_encrypt(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @gf_double(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @tc_cmac_init(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
