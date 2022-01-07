; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ipc_create_mach_voucher.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ipc_create_mach_voucher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@IV_NULL = common dso_local global i64 0, align 8
@ivgt_keys_in_use = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ipc_create_mach_voucher(i32* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %12, i64* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 0, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i64, i64* @IV_NULL, align 8
  %17 = load i64*, i64** %7, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %18, i64* %4, align 8
  br label %109

19:                                               ; preds = %3
  %20 = load i32, i32* @ivgt_keys_in_use, align 4
  %21 = call i64 @iv_alloc(i32 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* @IV_NULL, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %26, i64* %4, align 8
  br label %109

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %92, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %29, %30
  %32 = icmp slt i32 0, %31
  br i1 %32, label %33, label %93

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %37, 20
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %40, i64* %11, align 8
  br label %93

41:                                               ; preds = %33
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = bitcast i32* %45 to i8*
  %47 = bitcast i8* %46 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %47, %struct.TYPE_2__** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = sub i64 %51, 20
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %52, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %41
  %59 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %59, i64* %11, align 8
  br label %93

60:                                               ; preds = %41
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 20, %64
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %9, align 4
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @FALSE, align 4
  %87 = call i64 @ipc_execute_voucher_recipe_command(i64 %70, i32 %73, i32 %76, i32 %79, i32 %82, i32 %85, i32 %86)
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* @KERN_SUCCESS, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %60
  br label %93

92:                                               ; preds = %60
  br label %28

93:                                               ; preds = %91, %58, %39, %28
  %94 = load i64, i64* @KERN_SUCCESS, align 8
  %95 = load i64, i64* %11, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i64, i64* %10, align 8
  %99 = call i64 @iv_dedup(i64 %98)
  %100 = load i64*, i64** %7, align 8
  store i64 %99, i64* %100, align 8
  br label %107

101:                                              ; preds = %93
  %102 = load i64, i64* %10, align 8
  %103 = load i32, i32* @FALSE, align 4
  %104 = call i32 @iv_dealloc(i64 %102, i32 %103)
  %105 = load i64, i64* @IV_NULL, align 8
  %106 = load i64*, i64** %7, align 8
  store i64 %105, i64* %106, align 8
  br label %107

107:                                              ; preds = %101, %97
  %108 = load i64, i64* %11, align 8
  store i64 %108, i64* %4, align 8
  br label %109

109:                                              ; preds = %107, %25, %15
  %110 = load i64, i64* %4, align 8
  ret i64 %110
}

declare dso_local i64 @iv_alloc(i32) #1

declare dso_local i64 @ipc_execute_voucher_recipe_command(i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @iv_dedup(i64) #1

declare dso_local i32 @iv_dealloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
