; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_callstack.c_do_backtrace64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_callstack.c_do_backtrace64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@kernel_stack_size = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i64*, i64*, i64, i32)* @do_backtrace64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_backtrace64(i32 %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2, i64* %3, i64* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %16, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %20, align 8
  %36 = load i64, i64* %20, align 8
  %37 = load i64, i64* @kernel_stack_size, align 8
  %38 = add nsw i64 %36, %37
  store i64 %38, i64* %21, align 8
  %39 = load i64*, i64** %13, align 8
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %22, align 8
  %41 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %41, i32* %23, align 4
  %42 = load i64*, i64** %13, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %14, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %7
  %47 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %47, i32* %8, align 4
  br label %132

48:                                               ; preds = %7
  %49 = load i64, i64* %16, align 8
  %50 = load i32, i32* %15, align 4
  %51 = call i64 @chudxnu_vm_unslide(i64 %49, i32 %50)
  %52 = load i64*, i64** %12, align 8
  %53 = load i64, i64* %22, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %22, align 8
  %55 = getelementptr inbounds i64, i64* %52, i64 %53
  store i64 %51, i64* %55, align 8
  br label %56

56:                                               ; preds = %127, %48
  %57 = load i32, i32* %15, align 4
  %58 = load i64, i64* %17, align 8
  %59 = load i64, i64* %20, align 8
  %60 = load i64, i64* %21, align 8
  %61 = call i64 @VALID_STACK_ADDRESS64(i32 %57, i64 %58, i64 %59, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %128

63:                                               ; preds = %56
  %64 = load i64, i64* %17, align 8
  %65 = add i64 %64, 8
  store i64 %65, i64* %24, align 8
  %66 = load i64, i64* %17, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store i64 0, i64* %16, align 8
  br label %128

69:                                               ; preds = %63
  %70 = load i64, i64* %22, align 8
  %71 = load i64, i64* %14, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i64, i64* %22, align 8
  %75 = load i64*, i64** %13, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %76, i32* %8, align 4
  br label %132

77:                                               ; preds = %69
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i64, i64* %24, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @chudxnu_kern_read(i64* %16, i32 %82, i32 8)
  store i32 %83, i32* %23, align 4
  br label %88

84:                                               ; preds = %77
  %85 = load i32, i32* %9, align 4
  %86 = load i64, i64* %24, align 8
  %87 = call i32 @chudxnu_task_read(i32 %85, i64* %16, i64 %86, i32 8)
  store i32 %87, i32* %23, align 4
  br label %88

88:                                               ; preds = %84, %80
  %89 = load i32, i32* %23, align 4
  %90 = load i32, i32* @KERN_SUCCESS, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i64 0, i64* %16, align 8
  br label %128

93:                                               ; preds = %88
  store i64 0, i64* %19, align 8
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i64, i64* %17, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @chudxnu_kern_read(i64* %19, i32 %98, i32 8)
  store i32 %99, i32* %23, align 4
  br label %104

100:                                              ; preds = %93
  %101 = load i32, i32* %9, align 4
  %102 = load i64, i64* %17, align 8
  %103 = call i32 @chudxnu_task_read(i32 %101, i64* %19, i64 %102, i32 8)
  store i32 %103, i32* %23, align 4
  br label %104

104:                                              ; preds = %100, %96
  %105 = load i32, i32* %15, align 4
  %106 = load i64, i64* %19, align 8
  %107 = load i64, i64* %20, align 8
  %108 = load i64, i64* %21, align 8
  %109 = call i64 @VALID_STACK_ADDRESS64(i32 %105, i64 %106, i64 %107, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %104
  %112 = load i64, i64* %16, align 8
  %113 = load i32, i32* %15, align 4
  %114 = call i64 @chudxnu_vm_unslide(i64 %112, i32 %113)
  %115 = load i64*, i64** %12, align 8
  %116 = load i64, i64* %22, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %22, align 8
  %118 = getelementptr inbounds i64, i64* %115, i64 %116
  store i64 %114, i64* %118, align 8
  %119 = load i64, i64* %16, align 8
  store i64 %119, i64* %18, align 8
  br label %120

120:                                              ; preds = %111, %104
  %121 = load i64, i64* %19, align 8
  %122 = load i64, i64* %17, align 8
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %128

125:                                              ; preds = %120
  %126 = load i64, i64* %19, align 8
  store i64 %126, i64* %17, align 8
  br label %127

127:                                              ; preds = %125
  br label %56

128:                                              ; preds = %124, %92, %68, %56
  %129 = load i64, i64* %22, align 8
  %130 = load i64*, i64** %13, align 8
  store i64 %129, i64* %130, align 8
  %131 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %131, i32* %8, align 4
  br label %132

132:                                              ; preds = %128, %73, %46
  %133 = load i32, i32* %8, align 4
  ret i32 %133
}

declare dso_local i64 @chudxnu_vm_unslide(i64, i32) #1

declare dso_local i64 @VALID_STACK_ADDRESS64(i32, i64, i64, i64) #1

declare dso_local i32 @chudxnu_kern_read(i64*, i32, i32) #1

declare dso_local i32 @chudxnu_task_read(i32, i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
