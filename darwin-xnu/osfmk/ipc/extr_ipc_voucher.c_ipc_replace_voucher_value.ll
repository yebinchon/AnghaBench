; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ipc_replace_voucher_value.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ipc_replace_voucher_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (%struct.TYPE_5__*, i32, i32, i32*, i32, i32, i32, i32*, i32*, i64*)* }

@MACH_VOUCHER_ATTR_VALUE_MAX_NESTED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IVAM_NULL = common dso_local global %struct.TYPE_5__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@IV_NULL = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32, i64, i32, i32)* @ipc_replace_voucher_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ipc_replace_voucher_value(i64 %0, i32 %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_5__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %28 = load i32, i32* @MACH_VOUCHER_ATTR_VALUE_MAX_NESTED, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %14, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %15, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @iv_key_to_index(i32 %32)
  store i32 %33, i32* %25, align 4
  %34 = load i32, i32* %25, align 4
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @ivgt_lookup(i32 %34, i32 %35, %struct.TYPE_5__** %20, i32* %21)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @IVAM_NULL, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %39 = icmp eq %struct.TYPE_5__* %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %6
  %41 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %41, i64* %7, align 8
  store i32 1, i32* %27, align 4
  br label %98

42:                                               ; preds = %6
  %43 = load i64, i64* %8, align 8
  %44 = load i32, i32* %25, align 4
  %45 = call i32 @iv_lookup(i64 %43, i32 %44)
  store i32 %45, i32* %23, align 4
  %46 = load i64, i64* @IV_NULL, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i64, i64* %11, align 8
  %51 = load i32, i32* %25, align 4
  %52 = call i32 @iv_lookup(i64 %50, i32 %51)
  br label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %23, align 4
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi i32 [ %52, %49 ], [ %54, %53 ]
  store i32 %56, i32* %22, align 4
  %57 = load i32, i32* %25, align 4
  %58 = load i32, i32* %22, align 4
  %59 = call i32 @ivace_lookup_values(i32 %57, i32 %58, i32* %31, i32* %16)
  %60 = load i64, i64* @IV_NULL, align 8
  store i64 %60, i64* %19, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64 (%struct.TYPE_5__*, i32, i32, i32*, i32, i32, i32, i32*, i32*, i64*)*, i64 (%struct.TYPE_5__*, i32, i32, i32*, i32, i32, i32, i32*, i32*, i64*)** %62, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i64 %63(%struct.TYPE_5__* %64, i32 %65, i32 %66, i32* %31, i32 %67, i32 %68, i32 %69, i32* %17, i32* %18, i64* %19)
  store i64 %70, i64* %26, align 8
  %71 = load i64, i64* @KERN_SUCCESS, align 8
  %72 = load i64, i64* %26, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %55
  %75 = load i32, i32* %21, align 4
  %76 = call i32 @ivac_release(i32 %75)
  %77 = load i64, i64* %26, align 8
  store i64 %77, i64* %7, align 8
  store i32 1, i32* %27, align 4
  br label %98

78:                                               ; preds = %55
  %79 = load i64, i64* @IV_NULL, align 8
  %80 = load i64, i64* %19, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i64, i64* %19, align 8
  %84 = call i32 @iv_release(i64 %83)
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32, i32* %21, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %18, align 4
  %89 = call i32 @ivace_reference_by_value(i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %24, align 4
  %90 = load i64, i64* %8, align 8
  %91 = load i32, i32* %25, align 4
  %92 = load i32, i32* %24, align 4
  %93 = call i32 @iv_set(i64 %90, i32 %91, i32 %92)
  %94 = load i32, i32* %25, align 4
  %95 = load i32, i32* %23, align 4
  %96 = call i32 @ivace_release(i32 %94, i32 %95)
  %97 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %97, i64* %7, align 8
  store i32 1, i32* %27, align 4
  br label %98

98:                                               ; preds = %85, %74, %40
  %99 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i64, i64* %7, align 8
  ret i64 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @iv_key_to_index(i32) #2

declare dso_local i32 @ivgt_lookup(i32, i32, %struct.TYPE_5__**, i32*) #2

declare dso_local i32 @iv_lookup(i64, i32) #2

declare dso_local i32 @ivace_lookup_values(i32, i32, i32*, i32*) #2

declare dso_local i32 @ivac_release(i32) #2

declare dso_local i32 @iv_release(i64) #2

declare dso_local i32 @ivace_reference_by_value(i32, i32, i32) #2

declare dso_local i32 @iv_set(i64, i32, i32) #2

declare dso_local i32 @ivace_release(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
