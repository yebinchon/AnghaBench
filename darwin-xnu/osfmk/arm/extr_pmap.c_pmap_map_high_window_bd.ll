; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_map_high_window_bd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_map_high_window_bd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VREGION1_START = common dso_local global i64 0, align 8
@VREGION1_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"pmap_map_high_window_bd: area too large\0A\00", align 1
@kernel_pmap = common dso_local global i32 0, align 4
@ARM_PTE_TYPE_FAULT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"pmap_map_high_window_bd: insufficient pages\0A\00", align 1
@ARM_PTE_TYPE = common dso_local global i64 0, align 8
@ARM_PTE_AF = common dso_local global i64 0, align 8
@ARM_PTE_NX = common dso_local global i64 0, align 8
@ARM_PTE_PNX = common dso_local global i64 0, align 8
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@AP_RWNA = common dso_local global i32 0, align 4
@AP_RONA = common dso_local global i32 0, align 4
@CACHE_ATTRINDX_DEFAULT = common dso_local global i32 0, align 4
@ARM_PTE_SH = common dso_local global i64 0, align 8
@ARM_PTE_NG = common dso_local global i64 0, align 8
@SH_OUTER_MEMORY = common dso_local global i32 0, align 4
@VM_HIGH_KERNEL_WINDOW = common dso_local global i64 0, align 8
@VM_MAX_KERNEL_ADDRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pmap_map_high_window_bd(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i64, i64* @VREGION1_START, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* @VREGION1_START, align 8
  %16 = load i64, i64* @VREGION1_SIZE, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @PAGE_MASK, align 8
  %20 = and i64 %18, %19
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* %4, align 8
  %23 = sub nsw i64 %22, %21
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %9, align 8
  %30 = sub nsw i64 %28, %29
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %3
  br label %35

35:                                               ; preds = %92, %34
  br label %36

36:                                               ; preds = %57, %35
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %36
  %41 = load i32, i32* @kernel_pmap, align 4
  %42 = load i64, i64* %9, align 8
  %43 = call i64* @pmap_pte(i32 %41, i64 %42)
  store i64* %43, i64** %7, align 8
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @ARM_PTE_IS_COMPRESSED(i64 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i64*, i64** %7, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ARM_PTE_TYPE_FAULT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  br label %61

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* @PAGE_SIZE, align 8
  %59 = load i64, i64* %9, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %9, align 8
  br label %36

61:                                               ; preds = %55, %36
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @PAGE_SIZE, align 8
  %70 = add nsw i64 %68, %69
  store i64 %70, i64* %11, align 8
  br label %71

71:                                               ; preds = %97, %67
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %5, align 8
  %75 = add nsw i64 %73, %74
  %76 = icmp slt i64 %72, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %71
  %78 = load i32, i32* @kernel_pmap, align 4
  %79 = load i64, i64* %11, align 8
  %80 = call i64* @pmap_pte(i32 %78, i64 %79)
  store i64* %80, i64** %7, align 8
  %81 = load i64*, i64** %7, align 8
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @ARM_PTE_IS_COMPRESSED(i64 %82)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load i64*, i64** %7, align 8
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ARM_PTE_TYPE_FAULT, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %77
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* @PAGE_SIZE, align 8
  %95 = add nsw i64 %93, %94
  store i64 %95, i64* %9, align 8
  br label %35

96:                                               ; preds = %77
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* @PAGE_SIZE, align 8
  %99 = load i64, i64* %11, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %11, align 8
  br label %71

101:                                              ; preds = %71
  %102 = load i64, i64* %9, align 8
  store i64 %102, i64* %12, align 8
  br label %103

103:                                              ; preds = %142, %101
  %104 = load i64, i64* %12, align 8
  %105 = load i64, i64* %11, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %149

107:                                              ; preds = %103
  %108 = load i32, i32* @kernel_pmap, align 4
  %109 = load i64, i64* %12, align 8
  %110 = call i64* @pmap_pte(i32 %108, i64 %109)
  store i64* %110, i64** %7, align 8
  %111 = load i64, i64* %4, align 8
  %112 = call i64 @pa_to_pte(i64 %111)
  %113 = load i64, i64* @ARM_PTE_TYPE, align 8
  %114 = or i64 %112, %113
  %115 = load i64, i64* @ARM_PTE_AF, align 8
  %116 = or i64 %114, %115
  %117 = load i64, i64* @ARM_PTE_NX, align 8
  %118 = or i64 %116, %117
  %119 = load i64, i64* @ARM_PTE_PNX, align 8
  %120 = or i64 %118, %119
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @VM_PROT_WRITE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %107
  %126 = load i32, i32* @AP_RWNA, align 4
  br label %129

127:                                              ; preds = %107
  %128 = load i32, i32* @AP_RONA, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  %131 = call i64 @ARM_PTE_AP(i32 %130)
  %132 = or i64 %120, %131
  %133 = load i32, i32* @CACHE_ATTRINDX_DEFAULT, align 4
  %134 = call i64 @ARM_PTE_ATTRINDX(i32 %133)
  %135 = or i64 %132, %134
  store i64 %135, i64* %8, align 8
  %136 = load i64, i64* @ARM_PTE_SH, align 8
  %137 = load i64, i64* %8, align 8
  %138 = or i64 %137, %136
  store i64 %138, i64* %8, align 8
  %139 = load i64*, i64** %7, align 8
  %140 = load i64, i64* %8, align 8
  %141 = call i32 @WRITE_PTE_STRONG(i64* %139, i64 %140)
  br label %142

142:                                              ; preds = %129
  %143 = load i64, i64* @PAGE_SIZE, align 8
  %144 = load i64, i64* %12, align 8
  %145 = add nsw i64 %144, %143
  store i64 %145, i64* %12, align 8
  %146 = load i64, i64* @PAGE_SIZE, align 8
  %147 = load i64, i64* %4, align 8
  %148 = add nsw i64 %147, %146
  store i64 %148, i64* %4, align 8
  br label %103

149:                                              ; preds = %103
  %150 = load i32, i32* @kernel_pmap, align 4
  %151 = load i64, i64* %9, align 8
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* %5, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @PMAP_UPDATE_TLBS(i32 %150, i64 %151, i64 %154)
  %156 = load i64, i64* %9, align 8
  ret i64 %156
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64* @pmap_pte(i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ARM_PTE_IS_COMPRESSED(i64) #1

declare dso_local i64 @pa_to_pte(i64) #1

declare dso_local i64 @ARM_PTE_AP(i32) #1

declare dso_local i64 @ARM_PTE_ATTRINDX(i32) #1

declare dso_local i32 @WRITE_PTE_STRONG(i64*, i64) #1

declare dso_local i32 @PMAP_UPDATE_TLBS(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
