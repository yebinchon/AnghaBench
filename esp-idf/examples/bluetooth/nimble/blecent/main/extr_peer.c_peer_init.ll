; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_peer.c_peer_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_peer.c_peer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@peer_mem = common dso_local global i32* null, align 8
@BLE_HS_ENOMEM = common dso_local global i32 0, align 4
@peer_pool = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"peer_pool\00", align 1
@BLE_HS_EOS = common dso_local global i32 0, align 4
@peer_svc_mem = common dso_local global i32* null, align 8
@peer_svc_pool = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"peer_svc_pool\00", align 1
@peer_chr_mem = common dso_local global i32* null, align 8
@peer_chr_pool = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"peer_chr_pool\00", align 1
@peer_dsc_mem = common dso_local global i32* null, align 8
@peer_dsc_pool = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"peer_dsc_pool\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @peer_init(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call i32 (...) @peer_free_mem()
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @OS_MEMPOOL_BYTES(i32 %12, i32 4)
  %14 = call i32* @malloc(i32 %13)
  store i32* %14, i32** @peer_mem, align 8
  %15 = load i32*, i32** @peer_mem, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @BLE_HS_ENOMEM, align 4
  store i32 %18, i32* %10, align 4
  br label %76

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = load i32*, i32** @peer_mem, align 8
  %22 = call i32 @os_mempool_init(i32* @peer_pool, i32 %20, i32 4, i32* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @BLE_HS_EOS, align 4
  store i32 %26, i32* %10, align 4
  br label %76

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @OS_MEMPOOL_BYTES(i32 %28, i32 4)
  %30 = call i32* @malloc(i32 %29)
  store i32* %30, i32** @peer_svc_mem, align 8
  %31 = load i32*, i32** @peer_svc_mem, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @BLE_HS_ENOMEM, align 4
  store i32 %34, i32* %10, align 4
  br label %76

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** @peer_svc_mem, align 8
  %38 = call i32 @os_mempool_init(i32* @peer_svc_pool, i32 %36, i32 4, i32* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @BLE_HS_EOS, align 4
  store i32 %42, i32* %10, align 4
  br label %76

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @OS_MEMPOOL_BYTES(i32 %44, i32 4)
  %46 = call i32* @malloc(i32 %45)
  store i32* %46, i32** @peer_chr_mem, align 8
  %47 = load i32*, i32** @peer_chr_mem, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @BLE_HS_ENOMEM, align 4
  store i32 %50, i32* %10, align 4
  br label %76

51:                                               ; preds = %43
  %52 = load i32, i32* %8, align 4
  %53 = load i32*, i32** @peer_chr_mem, align 8
  %54 = call i32 @os_mempool_init(i32* @peer_chr_pool, i32 %52, i32 4, i32* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @BLE_HS_EOS, align 4
  store i32 %58, i32* %10, align 4
  br label %76

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @OS_MEMPOOL_BYTES(i32 %60, i32 4)
  %62 = call i32* @malloc(i32 %61)
  store i32* %62, i32** @peer_dsc_mem, align 8
  %63 = load i32*, i32** @peer_dsc_mem, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @BLE_HS_ENOMEM, align 4
  store i32 %66, i32* %10, align 4
  br label %76

67:                                               ; preds = %59
  %68 = load i32, i32* %9, align 4
  %69 = load i32*, i32** @peer_dsc_mem, align 8
  %70 = call i32 @os_mempool_init(i32* @peer_dsc_pool, i32 %68, i32 4, i32* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @BLE_HS_EOS, align 4
  store i32 %74, i32* %10, align 4
  br label %76

75:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %79

76:                                               ; preds = %73, %65, %57, %49, %41, %33, %25, %17
  %77 = call i32 (...) @peer_free_mem()
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %76, %75
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @peer_free_mem(...) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @OS_MEMPOOL_BYTES(i32, i32) #1

declare dso_local i32 @os_mempool_init(i32*, i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
