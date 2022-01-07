; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_pmap_query_resident.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_pmap_query_resident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PMAP_NULL = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i64 0, align 8
@PMAP__QUERY_RESIDENT = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@max_preemption_latency_tsc = common dso_local global i64 0, align 8
@pde_mapped_size = common dso_local global i32 0, align 4
@PTE_PS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PTE_COMPRESSED = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pmap_query_resident(i64 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %18 = call i32 (...) @pmap_intr_assert()
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @PMAP_NULL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %4
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @kernel_pmap, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26, %22, %4
  %31 = load i64*, i64** %9, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i64*, i64** %9, align 8
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %33, %30
  store i64 0, i64* %5, align 8
  br label %176

36:                                               ; preds = %26
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @is_ept_pmap(i64 %37)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* @PMAP__QUERY_RESIDENT, align 4
  %40 = call i32 @PMAP_CODE(i32 %39)
  %41 = load i32, i32* @DBG_FUNC_START, align 4
  %42 = or i32 %40, %41
  %43 = load i64, i64* %6, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @VM_KERNEL_ADDRHIDE(i32 %44)
  %46 = sext i32 %45 to i64
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @VM_KERNEL_ADDRHIDE(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @VM_KERNEL_ADDRHIDE(i32 %49)
  %51 = call i32 (i32, i64, ...) @PMAP_TRACE(i32 %42, i64 %46, i32 %48, i32 %50)
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @PMAP_LOCK(i64 %52)
  %54 = call i64 (...) @rdtsc64()
  %55 = load i64, i64* @max_preemption_latency_tsc, align 8
  %56 = add nsw i64 %54, %55
  store i64 %56, i64* %14, align 8
  br label %57

57:                                               ; preds = %159, %36
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %160

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @pde_mapped_size, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* @pde_mapped_size, align 4
  %66 = sub nsw i32 %65, 1
  %67 = xor i32 %66, -1
  %68 = and i32 %64, %67
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %72, %61
  %75 = load i64, i64* %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32* @pmap_pde(i64 %75, i32 %76)
  store i32* %77, i32** %10, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %142

80:                                               ; preds = %74
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @PTE_VALID_MASK(i32 %83)
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %142

87:                                               ; preds = %80
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PTE_PS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %141

94:                                               ; preds = %87
  %95 = load i64, i64* %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @pde_mapped_size, align 4
  %98 = sub nsw i32 %97, 1
  %99 = xor i32 %98, -1
  %100 = and i32 %96, %99
  %101 = call i32* @pmap_pte(i64 %95, i32 %100)
  store i32* %101, i32** %11, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i64 @ptenum(i32 %103)
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32* %105, i32** %11, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %7, align 4
  %109 = sub nsw i32 %107, %108
  %110 = call i64 @intel_btop(i32 %109)
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  store i32* %111, i32** %12, align 8
  br label %112

112:                                              ; preds = %137, %94
  %113 = load i32*, i32** %11, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = icmp ult i32* %113, %114
  br i1 %115, label %116, label %140

116:                                              ; preds = %112
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @pte_to_pa(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load i64, i64* @PAGE_SIZE, align 8
  %123 = load i64, i64* %15, align 8
  %124 = add nsw i64 %123, %122
  store i64 %124, i64* %15, align 8
  br label %136

125:                                              ; preds = %116
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @PTE_COMPRESSED, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i64, i64* @PAGE_SIZE, align 8
  %133 = load i64, i64* %16, align 8
  %134 = add nsw i64 %133, %132
  store i64 %134, i64* %16, align 8
  br label %135

135:                                              ; preds = %131, %125
  br label %136

136:                                              ; preds = %135, %121
  br label %137

137:                                              ; preds = %136
  %138 = load i32*, i32** %11, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %11, align 8
  br label %112

140:                                              ; preds = %112
  br label %141

141:                                              ; preds = %140, %93
  br label %142

142:                                              ; preds = %141, %80, %74
  %143 = load i32, i32* %13, align 4
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %142
  %148 = call i64 (...) @rdtsc64()
  %149 = load i64, i64* %14, align 8
  %150 = icmp sge i64 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %147
  %152 = load i64, i64* %6, align 8
  %153 = call i32 @PMAP_UNLOCK(i64 %152)
  %154 = load i64, i64* %6, align 8
  %155 = call i32 @PMAP_LOCK(i64 %154)
  %156 = call i64 (...) @rdtsc64()
  %157 = load i64, i64* @max_preemption_latency_tsc, align 8
  %158 = add nsw i64 %156, %157
  store i64 %158, i64* %14, align 8
  br label %159

159:                                              ; preds = %151, %147, %142
  br label %57

160:                                              ; preds = %57
  %161 = load i64, i64* %6, align 8
  %162 = call i32 @PMAP_UNLOCK(i64 %161)
  %163 = load i32, i32* @PMAP__QUERY_RESIDENT, align 4
  %164 = call i32 @PMAP_CODE(i32 %163)
  %165 = load i32, i32* @DBG_FUNC_END, align 4
  %166 = or i32 %164, %165
  %167 = load i64, i64* %15, align 8
  %168 = call i32 (i32, i64, ...) @PMAP_TRACE(i32 %166, i64 %167)
  %169 = load i64*, i64** %9, align 8
  %170 = icmp ne i64* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %160
  %172 = load i64, i64* %16, align 8
  %173 = load i64*, i64** %9, align 8
  store i64 %172, i64* %173, align 8
  br label %174

174:                                              ; preds = %171, %160
  %175 = load i64, i64* %15, align 8
  store i64 %175, i64* %5, align 8
  br label %176

176:                                              ; preds = %174, %35
  %177 = load i64, i64* %5, align 8
  ret i64 %177
}

declare dso_local i32 @pmap_intr_assert(...) #1

declare dso_local i32 @is_ept_pmap(i64) #1

declare dso_local i32 @PMAP_TRACE(i32, i64, ...) #1

declare dso_local i32 @PMAP_CODE(i32) #1

declare dso_local i32 @VM_KERNEL_ADDRHIDE(i32) #1

declare dso_local i32 @PMAP_LOCK(i64) #1

declare dso_local i64 @rdtsc64(...) #1

declare dso_local i32* @pmap_pde(i64, i32) #1

declare dso_local i32 @PTE_VALID_MASK(i32) #1

declare dso_local i32* @pmap_pte(i64, i32) #1

declare dso_local i64 @ptenum(i32) #1

declare dso_local i64 @intel_btop(i32) #1

declare dso_local i64 @pte_to_pa(i32) #1

declare dso_local i32 @PMAP_UNLOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
