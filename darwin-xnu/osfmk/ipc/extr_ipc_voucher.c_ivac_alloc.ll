; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ivac_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ivac_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_7__*, i32, i8*, i32 }
%struct.TYPE_7__ = type { i32, i8* }

@ipc_voucher_attr_control_zone = common dso_local global i32 0, align 4
@IVAC_NULL = common dso_local global %struct.TYPE_8__* null, align 8
@ivac_refgrp = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@IP_NULL = common dso_local global i32 0, align 4
@IVAC_ENTRIES_MIN = common dso_local global i32 0, align 4
@IV_HASH_END = common dso_local global i32 0, align 4
@IV_FREELIST_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @ivac_alloc(i32 %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @ipc_voucher_attr_control_zone, align 4
  %8 = call i64 @zalloc(i32 %7)
  %9 = inttoptr i64 %8 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @IVAC_NULL, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = icmp eq %struct.TYPE_8__* %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @IVAC_NULL, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %2, align 8
  br label %80

15:                                               ; preds = %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 7
  %18 = call i32 @os_ref_init(i32* %17, i32* @ivac_refgrp)
  %19 = load i8*, i8** @FALSE, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 6
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* @IP_NULL, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @IVAC_ENTRIES_MIN, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i64 @kalloc(i32 %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %5, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 4
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %33, align 8
  %34 = load i32, i32* @IVAC_ENTRIES_MIN, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @IVAC_ENTRIES_MIN, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  store i64 0, i64* %6, align 8
  br label %40

40:                                               ; preds = %54, %15
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %41, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %49
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 1
  %53 = call i32 @ivace_reset_data(%struct.TYPE_7__* %50, i64 %52)
  br label %54

54:                                               ; preds = %47
  %55 = load i64, i64* %6, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %6, align 8
  br label %40

57:                                               ; preds = %40
  %58 = load i32, i32* @IV_HASH_END, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load i8*, i8** @FALSE, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  %66 = load i32, i32* @IV_FREELIST_END, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = sub i64 %68, 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  store i32 1, i32* %73, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = call i32 @ivac_lock_init(%struct.TYPE_8__* %74)
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %2, align 8
  br label %80

80:                                               ; preds = %57, %13
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %81
}

declare dso_local i64 @zalloc(i32) #1

declare dso_local i32 @os_ref_init(i32*, i32*) #1

declare dso_local i64 @kalloc(i32) #1

declare dso_local i32 @ivace_reset_data(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @ivac_lock_init(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
