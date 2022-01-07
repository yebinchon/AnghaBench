; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_machine_routines.c_ml_static_protect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_machine_routines.c_ml_static_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@VM_MIN_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@ARM_PGBYTES = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ml_static_protect(): WX request on %p\00", align 1
@AP_RWNA = common dso_local global i32 0, align 4
@AP_RONA = common dso_local global i32 0, align 4
@ARM_PTE_NX = common dso_local global i32 0, align 4
@ARM_TTE_BLOCK_NX = common dso_local global i32 0, align 4
@ARM_PGMASK = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_3__* null, align 8
@ARM_TTE_TYPE_MASK = common dso_local global i32 0, align 4
@ARM_TTE_TYPE_TABLE = common dso_local global i32 0, align 4
@ARM_TTE_TYPE_BLOCK = common dso_local global i32 0, align 4
@ARM_TTE_BLOCK_APMASK = common dso_local global i32 0, align 4
@ARM_TTE_BLOCK_NX_MASK = common dso_local global i32 0, align 4
@ARM_PTE_APMASK = common dso_local global i32 0, align 4
@ARM_PTE_NX_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ml_static_protect(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @VM_MIN_KERNEL_ADDRESS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %22, i32* %4, align 4
  br label %168

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ARM_PGBYTES, align 4
  %26 = sub nsw i32 %25, 1
  %27 = and i32 %24, %26
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @VM_PROT_WRITE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %23
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %40, %35, %23
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @VM_PROT_WRITE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i32, i32* @AP_RWNA, align 4
  %52 = call i32 @ARM_PTE_AP(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @AP_RWNA, align 4
  %56 = call i32 @ARM_TTE_BLOCK_AP(i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  br label %68

59:                                               ; preds = %45
  %60 = load i32, i32* @AP_RONA, align 4
  %61 = call i32 @ARM_PTE_AP(i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* @AP_RONA, align 4
  %65 = call i32 @ARM_TTE_BLOCK_AP(i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %59, %50
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @ARM_PTE_NX, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* @ARM_TTE_BLOCK_NX, align 4
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %73, %68
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %152, %80
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* @ARM_PGMASK, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %86, %88
  %90 = icmp slt i32 %83, %89
  br i1 %90, label %91, label %156

91:                                               ; preds = %82
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kernel_pmap, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @pmap_find_phys(%struct.TYPE_3__* %92, i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %151

97:                                               ; preds = %91
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kernel_pmap, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i64 @ttenum(i32 %101)
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32* %103, i32** %13, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @ARM_TTE_TYPE_MASK, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* @ARM_TTE_TYPE_TABLE, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %97
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* @ARM_TTE_TYPE_MASK, align 4
  %114 = and i32 %112, %113
  %115 = load i32, i32* @ARM_TTE_TYPE_BLOCK, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %111
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* @ARM_TTE_BLOCK_APMASK, align 4
  %120 = load i32, i32* @ARM_TTE_BLOCK_NX_MASK, align 4
  %121 = or i32 %119, %120
  %122 = and i32 %118, %121
  %123 = load i32, i32* %9, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  br label %152

126:                                              ; preds = %117, %111
  %127 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %127, i32* %12, align 4
  br label %156

128:                                              ; preds = %97
  %129 = load i32, i32* %14, align 4
  %130 = call i64 @ttetokv(i32 %129)
  %131 = inttoptr i64 %130 to i32*
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @ptenum(i32 %132)
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  store i32* %135, i32** %15, align 8
  %136 = load i32*, i32** %15, align 8
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* @ARM_PTE_APMASK, align 4
  %140 = load i32, i32* @ARM_PTE_NX_MASK, align 4
  %141 = or i32 %139, %140
  %142 = xor i32 %141, -1
  %143 = and i32 %138, %142
  %144 = load i32, i32* %8, align 4
  %145 = or i32 %143, %144
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* %16, align 4
  %147 = load i32*, i32** %15, align 8
  store i32 %146, i32* %147, align 4
  %148 = load i32*, i32** %15, align 8
  %149 = ptrtoint i32* %148 to i32
  %150 = call i32 @FlushPoC_DcacheRegion(i32 %149, i32 4)
  br label %151

151:                                              ; preds = %128, %91
  br label %152

152:                                              ; preds = %151, %125
  %153 = load i32, i32* @ARM_PGBYTES, align 4
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %10, align 4
  br label %82

156:                                              ; preds = %126, %82
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %5, align 4
  %159 = icmp sgt i32 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %156
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %5, align 4
  %164 = sub nsw i32 %162, %163
  %165 = call i32 @flush_mmu_tlb_region(i32 %161, i32 %164)
  br label %166

166:                                              ; preds = %160, %156
  %167 = load i32, i32* %12, align 4
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %166, %21
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @panic(i8*, i8*) #1

declare dso_local i32 @ARM_PTE_AP(i32) #1

declare dso_local i32 @ARM_TTE_BLOCK_AP(i32) #1

declare dso_local i32 @pmap_find_phys(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @ttenum(i32) #1

declare dso_local i64 @ttetokv(i32) #1

declare dso_local i32 @ptenum(i32) #1

declare dso_local i32 @FlushPoC_DcacheRegion(i32, i32) #1

declare dso_local i32 @flush_mmu_tlb_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
