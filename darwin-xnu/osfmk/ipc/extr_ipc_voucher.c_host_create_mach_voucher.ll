; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_host_create_mach_voucher.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_host_create_mach_voucher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i32, i32 }

@IV_NULL = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@HOST_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@ivgt_keys_in_use = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8
@MACH_PORT_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_CAPABILITY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @host_create_mach_voucher(i64 %0, i32* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load i64, i64* @IV_NULL, align 8
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @HOST_NULL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %21, i64* %5, align 8
  br label %135

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
  br label %135

29:                                               ; preds = %22
  %30 = load i32, i32* @ivgt_keys_in_use, align 4
  %31 = call i64 @iv_alloc(i32 %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* @IV_NULL, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %36, i64* %5, align 8
  br label %135

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %118, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 %39, %40
  %42 = icmp slt i32 0, %41
  br i1 %42, label %43, label %119

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sub nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = icmp ult i64 %47, 32
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %50, i64* %13, align 8
  br label %119

51:                                               ; preds = %43
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = bitcast i32* %55 to i8*
  %57 = bitcast i8* %56 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %57, %struct.TYPE_2__** %10, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = sub i64 %61, 32
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %62, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %51
  %69 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %69, i64* %13, align 8
  br label %119

70:                                               ; preds = %51
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = add i64 32, %74
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %11, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @convert_port_name_to_voucher(i64 %82)
  store i64 %83, i64* %14, align 8
  %84 = load i64, i64* @MACH_PORT_NULL, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %70
  %90 = load i64, i64* @IV_NULL, align 8
  %91 = load i64, i64* %14, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i64, i64* @KERN_INVALID_CAPABILITY, align 8
  store i64 %94, i64* %13, align 8
  br label %119

95:                                               ; preds = %89, %70
  %96 = load i64, i64* %12, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %14, align 8
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @FALSE, align 4
  %111 = call i64 @ipc_execute_voucher_recipe_command(i64 %96, i32 %99, i32 %102, i64 %103, i32 %106, i32 %109, i32 %110)
  store i64 %111, i64* %13, align 8
  %112 = load i64, i64* %14, align 8
  %113 = call i32 @ipc_voucher_release(i64 %112)
  %114 = load i64, i64* @KERN_SUCCESS, align 8
  %115 = load i64, i64* %13, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %95
  br label %119

118:                                              ; preds = %95
  br label %38

119:                                              ; preds = %117, %93, %68, %49, %38
  %120 = load i64, i64* @KERN_SUCCESS, align 8
  %121 = load i64, i64* %13, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i64, i64* %12, align 8
  %125 = call i64 @iv_dedup(i64 %124)
  %126 = load i64*, i64** %9, align 8
  store i64 %125, i64* %126, align 8
  br label %133

127:                                              ; preds = %119
  %128 = load i64, i64* @IV_NULL, align 8
  %129 = load i64*, i64** %9, align 8
  store i64 %128, i64* %129, align 8
  %130 = load i64, i64* %12, align 8
  %131 = load i32, i32* @FALSE, align 4
  %132 = call i32 @iv_dealloc(i64 %130, i32 %131)
  br label %133

133:                                              ; preds = %127, %123
  %134 = load i64, i64* %13, align 8
  store i64 %134, i64* %5, align 8
  br label %135

135:                                              ; preds = %133, %35, %25, %20
  %136 = load i64, i64* %5, align 8
  ret i64 %136
}

declare dso_local i64 @iv_alloc(i32) #1

declare dso_local i64 @convert_port_name_to_voucher(i64) #1

declare dso_local i64 @ipc_execute_voucher_recipe_command(i64, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @ipc_voucher_release(i64) #1

declare dso_local i64 @iv_dedup(i64) #1

declare dso_local i32 @iv_dealloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
