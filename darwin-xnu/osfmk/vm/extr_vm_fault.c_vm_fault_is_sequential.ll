; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_fault.c_vm_fault_is_sequential.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_fault.c_vm_fault_is_sequential.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@PAGE_SIZE_64 = common dso_local global i64 0, align 8
@MAX_SEQUENTIAL_RUN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, i32)* @vm_fault_is_sequential to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_fault_is_sequential(%struct.TYPE_3__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %61 [
    i32 130, label %18
    i32 128, label %19
    i32 129, label %39
    i32 131, label %60
  ]

18:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %109

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @PAGE_SIZE_64, align 8
  %26 = sub nsw i64 %24, %25
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @MAX_SEQUENTIAL_RUN, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %28
  br label %38

37:                                               ; preds = %22, %19
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %36
  br label %109

39:                                               ; preds = %3
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @PAGE_SIZE_64, align 8
  %46 = add nsw i64 %44, %45
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @MAX_SEQUENTIAL_RUN, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %53, %48
  br label %59

58:                                               ; preds = %42, %39
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %58, %57
  br label %109

60:                                               ; preds = %3
  br label %61

61:                                               ; preds = %3, %60
  %62 = load i64, i64* %5, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %61
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @PAGE_SIZE_64, align 8
  %68 = sub nsw i64 %66, %67
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @MAX_SEQUENTIAL_RUN, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* @PAGE_SIZE, align 4
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %78, %74
  br label %108

83:                                               ; preds = %64, %61
  %84 = load i64, i64* %7, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %83
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* @PAGE_SIZE_64, align 8
  %90 = add nsw i64 %88, %89
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %86
  %93 = load i32, i32* %8, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %95, %92
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @MAX_SEQUENTIAL_RUN, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp sgt i32 %97, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = load i32, i32* %8, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %101, %96
  br label %107

106:                                              ; preds = %86, %83
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %106, %105
  br label %108

108:                                              ; preds = %107, %82
  br label %109

109:                                              ; preds = %108, %59, %38, %18
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = call i32 @OSCompareAndSwap(i32 %114, i32 %115, i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %113
  br label %126

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121, %109
  %123 = load i64, i64* %5, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %122, %120
  ret void
}

declare dso_local i32 @OSCompareAndSwap(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
