; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_pre_expand.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_pre_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PDPT_ENTRY_NULL = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"pmap_pre_expand\00", align 1
@INTEL_EPT_EX = common dso_local global i32 0, align 4
@INTEL_PTE_USER = common dso_local global i32 0, align 4
@PD_ENTRY_NULL = common dso_local global i32* null, align 8
@PT_ENTRY_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_pre_expand(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @is_ept_pmap(i32 %8)
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @PMAP_LOCK(i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32* @pmap64_pdpt(i32 %12, i32 %13)
  %15 = load i32*, i32** @PDPT_ENTRY_NULL, align 8
  %16 = icmp eq i32* %14, %15
  br i1 %16, label %17, label %71

17:                                               ; preds = %2
  %18 = call i32 @pmap_next_page_hi(i32* %5)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @pmap_zero_page(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32* @pmap64_pml4(i32 %25, i32 %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @i386_ptob(i32 %29)
  %31 = call i32 @pa_to_pte(i32 %30)
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @PTE_READ(i64 %32)
  %34 = or i32 %31, %33
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = load i32, i32* @INTEL_EPT_EX, align 4
  br label %41

39:                                               ; preds = %22
  %40 = load i32, i32* @INTEL_PTE_USER, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = or i32 %34, %42
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @PTE_WRITE(i64 %44)
  %46 = or i32 %43, %45
  %47 = call i32 @pmap_store_pte(i32* %28, i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32* @pmap64_user_pml4(i32 %48, i32 %49)
  store i32* %50, i32** %6, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @i386_ptob(i32 %52)
  %54 = call i32 @pa_to_pte(i32 %53)
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @PTE_READ(i64 %55)
  %57 = or i32 %54, %56
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %41
  %61 = load i32, i32* @INTEL_EPT_EX, align 4
  br label %64

62:                                               ; preds = %41
  %63 = load i32, i32* @INTEL_PTE_USER, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = or i32 %57, %65
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @PTE_WRITE(i64 %67)
  %69 = or i32 %66, %68
  %70 = call i32 @pmap_store_pte(i32* %51, i32 %69)
  br label %71

71:                                               ; preds = %64, %2
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32* @pmap64_pde(i32 %72, i32 %73)
  %75 = load i32*, i32** @PD_ENTRY_NULL, align 8
  %76 = icmp eq i32* %74, %75
  br i1 %76, label %77, label %108

77:                                               ; preds = %71
  %78 = call i32 @pmap_next_page_hi(i32* %5)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %77
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @pmap_zero_page(i32 %83)
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i32* @pmap64_pdpt(i32 %85, i32 %86)
  store i32* %87, i32** %6, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @i386_ptob(i32 %89)
  %91 = call i32 @pa_to_pte(i32 %90)
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @PTE_READ(i64 %92)
  %94 = or i32 %91, %93
  %95 = load i64, i64* %7, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %82
  %98 = load i32, i32* @INTEL_EPT_EX, align 4
  br label %101

99:                                               ; preds = %82
  %100 = load i32, i32* @INTEL_PTE_USER, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = or i32 %94, %102
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @PTE_WRITE(i64 %104)
  %106 = or i32 %103, %105
  %107 = call i32 @pmap_store_pte(i32* %88, i32 %106)
  br label %108

108:                                              ; preds = %101, %71
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i64 @pmap_pte(i32 %109, i32 %110)
  %112 = load i64, i64* @PT_ENTRY_NULL, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %145

114:                                              ; preds = %108
  %115 = call i32 @pmap_next_page_hi(i32* %5)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %114
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @pmap_zero_page(i32 %120)
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* %4, align 4
  %124 = call i32* @pmap64_pde(i32 %122, i32 %123)
  store i32* %124, i32** %6, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @i386_ptob(i32 %126)
  %128 = call i32 @pa_to_pte(i32 %127)
  %129 = load i64, i64* %7, align 8
  %130 = call i32 @PTE_READ(i64 %129)
  %131 = or i32 %128, %130
  %132 = load i64, i64* %7, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %119
  %135 = load i32, i32* @INTEL_EPT_EX, align 4
  br label %138

136:                                              ; preds = %119
  %137 = load i32, i32* @INTEL_PTE_USER, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  %140 = or i32 %131, %139
  %141 = load i64, i64* %7, align 8
  %142 = call i32 @PTE_WRITE(i64 %141)
  %143 = or i32 %140, %142
  %144 = call i32 @pmap_store_pte(i32* %125, i32 %143)
  br label %145

145:                                              ; preds = %138, %108
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @PMAP_UNLOCK(i32 %146)
  ret void
}

declare dso_local i64 @is_ept_pmap(i32) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32* @pmap64_pdpt(i32, i32) #1

declare dso_local i32 @pmap_next_page_hi(i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @pmap_zero_page(i32) #1

declare dso_local i32* @pmap64_pml4(i32, i32) #1

declare dso_local i32 @pmap_store_pte(i32*, i32) #1

declare dso_local i32 @pa_to_pte(i32) #1

declare dso_local i32 @i386_ptob(i32) #1

declare dso_local i32 @PTE_READ(i64) #1

declare dso_local i32 @PTE_WRITE(i64) #1

declare dso_local i32* @pmap64_user_pml4(i32, i32) #1

declare dso_local i32* @pmap64_pde(i32, i32) #1

declare dso_local i64 @pmap_pte(i32, i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
