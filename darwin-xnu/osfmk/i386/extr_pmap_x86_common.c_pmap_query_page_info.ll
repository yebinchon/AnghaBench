; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_pmap_query_page_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_pmap_query_page_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PMAP_NULL = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@PTE_PS = common dso_local global i32 0, align 4
@PT_ENTRY_NULL = common dso_local global i32* null, align 8
@PMAP_QUERY_PAGE_COMPRESSED = common dso_local global i32 0, align 4
@PTE_COMPRESSED_ALT = common dso_local global i32 0, align 4
@PMAP_QUERY_PAGE_COMPRESSED_ALTACCT = common dso_local global i32 0, align 4
@PMAP_QUERY_PAGE_PRESENT = common dso_local global i32 0, align 4
@PMAP_QUERY_PAGE_INTERNAL = common dso_local global i32 0, align 4
@PMAP_QUERY_PAGE_ALTACCT = common dso_local global i32 0, align 4
@PMAP_QUERY_PAGE_REUSABLE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_query_page_info(i64 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = call i32 (...) @pmap_intr_assert()
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @PMAP_NULL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @kernel_pmap, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %3
  %23 = load i32*, i32** %7, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %24, i32* %4, align 4
  br label %136

25:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @is_ept_pmap(i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @PMAP_LOCK(i64 %28)
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32* @pmap_pde(i64 %30, i32 %31)
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %25
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @PTE_VALID_MASK(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PTE_PS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %35, %25
  br label %130

49:                                               ; preds = %42
  %50 = load i64, i64* %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32* @pmap_pte(i64 %50, i32 %51)
  store i32* %52, i32** %13, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = load i32*, i32** @PT_ENTRY_NULL, align 8
  %55 = icmp eq i32* %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %130

57:                                               ; preds = %49
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @pte_to_pa(i32 %59)
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %57
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @PTE_IS_COMPRESSED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load i32, i32* @PMAP_QUERY_PAGE_COMPRESSED, align 4
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PTE_COMPRESSED_ALT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load i32, i32* @PMAP_QUERY_PAGE_COMPRESSED_ALTACCT, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %77, %68
  br label %82

82:                                               ; preds = %81, %63
  br label %129

83:                                               ; preds = %57
  %84 = load i32, i32* @PMAP_QUERY_PAGE_PRESENT, align 4
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @pa_index(i64 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @IS_MANAGED_PAGE(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %83
  br label %128

93:                                               ; preds = %83
  %94 = load i64, i64* %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i64 @pmap_pv_is_altacct(i64 %94, i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %93
  %100 = load i32, i32* %11, align 4
  %101 = call i64 @IS_INTERNAL_PAGE(i32 %100)
  %102 = call i32 @assert(i64 %101)
  %103 = load i32, i32* @PMAP_QUERY_PAGE_INTERNAL, align 4
  %104 = load i32, i32* %8, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* @PMAP_QUERY_PAGE_ALTACCT, align 4
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  br label %127

109:                                              ; preds = %93
  %110 = load i32, i32* %11, align 4
  %111 = call i64 @IS_REUSABLE_PAGE(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i32, i32* @PMAP_QUERY_PAGE_REUSABLE, align 4
  %115 = load i32, i32* %8, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %8, align 4
  br label %126

117:                                              ; preds = %109
  %118 = load i32, i32* %11, align 4
  %119 = call i64 @IS_INTERNAL_PAGE(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i32, i32* @PMAP_QUERY_PAGE_INTERNAL, align 4
  %123 = load i32, i32* %8, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %121, %117
  br label %126

126:                                              ; preds = %125, %113
  br label %127

127:                                              ; preds = %126, %99
  br label %128

128:                                              ; preds = %127, %92
  br label %129

129:                                              ; preds = %128, %82
  br label %130

130:                                              ; preds = %129, %56, %48
  %131 = load i64, i64* %5, align 8
  %132 = call i32 @PMAP_UNLOCK(i64 %131)
  %133 = load i32, i32* %8, align 4
  %134 = load i32*, i32** %7, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %130, %22
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @pmap_intr_assert(...) #1

declare dso_local i32 @is_ept_pmap(i64) #1

declare dso_local i32 @PMAP_LOCK(i64) #1

declare dso_local i32* @pmap_pde(i64, i32) #1

declare dso_local i32 @PTE_VALID_MASK(i32) #1

declare dso_local i32* @pmap_pte(i64, i32) #1

declare dso_local i64 @pte_to_pa(i32) #1

declare dso_local i64 @PTE_IS_COMPRESSED(i32) #1

declare dso_local i32 @pa_index(i64) #1

declare dso_local i32 @IS_MANAGED_PAGE(i32) #1

declare dso_local i64 @pmap_pv_is_altacct(i64, i32, i32) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i64 @IS_INTERNAL_PAGE(i32) #1

declare dso_local i64 @IS_REUSABLE_PAGE(i32) #1

declare dso_local i32 @PMAP_UNLOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
