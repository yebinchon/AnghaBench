; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ipc_voucher_attr_control_create_mach_voucher.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ipc_voucher_attr_control_create_mach_voucher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i32 }

@IV_NULL = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@IPC_VOUCHER_ATTR_CONTROL_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@KERN_INVALID_CAPABILITY = common dso_local global i64 0, align 8
@ivgt_keys_in_use = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ipc_voucher_attr_control_create_mach_voucher(%struct.TYPE_6__* %0, i32* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load i64, i64* @IV_NULL, align 8
  store i64 %15, i64* %13, align 8
  %16 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %16, i64* %14, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IPC_VOUCHER_ATTR_CONTROL_NULL, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = icmp eq %struct.TYPE_6__* %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64, i64* @KERN_INVALID_CAPABILITY, align 8
  store i64 %21, i64* %5, align 8
  br label %128

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 0, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i64, i64* @IV_NULL, align 8
  %27 = load i64*, i64** %9, align 8
  store i64 %26, i64* %27, align 8
  %28 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %28, i64* %5, align 8
  br label %128

29:                                               ; preds = %22
  %30 = load i32, i32* @ivgt_keys_in_use, align 4
  %31 = call i64 @iv_alloc(i32 %30)
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* @IV_NULL, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %36, i64* %5, align 8
  br label %128

37:                                               ; preds = %29
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @iv_index_to_key(i32 %40)
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %111, %37
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %12, align 4
  %45 = sub nsw i32 %43, %44
  %46 = icmp slt i32 0, %45
  br i1 %46, label %47, label %112

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %12, align 4
  %50 = sub nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %51, 32
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %54, i64* %14, align 8
  br label %112

55:                                               ; preds = %47
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = bitcast i32* %59 to i8*
  %61 = bitcast i8* %60 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %11, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %12, align 4
  %64 = sub nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = sub i64 %65, 32
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = icmp ult i64 %66, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %55
  %73 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %73, i64* %14, align 8
  br label %112

74:                                               ; preds = %55
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = add i64 32, %78
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %12, align 4
  %84 = load i64, i64* %13, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %10, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i64 @ipc_execute_voucher_recipe_command(i64 %84, i64 %87, i32 %90, i32 %93, i32 %96, i32 %99, i32 %105)
  store i64 %106, i64* %14, align 8
  %107 = load i64, i64* @KERN_SUCCESS, align 8
  %108 = load i64, i64* %14, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %74
  br label %112

111:                                              ; preds = %74
  br label %42

112:                                              ; preds = %110, %72, %53, %42
  %113 = load i64, i64* @KERN_SUCCESS, align 8
  %114 = load i64, i64* %14, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i64, i64* %13, align 8
  %118 = call i64 @iv_dedup(i64 %117)
  %119 = load i64*, i64** %9, align 8
  store i64 %118, i64* %119, align 8
  br label %126

120:                                              ; preds = %112
  %121 = load i64, i64* @IV_NULL, align 8
  %122 = load i64*, i64** %9, align 8
  store i64 %121, i64* %122, align 8
  %123 = load i64, i64* %13, align 8
  %124 = load i32, i32* @FALSE, align 4
  %125 = call i32 @iv_dealloc(i64 %123, i32 %124)
  br label %126

126:                                              ; preds = %120, %116
  %127 = load i64, i64* %14, align 8
  store i64 %127, i64* %5, align 8
  br label %128

128:                                              ; preds = %126, %35, %25, %20
  %129 = load i64, i64* %5, align 8
  ret i64 %129
}

declare dso_local i64 @iv_alloc(i32) #1

declare dso_local i64 @iv_index_to_key(i32) #1

declare dso_local i64 @ipc_execute_voucher_recipe_command(i64, i64, i32, i32, i32, i32, i32) #1

declare dso_local i64 @iv_dedup(i64) #1

declare dso_local i32 @iv_dealloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
