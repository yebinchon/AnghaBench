; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_callstack.c_do_backtrace32.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_callstack.c_do_backtrace32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }

@kernel_stack_size = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i64*, i64*, i64, i32)* @do_backtrace32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_backtrace32(i32 %0, %struct.TYPE_7__* %1, %struct.TYPE_6__* %2, i64* %3, i64* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
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
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i64 0, i64* %16, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %17, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %21, align 8
  %35 = load i64, i64* %21, align 8
  %36 = load i64, i64* @kernel_stack_size, align 8
  %37 = add nsw i64 %35, %36
  store i64 %37, i64* %22, align 8
  %38 = load i64*, i64** %13, align 8
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %23, align 8
  %40 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %40, i32* %24, align 4
  %41 = load i64, i64* %23, align 8
  %42 = load i64, i64* %14, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %7
  %45 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %45, i32* %8, align 4
  br label %134

46:                                               ; preds = %7
  %47 = load i64, i64* %17, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i64 @chudxnu_vm_unslide(i64 %47, i32 %48)
  %50 = load i64*, i64** %12, align 8
  %51 = load i64, i64* %23, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %23, align 8
  %53 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 %49, i64* %53, align 8
  br label %54

54:                                               ; preds = %129, %46
  %55 = load i32, i32* %15, align 4
  %56 = load i64, i64* %18, align 8
  %57 = load i64, i64* %21, align 8
  %58 = load i64, i64* %22, align 8
  %59 = call i64 @VALID_STACK_ADDRESS(i32 %55, i64 %56, i64 %57, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %130

61:                                               ; preds = %54
  %62 = load i64, i64* %18, align 8
  %63 = inttoptr i64 %62 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %25, align 8
  %64 = load i64, i64* %18, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store i64 0, i64* %17, align 8
  br label %130

67:                                               ; preds = %61
  %68 = load i64, i64* %23, align 8
  %69 = load i64, i64* %14, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i64, i64* %23, align 8
  %73 = load i64*, i64** %13, align 8
  store i64 %72, i64* %73, align 8
  %74 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %74, i32* %8, align 4
  br label %134

75:                                               ; preds = %67
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = ptrtoint i32* %80 to i32
  %82 = call i32 @chudxnu_kern_read(i64* %16, i32 %81, i32 8)
  store i32 %82, i32* %24, align 4
  br label %89

83:                                               ; preds = %75
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = ptrtoint i32* %86 to i32
  %88 = call i32 @chudxnu_task_read(i32 %84, i64* %16, i32 %87, i32 8)
  store i32 %88, i32* %24, align 4
  br label %89

89:                                               ; preds = %83, %78
  %90 = load i32, i32* %24, align 4
  %91 = load i32, i32* @KERN_SUCCESS, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i64 0, i64* %17, align 8
  br label %130

94:                                               ; preds = %89
  %95 = load i64, i64* %16, align 8
  store i64 %95, i64* %17, align 8
  store i64 0, i64* %20, align 8
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = ptrtoint i32* %100 to i32
  %102 = call i32 @chudxnu_kern_read(i64* %16, i32 %101, i32 8)
  store i32 %102, i32* %24, align 4
  br label %109

103:                                              ; preds = %94
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = ptrtoint i32* %106 to i32
  %108 = call i32 @chudxnu_task_read(i32 %104, i64* %16, i32 %107, i32 8)
  store i32 %108, i32* %24, align 4
  br label %109

109:                                              ; preds = %103, %98
  %110 = load i64, i64* %16, align 8
  store i64 %110, i64* %20, align 8
  %111 = load i64, i64* %20, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = load i64, i64* %17, align 8
  %115 = load i32, i32* %15, align 4
  %116 = call i64 @chudxnu_vm_unslide(i64 %114, i32 %115)
  %117 = load i64*, i64** %12, align 8
  %118 = load i64, i64* %23, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %23, align 8
  %120 = getelementptr inbounds i64, i64* %117, i64 %118
  store i64 %116, i64* %120, align 8
  %121 = load i64, i64* %17, align 8
  store i64 %121, i64* %19, align 8
  br label %122

122:                                              ; preds = %113, %109
  %123 = load i64, i64* %20, align 8
  %124 = load i64, i64* %18, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %130

127:                                              ; preds = %122
  %128 = load i64, i64* %20, align 8
  store i64 %128, i64* %18, align 8
  br label %129

129:                                              ; preds = %127
  br label %54

130:                                              ; preds = %126, %93, %66, %54
  %131 = load i64, i64* %23, align 8
  %132 = load i64*, i64** %13, align 8
  store i64 %131, i64* %132, align 8
  %133 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %130, %71, %44
  %135 = load i32, i32* %8, align 4
  ret i32 %135
}

declare dso_local i64 @chudxnu_vm_unslide(i64, i32) #1

declare dso_local i64 @VALID_STACK_ADDRESS(i32, i64, i64, i64) #1

declare dso_local i32 @chudxnu_kern_read(i64*, i32, i32) #1

declare dso_local i32 @chudxnu_task_read(i32, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
