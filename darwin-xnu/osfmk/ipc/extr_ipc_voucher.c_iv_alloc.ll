; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_iv_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_iv_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32*, i32*, i32, i64, i64, i32 }

@ipc_voucher_zone = common dso_local global i32 0, align 4
@IV_NULL = common dso_local global %struct.TYPE_5__* null, align 8
@iv_refgrp = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global i32 0, align 4
@IV_ENTRIES_INLINE = common dso_local global i64 0, align 8
@IVE_NULL = common dso_local global i32* null, align 8
@IV_UNUSED_VALINDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @iv_alloc(i64 %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i32, i32* @ipc_voucher_zone, align 4
  %8 = call i64 @zalloc(i32 %7)
  %9 = inttoptr i64 %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @IV_NULL, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = icmp eq %struct.TYPE_5__* %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @IV_NULL, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %2, align 8
  br label %78

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 6
  %18 = call i32 @os_ref_init(i32* %17, i32* @iv_refgrp)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @IP_NULL, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @IV_ENTRIES_INLINE, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %15
  %30 = load i64, i64* %3, align 8
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call i64 @kalloc(i32 %32)
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** @IVE_NULL, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = icmp eq i32* %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load i32, i32* @ipc_voucher_zone, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = call i32 @zfree(i32 %39, %struct.TYPE_5__* %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @IV_NULL, align 8
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %2, align 8
  br label %78

43:                                               ; preds = %29
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load i64, i64* %3, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %59

50:                                               ; preds = %15
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  %56 = load i64, i64* @IV_ENTRIES_INLINE, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %50, %43
  store i64 0, i64* %5, align 8
  br label %60

60:                                               ; preds = %73, %59
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load i32, i32* @IV_UNUSED_VALINDEX, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %5, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %67, i32* %72, align 4
  br label %73

73:                                               ; preds = %66
  %74 = load i64, i64* %5, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %5, align 8
  br label %60

76:                                               ; preds = %60
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %2, align 8
  br label %78

78:                                               ; preds = %76, %38, %13
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %79
}

declare dso_local i64 @zalloc(i32) #1

declare dso_local i32 @os_ref_init(i32*, i32*) #1

declare dso_local i64 @kalloc(i32) #1

declare dso_local i32 @zfree(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
