; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_kernelrpc.c_mach_voucher_extract_attr_recipe_trap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_kernelrpc.c_mach_voucher_extract_attr_recipe_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mach_voucher_extract_attr_recipe_args = type { i32, i32, i32, i32 }

@IV_NULL = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_MEMORY_ERROR = common dso_local global i64 0, align 8
@MACH_VOUCHER_ATTR_MAX_RAW_RECIPE_ARRAY_SIZE = common dso_local global i64 0, align 8
@MIG_ARRAY_TOO_LARGE = common dso_local global i64 0, align 8
@MACH_SEND_INVALID_DEST = common dso_local global i64 0, align 8
@MACH_VOUCHER_TRAP_STACK_LIMIT = common dso_local global i64 0, align 8
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_voucher_extract_attr_recipe_trap(%struct.mach_voucher_extract_attr_recipe_args* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mach_voucher_extract_attr_recipe_args*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  store %struct.mach_voucher_extract_attr_recipe_args* %0, %struct.mach_voucher_extract_attr_recipe_args** %3, align 8
  %12 = load i64, i64* @IV_NULL, align 8
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %13, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %14 = load %struct.mach_voucher_extract_attr_recipe_args*, %struct.mach_voucher_extract_attr_recipe_args** %3, align 8
  %15 = getelementptr inbounds %struct.mach_voucher_extract_attr_recipe_args, %struct.mach_voucher_extract_attr_recipe_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = bitcast i64* %6 to i8*
  %18 = call i64 @copyin(i32 %16, i8* %17, i64 8)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i64, i64* @KERN_MEMORY_ERROR, align 8
  store i64 %21, i64* %2, align 8
  br label %159

22:                                               ; preds = %1
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @MACH_VOUCHER_ATTR_MAX_RAW_RECIPE_ARRAY_SIZE, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* @MIG_ARRAY_TOO_LARGE, align 8
  store i64 %27, i64* %2, align 8
  br label %159

28:                                               ; preds = %22
  %29 = load %struct.mach_voucher_extract_attr_recipe_args*, %struct.mach_voucher_extract_attr_recipe_args** %3, align 8
  %30 = getelementptr inbounds %struct.mach_voucher_extract_attr_recipe_args, %struct.mach_voucher_extract_attr_recipe_args* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @convert_port_name_to_voucher(i32 %31)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @IV_NULL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i64, i64* @MACH_SEND_INVALID_DEST, align 8
  store i64 %37, i64* %2, align 8
  br label %159

38:                                               ; preds = %28
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @MACH_VOUCHER_TRAP_STACK_LIMIT, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %88

43:                                               ; preds = %38
  %44 = load i64, i64* %6, align 8
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %8, align 8
  %46 = alloca i64, i64 %44, align 16
  store i64 %44, i64* %9, align 8
  %47 = load %struct.mach_voucher_extract_attr_recipe_args*, %struct.mach_voucher_extract_attr_recipe_args** %3, align 8
  %48 = getelementptr inbounds %struct.mach_voucher_extract_attr_recipe_args, %struct.mach_voucher_extract_attr_recipe_args* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @CAST_USER_ADDR_T(i32 %49)
  %51 = bitcast i64* %46 to i8*
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @copyin(i32 %50, i8* %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i64, i64* @KERN_MEMORY_ERROR, align 8
  store i64 %56, i64* %5, align 8
  store i32 2, i32* %10, align 4
  br label %84

57:                                               ; preds = %43
  %58 = load i64, i64* %4, align 8
  %59 = load %struct.mach_voucher_extract_attr_recipe_args*, %struct.mach_voucher_extract_attr_recipe_args** %3, align 8
  %60 = getelementptr inbounds %struct.mach_voucher_extract_attr_recipe_args, %struct.mach_voucher_extract_attr_recipe_args* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = ptrtoint i64* %46 to i32
  %63 = call i64 @mach_voucher_extract_attr_recipe(i64 %58, i32 %61, i32 %62, i64* %6)
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp sle i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @KERN_SUCCESS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %57
  %73 = load i64, i64* %6, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load %struct.mach_voucher_extract_attr_recipe_args*, %struct.mach_voucher_extract_attr_recipe_args** %3, align 8
  %77 = getelementptr inbounds %struct.mach_voucher_extract_attr_recipe_args, %struct.mach_voucher_extract_attr_recipe_args* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @CAST_USER_ADDR_T(i32 %78)
  %80 = load i64, i64* %6, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i64 @copyout(i64* %46, i32 %79, i32 %81)
  store i64 %82, i64* %5, align 8
  br label %83

83:                                               ; preds = %75, %72, %57
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %55, %83
  %85 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %10, align 4
  switch i32 %86, label %161 [
    i32 0, label %87
    i32 2, label %155
  ]

87:                                               ; preds = %84
  br label %145

88:                                               ; preds = %38
  %89 = load i64, i64* %7, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i64* @kalloc(i32 %90)
  store i64* %91, i64** %11, align 8
  %92 = load i64*, i64** %11, align 8
  %93 = icmp ne i64* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %88
  %95 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %95, i64* %5, align 8
  br label %155

96:                                               ; preds = %88
  %97 = load %struct.mach_voucher_extract_attr_recipe_args*, %struct.mach_voucher_extract_attr_recipe_args** %3, align 8
  %98 = getelementptr inbounds %struct.mach_voucher_extract_attr_recipe_args, %struct.mach_voucher_extract_attr_recipe_args* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @CAST_USER_ADDR_T(i32 %99)
  %101 = load i64*, i64** %11, align 8
  %102 = bitcast i64* %101 to i8*
  %103 = load i64, i64* %6, align 8
  %104 = call i64 @copyin(i32 %100, i8* %102, i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %96
  %107 = load i64*, i64** %11, align 8
  %108 = load i64, i64* %7, align 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 @kfree(i64* %107, i32 %109)
  %111 = load i64, i64* @KERN_MEMORY_ERROR, align 8
  store i64 %111, i64* %5, align 8
  br label %155

112:                                              ; preds = %96
  %113 = load i64, i64* %4, align 8
  %114 = load %struct.mach_voucher_extract_attr_recipe_args*, %struct.mach_voucher_extract_attr_recipe_args** %3, align 8
  %115 = getelementptr inbounds %struct.mach_voucher_extract_attr_recipe_args, %struct.mach_voucher_extract_attr_recipe_args* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i64*, i64** %11, align 8
  %118 = ptrtoint i64* %117 to i32
  %119 = call i64 @mach_voucher_extract_attr_recipe(i64 %113, i32 %116, i32 %118, i64* %6)
  store i64 %119, i64* %5, align 8
  %120 = load i64, i64* %6, align 8
  %121 = load i64, i64* %7, align 8
  %122 = icmp sle i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load i64, i64* %5, align 8
  %126 = load i64, i64* @KERN_SUCCESS, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %112
  %129 = load i64, i64* %6, align 8
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = load i64*, i64** %11, align 8
  %133 = load %struct.mach_voucher_extract_attr_recipe_args*, %struct.mach_voucher_extract_attr_recipe_args** %3, align 8
  %134 = getelementptr inbounds %struct.mach_voucher_extract_attr_recipe_args, %struct.mach_voucher_extract_attr_recipe_args* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @CAST_USER_ADDR_T(i32 %135)
  %137 = load i64, i64* %6, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i64 @copyout(i64* %132, i32 %136, i32 %138)
  store i64 %139, i64* %5, align 8
  br label %140

140:                                              ; preds = %131, %128, %112
  %141 = load i64*, i64** %11, align 8
  %142 = load i64, i64* %7, align 8
  %143 = trunc i64 %142 to i32
  %144 = call i32 @kfree(i64* %141, i32 %143)
  br label %145

145:                                              ; preds = %140, %87
  %146 = load i64, i64* %5, align 8
  %147 = load i64, i64* @KERN_SUCCESS, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = load %struct.mach_voucher_extract_attr_recipe_args*, %struct.mach_voucher_extract_attr_recipe_args** %3, align 8
  %151 = getelementptr inbounds %struct.mach_voucher_extract_attr_recipe_args, %struct.mach_voucher_extract_attr_recipe_args* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @copyout(i64* %6, i32 %152, i32 8)
  store i64 %153, i64* %5, align 8
  br label %154

154:                                              ; preds = %149, %145
  br label %155

155:                                              ; preds = %154, %106, %94, %84
  %156 = load i64, i64* %4, align 8
  %157 = call i32 @ipc_voucher_release(i64 %156)
  %158 = load i64, i64* %5, align 8
  store i64 %158, i64* %2, align 8
  br label %159

159:                                              ; preds = %155, %36, %26, %20
  %160 = load i64, i64* %2, align 8
  ret i64 %160

161:                                              ; preds = %84
  unreachable
}

declare dso_local i64 @copyin(i32, i8*, i64) #1

declare dso_local i64 @convert_port_name_to_voucher(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @CAST_USER_ADDR_T(i32) #1

declare dso_local i64 @mach_voucher_extract_attr_recipe(i64, i32, i32, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @copyout(i64*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64* @kalloc(i32) #1

declare dso_local i32 @kfree(i64*, i32) #1

declare dso_local i32 @ipc_voucher_release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
