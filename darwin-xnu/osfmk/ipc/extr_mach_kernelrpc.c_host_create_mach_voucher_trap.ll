; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_kernelrpc.c_host_create_mach_voucher_trap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_kernelrpc.c_host_create_mach_voucher_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_create_mach_voucher_args = type { i64, i32, i32, i32 }

@IV_NULL = common dso_local global i32 0, align 4
@IPC_PORT_NULL = common dso_local global i32 0, align 4
@HOST_NULL = common dso_local global i64 0, align 8
@MACH_SEND_INVALID_DEST = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@MACH_VOUCHER_ATTR_MAX_RAW_RECIPE_ARRAY_SIZE = common dso_local global i64 0, align 8
@MIG_ARRAY_TOO_LARGE = common dso_local global i64 0, align 8
@MACH_VOUCHER_TRAP_STACK_LIMIT = common dso_local global i64 0, align 8
@KERN_MEMORY_ERROR = common dso_local global i64 0, align 8
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @host_create_mach_voucher_trap(%struct.host_create_mach_voucher_args* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.host_create_mach_voucher_args*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.host_create_mach_voucher_args* %0, %struct.host_create_mach_voucher_args** %3, align 8
  %13 = load %struct.host_create_mach_voucher_args*, %struct.host_create_mach_voucher_args** %3, align 8
  %14 = getelementptr inbounds %struct.host_create_mach_voucher_args, %struct.host_create_mach_voucher_args* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @port_name_to_host(i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i32, i32* @IV_NULL, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @IPC_PORT_NULL, align 4
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @HOST_NULL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i64, i64* @MACH_SEND_INVALID_DEST, align 8
  store i64 %23, i64* %2, align 8
  br label %137

24:                                               ; preds = %1
  %25 = load %struct.host_create_mach_voucher_args*, %struct.host_create_mach_voucher_args** %3, align 8
  %26 = getelementptr inbounds %struct.host_create_mach_voucher_args, %struct.host_create_mach_voucher_args* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %30, i64* %2, align 8
  br label %137

31:                                               ; preds = %24
  %32 = load %struct.host_create_mach_voucher_args*, %struct.host_create_mach_voucher_args** %3, align 8
  %33 = getelementptr inbounds %struct.host_create_mach_voucher_args, %struct.host_create_mach_voucher_args* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MACH_VOUCHER_ATTR_MAX_RAW_RECIPE_ARRAY_SIZE, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i64, i64* @MIG_ARRAY_TOO_LARGE, align 8
  store i64 %38, i64* %2, align 8
  br label %137

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.host_create_mach_voucher_args*, %struct.host_create_mach_voucher_args** %3, align 8
  %42 = getelementptr inbounds %struct.host_create_mach_voucher_args, %struct.host_create_mach_voucher_args* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MACH_VOUCHER_TRAP_STACK_LIMIT, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %40
  %47 = load %struct.host_create_mach_voucher_args*, %struct.host_create_mach_voucher_args** %3, align 8
  %48 = getelementptr inbounds %struct.host_create_mach_voucher_args, %struct.host_create_mach_voucher_args* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %9, align 8
  %51 = alloca i32, i64 %49, align 16
  store i64 %49, i64* %10, align 8
  %52 = load %struct.host_create_mach_voucher_args*, %struct.host_create_mach_voucher_args** %3, align 8
  %53 = getelementptr inbounds %struct.host_create_mach_voucher_args, %struct.host_create_mach_voucher_args* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @CAST_USER_ADDR_T(i32 %54)
  %56 = bitcast i32* %51 to i8*
  %57 = load %struct.host_create_mach_voucher_args*, %struct.host_create_mach_voucher_args** %3, align 8
  %58 = getelementptr inbounds %struct.host_create_mach_voucher_args, %struct.host_create_mach_voucher_args* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i64 @copyin(i32 %55, i8* %56, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %46
  %64 = load i64, i64* @KERN_MEMORY_ERROR, align 8
  store i64 %64, i64* %8, align 8
  store i32 2, i32* %11, align 4
  br label %72

65:                                               ; preds = %46
  %66 = load i64, i64* %4, align 8
  %67 = load %struct.host_create_mach_voucher_args*, %struct.host_create_mach_voucher_args** %3, align 8
  %68 = getelementptr inbounds %struct.host_create_mach_voucher_args, %struct.host_create_mach_voucher_args* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i64 @host_create_mach_voucher(i64 %66, i32* %51, i32 %70, i32* %5)
  store i64 %71, i64* %8, align 8
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %63, %65
  %73 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %11, align 4
  switch i32 %74, label %139 [
    i32 0, label %75
    i32 2, label %135
  ]

75:                                               ; preds = %72
  br label %121

76:                                               ; preds = %40
  %77 = load %struct.host_create_mach_voucher_args*, %struct.host_create_mach_voucher_args** %3, align 8
  %78 = getelementptr inbounds %struct.host_create_mach_voucher_args, %struct.host_create_mach_voucher_args* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32* @kalloc(i32 %80)
  store i32* %81, i32** %12, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %76
  %85 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %85, i64* %8, align 8
  br label %135

86:                                               ; preds = %76
  %87 = load %struct.host_create_mach_voucher_args*, %struct.host_create_mach_voucher_args** %3, align 8
  %88 = getelementptr inbounds %struct.host_create_mach_voucher_args, %struct.host_create_mach_voucher_args* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @CAST_USER_ADDR_T(i32 %89)
  %91 = load i32*, i32** %12, align 8
  %92 = bitcast i32* %91 to i8*
  %93 = load %struct.host_create_mach_voucher_args*, %struct.host_create_mach_voucher_args** %3, align 8
  %94 = getelementptr inbounds %struct.host_create_mach_voucher_args, %struct.host_create_mach_voucher_args* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i64 @copyin(i32 %90, i8* %92, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %86
  %100 = load i32*, i32** %12, align 8
  %101 = load %struct.host_create_mach_voucher_args*, %struct.host_create_mach_voucher_args** %3, align 8
  %102 = getelementptr inbounds %struct.host_create_mach_voucher_args, %struct.host_create_mach_voucher_args* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 @kfree(i32* %100, i32 %104)
  %106 = load i64, i64* @KERN_MEMORY_ERROR, align 8
  store i64 %106, i64* %8, align 8
  br label %135

107:                                              ; preds = %86
  %108 = load i64, i64* %4, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = load %struct.host_create_mach_voucher_args*, %struct.host_create_mach_voucher_args** %3, align 8
  %111 = getelementptr inbounds %struct.host_create_mach_voucher_args, %struct.host_create_mach_voucher_args* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i64 @host_create_mach_voucher(i64 %108, i32* %109, i32 %113, i32* %5)
  store i64 %114, i64* %8, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = load %struct.host_create_mach_voucher_args*, %struct.host_create_mach_voucher_args** %3, align 8
  %117 = getelementptr inbounds %struct.host_create_mach_voucher_args, %struct.host_create_mach_voucher_args* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 @kfree(i32* %115, i32 %119)
  br label %121

121:                                              ; preds = %107, %75
  %122 = load i64, i64* %8, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @convert_voucher_to_port(i32 %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 (...) @current_space()
  %129 = call i32 @ipc_port_copyout_send(i32 %127, i32 %128)
  store i32 %129, i32* %7, align 4
  %130 = load %struct.host_create_mach_voucher_args*, %struct.host_create_mach_voucher_args** %3, align 8
  %131 = getelementptr inbounds %struct.host_create_mach_voucher_args, %struct.host_create_mach_voucher_args* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @copyout(i32* %7, i32 %132, i32 4)
  store i64 %133, i64* %8, align 8
  br label %134

134:                                              ; preds = %124, %121
  br label %135

135:                                              ; preds = %134, %99, %84, %72
  %136 = load i64, i64* %8, align 8
  store i64 %136, i64* %2, align 8
  br label %137

137:                                              ; preds = %135, %37, %29, %22
  %138 = load i64, i64* %2, align 8
  ret i64 %138

139:                                              ; preds = %72
  unreachable
}

declare dso_local i64 @port_name_to_host(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @copyin(i32, i8*, i32) #1

declare dso_local i32 @CAST_USER_ADDR_T(i32) #1

declare dso_local i64 @host_create_mach_voucher(i64, i32*, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @kalloc(i32) #1

declare dso_local i32 @kfree(i32*, i32) #1

declare dso_local i32 @convert_voucher_to_port(i32) #1

declare dso_local i32 @ipc_port_copyout_send(i32, i32) #1

declare dso_local i32 @current_space(...) #1

declare dso_local i64 @copyout(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
