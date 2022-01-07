; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_get_refs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_get_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i64 0, align 8
@MACH_PORT_RIGHT_NUMBER = common dso_local global i32 0, align 4
@KERN_INVALID_VALUE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_INVALID_NAME = common dso_local global i64 0, align 8
@kGUARD_EXC_INVALID_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"mach_port_get_refs: strange rights\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_port_get_refs(i64 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @IS_NULL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i64, i64* @KERN_INVALID_TASK, align 8
  store i64 %18, i64* %5, align 8
  br label %91

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @MACH_PORT_RIGHT_NUMBER, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* @KERN_INVALID_VALUE, align 8
  store i64 %24, i64* %5, align 8
  br label %91

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @MACH_PORT_VALID(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 129
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 128
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %29
  %36 = load i32*, i32** %9, align 8
  store i32 1, i32* %36, align 4
  %37 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %37, i64* %5, align 8
  br label %91

38:                                               ; preds = %32
  %39 = load i64, i64* @KERN_INVALID_NAME, align 8
  store i64 %39, i64* %5, align 8
  br label %91

40:                                               ; preds = %25
  %41 = load i64, i64* %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @ipc_right_lookup_write(i64 %41, i32 %42, i32* %12)
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* @KERN_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @kGUARD_EXC_INVALID_NAME, align 4
  %50 = call i32 @mach_port_guard_exception(i32 %48, i32 0, i32 0, i32 %49)
  %51 = load i64, i64* %13, align 8
  store i64 %51, i64* %5, align 8
  br label %91

52:                                               ; preds = %40
  %53 = load i64, i64* %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i64 @ipc_right_info(i64 %53, i32 %54, i32 %55, i32* %10, i32* %11)
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* @KERN_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i64, i64* %13, align 8
  store i64 %61, i64* %5, align 8
  br label %91

62:                                               ; preds = %52
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @MACH_PORT_TYPE(i32 %64)
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %62
  %69 = load i32, i32* %8, align 4
  switch i32 %69, label %84 [
    i32 128, label %70
    i32 131, label %75
    i32 130, label %75
    i32 132, label %77
    i32 129, label %77
  ]

70:                                               ; preds = %68
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 1
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  br label %75

75:                                               ; preds = %68, %68, %70
  %76 = load i32*, i32** %9, align 8
  store i32 1, i32* %76, align 4
  br label %86

77:                                               ; preds = %68, %68
  %78 = load i32, i32* %11, align 4
  %79 = icmp sgt i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  br label %86

84:                                               ; preds = %68
  %85 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %77, %75
  br label %89

87:                                               ; preds = %62
  %88 = load i32*, i32** %9, align 8
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %87, %86
  %90 = load i64, i64* %13, align 8
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %89, %60, %47, %38, %35, %23, %17
  %92 = load i64, i64* %5, align 8
  ret i64 %92
}

declare dso_local i32 @MACH_PORT_VALID(i32) #1

declare dso_local i64 @ipc_right_lookup_write(i64, i32, i32*) #1

declare dso_local i32 @mach_port_guard_exception(i32, i32, i32, i32) #1

declare dso_local i64 @ipc_right_info(i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @MACH_PORT_TYPE(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
