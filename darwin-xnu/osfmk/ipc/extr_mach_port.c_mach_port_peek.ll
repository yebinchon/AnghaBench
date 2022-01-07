; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_peek.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@IS_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i64 0, align 8
@KERN_INVALID_RIGHT = common dso_local global i64 0, align 8
@MACH_RCV_TRAILER_AUDIT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@kGUARD_EXC_INVALID_VALUE = common dso_local global i32 0, align 4
@KERN_INVALID_VALUE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_INVALID_NAME = common dso_local global i64 0, align 8
@kGUARD_EXC_INVALID_NAME = common dso_local global i32 0, align 4
@kGUARD_EXC_INVALID_RIGHT = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_port_peek(i64 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_7__, align 4
  store i64 %0, i64* %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @IS_NULL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %8
  %26 = load i64, i64* @KERN_INVALID_TASK, align 8
  store i64 %26, i64* %9, align 8
  br label %97

27:                                               ; preds = %8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @MACH_PORT_VALID(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* @KERN_INVALID_RIGHT, align 8
  store i64 %32, i64* %9, align 8
  br label %97

33:                                               ; preds = %27
  %34 = load i32, i32* %12, align 4
  %35 = call i64 @GET_RCV_ELEMENTS(i32 %34)
  %36 = load i64, i64* @MACH_RCV_TRAILER_AUDIT, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = load i64, i64* @TRUE, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @REQUESTED_TRAILER_SIZE(i64 %39, i32 %40)
  %42 = load i32*, i32** %17, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %38, %33
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @kGUARD_EXC_INVALID_VALUE, align 4
  %48 = call i32 @mach_port_guard_exception(i32 %46, i32 0, i32 0, i32 %47)
  %49 = load i64, i64* @KERN_INVALID_VALUE, align 8
  store i64 %49, i64* %9, align 8
  br label %97

50:                                               ; preds = %38
  %51 = load i64, i64* @TRUE, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @REQUESTED_TRAILER_SIZE(i64 %51, i32 %52)
  %54 = load i32*, i32** %17, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i64 @ipc_port_translate_receive(i64 %55, i32 %56, %struct.TYPE_8__** %18)
  store i64 %57, i64* %19, align 8
  %58 = load i64, i64* %19, align 8
  %59 = load i64, i64* @KERN_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %50
  %62 = load i32, i32* %11, align 4
  %63 = load i64, i64* @KERN_INVALID_NAME, align 8
  %64 = load i64, i64* %19, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @kGUARD_EXC_INVALID_NAME, align 4
  br label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @kGUARD_EXC_INVALID_RIGHT, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = call i32 @mach_port_guard_exception(i32 %62, i32 0, i32 0, i32 %71)
  %73 = load i64, i64* %19, align 8
  store i64 %73, i64* %9, align 8
  br label %97

74:                                               ; preds = %50
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32*, i32** %13, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = load i32*, i32** %15, align 8
  %80 = call i64 @ipc_mqueue_peek(i32* %76, i32* %77, i32* %78, i32* %79, %struct.TYPE_7__* %21, i32* null)
  store i64 %80, i64* %20, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %82 = call i32 @ip_unlock(%struct.TYPE_8__* %81)
  %83 = load i64, i64* %20, align 8
  %84 = load i64, i64* @TRUE, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %74
  %87 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %87, i64* %9, align 8
  br label %97

88:                                               ; preds = %74
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32*, i32** %17, align 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @memcpy(i32 %92, %struct.TYPE_7__* %21, i32 %94)
  %96 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %96, i64* %9, align 8
  br label %97

97:                                               ; preds = %88, %86, %70, %45, %31, %25
  %98 = load i64, i64* %9, align 8
  ret i64 %98
}

declare dso_local i32 @MACH_PORT_VALID(i32) #1

declare dso_local i64 @GET_RCV_ELEMENTS(i32) #1

declare dso_local i32 @REQUESTED_TRAILER_SIZE(i64, i32) #1

declare dso_local i32 @mach_port_guard_exception(i32, i32, i32, i32) #1

declare dso_local i64 @ipc_port_translate_receive(i64, i32, %struct.TYPE_8__**) #1

declare dso_local i64 @ipc_mqueue_peek(i32*, i32*, i32*, i32*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
