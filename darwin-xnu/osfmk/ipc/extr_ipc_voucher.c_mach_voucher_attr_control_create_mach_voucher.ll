; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_mach_voucher_attr_control_create_mach_voucher.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_mach_voucher_attr_control_create_mach_voucher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i64, i32, i32 }

@IV_NULL = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@IPC_VOUCHER_ATTR_CONTROL_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@KERN_INVALID_CAPABILITY = common dso_local global i64 0, align 8
@ivgt_keys_in_use = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@MACH_PORT_NULL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_voucher_attr_control_create_mach_voucher(%struct.TYPE_6__* %0, i32* %1, i32 %2, i64* %3) #0 {
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
  %15 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %12, align 4
  %16 = load i64, i64* @IV_NULL, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %17, i64* %14, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IPC_VOUCHER_ATTR_CONTROL_NULL, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = icmp eq %struct.TYPE_6__* %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i64, i64* @KERN_INVALID_CAPABILITY, align 8
  store i64 %22, i64* %5, align 8
  br label %145

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 0, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64, i64* @IV_NULL, align 8
  %28 = load i64*, i64** %9, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %29, i64* %5, align 8
  br label %145

30:                                               ; preds = %23
  %31 = load i32, i32* @ivgt_keys_in_use, align 4
  %32 = call i64 @iv_alloc(i32 %31)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* @IV_NULL, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %37, i64* %5, align 8
  br label %145

38:                                               ; preds = %30
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @iv_index_to_key(i32 %41)
  store i64 %42, i64* %10, align 8
  br label %43

43:                                               ; preds = %128, %38
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %12, align 4
  %46 = sub nsw i32 %44, %45
  %47 = icmp slt i32 0, %46
  br i1 %47, label %48, label %129

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %12, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %52, 32
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %55, i64* %14, align 8
  br label %129

56:                                               ; preds = %48
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = bitcast i32* %60 to i8*
  %62 = bitcast i8* %61 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %11, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %12, align 4
  %65 = sub nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = sub i64 %66, 32
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = icmp ult i64 %67, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %56
  %74 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %74, i64* %14, align 8
  br label %129

75:                                               ; preds = %56
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = add i64 32, %79
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %12, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @convert_port_name_to_voucher(i64 %87)
  store i64 %88, i64* %15, align 8
  %89 = load i64, i64* @MACH_PORT_NULL, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %75
  %95 = load i64, i64* @IV_NULL, align 8
  %96 = load i64, i64* %15, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i64, i64* @KERN_INVALID_CAPABILITY, align 8
  store i64 %99, i64* %14, align 8
  br label %129

100:                                              ; preds = %94, %75
  %101 = load i64, i64* %13, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* %15, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %10, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i64 @ipc_execute_voucher_recipe_command(i64 %101, i64 %104, i32 %107, i64 %108, i32 %111, i32 %114, i32 %120)
  store i64 %121, i64* %14, align 8
  %122 = load i64, i64* %15, align 8
  %123 = call i32 @ipc_voucher_release(i64 %122)
  %124 = load i64, i64* @KERN_SUCCESS, align 8
  %125 = load i64, i64* %14, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %100
  br label %129

128:                                              ; preds = %100
  br label %43

129:                                              ; preds = %127, %98, %73, %54, %43
  %130 = load i64, i64* @KERN_SUCCESS, align 8
  %131 = load i64, i64* %14, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i64, i64* %13, align 8
  %135 = call i64 @iv_dedup(i64 %134)
  %136 = load i64*, i64** %9, align 8
  store i64 %135, i64* %136, align 8
  br label %143

137:                                              ; preds = %129
  %138 = load i64, i64* @IV_NULL, align 8
  %139 = load i64*, i64** %9, align 8
  store i64 %138, i64* %139, align 8
  %140 = load i64, i64* %13, align 8
  %141 = load i32, i32* @FALSE, align 4
  %142 = call i32 @iv_dealloc(i64 %140, i32 %141)
  br label %143

143:                                              ; preds = %137, %133
  %144 = load i64, i64* %14, align 8
  store i64 %144, i64* %5, align 8
  br label %145

145:                                              ; preds = %143, %36, %26, %21
  %146 = load i64, i64* %5, align 8
  ret i64 %146
}

declare dso_local i64 @iv_alloc(i32) #1

declare dso_local i64 @iv_index_to_key(i32) #1

declare dso_local i64 @convert_port_name_to_voucher(i64) #1

declare dso_local i64 @ipc_execute_voucher_recipe_command(i64, i64, i32, i64, i32, i32, i32) #1

declare dso_local i32 @ipc_voucher_release(i64) #1

declare dso_local i64 @iv_dedup(i64) #1

declare dso_local i32 @iv_dealloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
