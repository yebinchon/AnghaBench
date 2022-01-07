; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_arm_vm_init.c_arm_vm_page_granular_prot.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_arm_vm_init.c_arm_vm_page_granular_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_TT_L2_OFFMASK = common dso_local global i32 0, align 4
@ARM_TT_L2_SIZE = common dso_local global i32 0, align 4
@gVirtBase = common dso_local global i32 0, align 4
@gPhysBase = common dso_local global i32 0, align 4
@real_avail_end = common dso_local global i32 0, align 4
@ARM_TTE_BLOCK_L2_MASK = common dso_local global i32 0, align 4
@ARM_TTE_TYPE_BLOCK = common dso_local global i32 0, align 4
@ARM_TTE_VALID = common dso_local global i32 0, align 4
@ARM_TTE_BLOCK_AF = common dso_local global i32 0, align 4
@ARM_TTE_BLOCK_NX = common dso_local global i32 0, align 4
@SH_OUTER_MEMORY = common dso_local global i32 0, align 4
@CACHE_ATTRINDX_WRITEBACK = common dso_local global i32 0, align 4
@ARM_TTE_BLOCK_PNX = common dso_local global i32 0, align 4
@ARM_TTE_BLOCK_NG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i32, i32, i32, i32)* @arm_vm_page_granular_prot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_vm_page_granular_prot(i32 %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @ARM_TT_L2_OFFMASK, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* @ARM_TT_L2_OFFMASK, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  store i32 %32, i32* %18, align 4
  %33 = load i64, i64* %9, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %7
  br label %156

36:                                               ; preds = %7
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* %17, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @arm_vm_page_granular_helper(i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32** null, i32* null)
  br label %156

49:                                               ; preds = %36
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @arm_vm_page_granular_helper(i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32** %15, i32* %16)
  br label %58

58:                                               ; preds = %133, %49
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %18, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i32, i32* @ARM_TT_L2_SIZE, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %137

64:                                               ; preds = %58
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* @ARM_TT_L2_SIZE, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %18, align 4
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @arm_vm_page_granular_helper(i32 %68, i32 %71, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32** null, i32* null)
  br label %133

79:                                               ; preds = %64
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* @gVirtBase, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* @gPhysBase, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* @ARM_TT_L2_OFFMASK, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i32, i32* %18, align 4
  %94 = call i32* @arm_kva_to_tte(i32 %93)
  store i32* %94, i32** %20, align 8
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* @gPhysBase, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %132

98:                                               ; preds = %79
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* @real_avail_end, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %132

102:                                              ; preds = %98
  %103 = load i32, i32* %19, align 4
  %104 = load i32, i32* @ARM_TTE_BLOCK_L2_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* @ARM_TTE_TYPE_BLOCK, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @ARM_TTE_VALID, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @ARM_TTE_BLOCK_AF, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @ARM_TTE_BLOCK_NX, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @ARM_TTE_BLOCK_AP(i32 %114)
  %116 = or i32 %113, %115
  %117 = load i32, i32* @SH_OUTER_MEMORY, align 4
  %118 = call i32 @ARM_TTE_BLOCK_SH(i32 %117)
  %119 = or i32 %116, %118
  %120 = load i32, i32* @CACHE_ATTRINDX_WRITEBACK, align 4
  %121 = call i32 @ARM_TTE_BLOCK_ATTRINDX(i32 %120)
  %122 = or i32 %119, %121
  store i32 %122, i32* %21, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %102
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* @ARM_TTE_BLOCK_PNX, align 4
  %128 = or i32 %126, %127
  store i32 %128, i32* %21, align 4
  br label %129

129:                                              ; preds = %125, %102
  %130 = load i32, i32* %21, align 4
  %131 = load i32*, i32** %20, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %98, %79
  br label %133

133:                                              ; preds = %132, %67
  %134 = load i32, i32* @ARM_TT_L2_SIZE, align 4
  %135 = load i32, i32* %18, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %18, align 4
  br label %58

137:                                              ; preds = %58
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %137
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @arm_vm_page_granular_helper(i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32** %15, i32* %16)
  br label %150

150:                                              ; preds = %141, %137
  %151 = load i32*, i32** %15, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* %16, align 4
  %155 = load i32*, i32** %15, align 8
  store i32 %154, i32* %155, align 4
  br label %156

156:                                              ; preds = %35, %40, %153, %150
  ret void
}

declare dso_local i32 @arm_vm_page_granular_helper(i32, i32, i32, i32, i32, i32, i32, i32**, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @arm_kva_to_tte(i32) #1

declare dso_local i32 @ARM_TTE_BLOCK_AP(i32) #1

declare dso_local i32 @ARM_TTE_BLOCK_SH(i32) #1

declare dso_local i32 @ARM_TTE_BLOCK_ATTRINDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
