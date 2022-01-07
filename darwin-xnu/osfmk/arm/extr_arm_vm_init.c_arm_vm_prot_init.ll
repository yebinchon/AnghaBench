; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_arm_vm_init.c_arm_vm_prot_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_arm_vm_init.c_arm_vm_prot_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@gVirtBase = common dso_local global i32 0, align 4
@segSizeTEXT = common dso_local global i32 0, align 4
@segTEXTB = common dso_local global i32 0, align 4
@doconstro = common dso_local global i64 0, align 8
@segDATAB = common dso_local global i32 0, align 4
@sectCONSTB = common dso_local global i32 0, align 4
@sectSizeCONST = common dso_local global i32 0, align 4
@segSizeDATA = common dso_local global i32 0, align 4
@segBOOTDATAB = common dso_local global i32 0, align 4
@segSizeBOOTDATA = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@intstack_low_guard = common dso_local global i32 0, align 4
@PAGE_MAX_SIZE = common dso_local global i32 0, align 4
@intstack_high_guard = common dso_local global i32 0, align 4
@fiqstack_high_guard = common dso_local global i32 0, align 4
@segKLDB = common dso_local global i32 0, align 4
@segSizeKLD = common dso_local global i32 0, align 4
@segLINKB = common dso_local global i32 0, align 4
@segSizeLINK = common dso_local global i32 0, align 4
@segLASTB = common dso_local global i32 0, align 4
@segSizeLAST = common dso_local global i32 0, align 4
@segPRELINKTEXTB = common dso_local global i32 0, align 4
@segSizePRELINKTEXT = common dso_local global i32 0, align 4
@end_kern = common dso_local global i32 0, align 4
@segEXTRADATA = common dso_local global i32 0, align 4
@segSizeEXTRADATA = common dso_local global i32 0, align 4
@ARM_PGBYTES = common dso_local global i32 0, align 4
@static_memory_end = common dso_local global i32 0, align 4
@HIGH_EXC_VECTORS = common dso_local global i32 0, align 4
@ARM_TT_L2_INDEX_MASK = common dso_local global i32 0, align 4
@ARM_TT_L2_SHIFT = common dso_local global i32 0, align 4
@ARM_PTE_APMASK = common dso_local global i32 0, align 4
@AP_RONA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arm_vm_prot_init(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @gVirtBase, align 4
  %10 = load i32, i32* @segSizeTEXT, align 4
  %11 = load i32, i32* @segTEXTB, align 4
  %12 = load i32, i32* @gVirtBase, align 4
  %13 = sub nsw i32 %11, %12
  %14 = add nsw i32 %10, %13
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @arm_vm_page_granular_RWX(i32 %9, i32 %14, i32 %15)
  %17 = load i64, i64* @doconstro, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %1
  %20 = load i32, i32* @segDATAB, align 4
  %21 = load i32, i32* @sectCONSTB, align 4
  %22 = load i32, i32* @segDATAB, align 4
  %23 = sub nsw i32 %21, %22
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @arm_vm_page_granular_RWNX(i32 %20, i32 %23, i32 %24)
  %26 = load i32, i32* @sectCONSTB, align 4
  %27 = load i32, i32* @sectSizeCONST, align 4
  %28 = load i32, i32* @FALSE, align 4
  %29 = call i32 @arm_vm_page_granular_RNX(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* @sectCONSTB, align 4
  %31 = load i32, i32* @sectSizeCONST, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* @segDATAB, align 4
  %34 = load i32, i32* @segSizeDATA, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* @sectCONSTB, align 4
  %37 = load i32, i32* @sectSizeCONST, align 4
  %38 = add nsw i32 %36, %37
  %39 = sub nsw i32 %35, %38
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i32 @arm_vm_page_granular_RWNX(i32 %32, i32 %39, i32 %40)
  br label %47

42:                                               ; preds = %1
  %43 = load i32, i32* @segDATAB, align 4
  %44 = load i32, i32* @segSizeDATA, align 4
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i32 @arm_vm_page_granular_RWNX(i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %19
  %48 = load i32, i32* @segBOOTDATAB, align 4
  %49 = load i32, i32* @segSizeBOOTDATA, align 4
  %50 = load i32, i32* @TRUE, align 4
  %51 = call i32 @arm_vm_page_granular_RWNX(i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* @PAGE_MAX_SIZE, align 4
  %53 = load i32, i32* @TRUE, align 4
  %54 = call i32 @arm_vm_page_granular_RNX(i32 ptrtoint (i32* @intstack_low_guard to i32), i32 %52, i32 %53)
  %55 = load i32, i32* @PAGE_MAX_SIZE, align 4
  %56 = load i32, i32* @TRUE, align 4
  %57 = call i32 @arm_vm_page_granular_RNX(i32 ptrtoint (i32* @intstack_high_guard to i32), i32 %55, i32 %56)
  %58 = load i32, i32* @PAGE_MAX_SIZE, align 4
  %59 = load i32, i32* @TRUE, align 4
  %60 = call i32 @arm_vm_page_granular_RNX(i32 ptrtoint (i32* @fiqstack_high_guard to i32), i32 %58, i32 %59)
  %61 = load i32, i32* @segKLDB, align 4
  %62 = load i32, i32* @segSizeKLD, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @arm_vm_page_granular_ROX(i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* @segLINKB, align 4
  %66 = load i32, i32* @segSizeLINK, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @arm_vm_page_granular_RWNX(i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* @segLASTB, align 4
  %70 = load i32, i32* @segSizeLAST, align 4
  %71 = load i32, i32* @FALSE, align 4
  %72 = call i32 @arm_vm_page_granular_RWNX(i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* @segPRELINKTEXTB, align 4
  %74 = load i32, i32* @segSizePRELINKTEXT, align 4
  %75 = load i32, i32* @TRUE, align 4
  %76 = call i32 @arm_vm_page_granular_RWNX(i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* @segPRELINKTEXTB, align 4
  %78 = load i32, i32* @segSizePRELINKTEXT, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* @end_kern, align 4
  %81 = load i32, i32* @segPRELINKTEXTB, align 4
  %82 = load i32, i32* @segSizePRELINKTEXT, align 4
  %83 = add nsw i32 %81, %82
  %84 = sub nsw i32 %80, %83
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @arm_vm_page_granular_RWNX(i32 %79, i32 %84, i32 %85)
  %87 = load i32, i32* @end_kern, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @phystokv(i64 %90)
  %92 = load i32, i32* @end_kern, align 4
  %93 = sub nsw i32 %91, %92
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @arm_vm_page_granular_RWNX(i32 %87, i32 %93, i32 %94)
  %96 = load i32, i32* @segEXTRADATA, align 4
  %97 = load i32, i32* @segSizeEXTRADATA, align 4
  %98 = load i32, i32* @FALSE, align 4
  %99 = call i32 @arm_vm_page_granular_RNX(i32 %96, i32 %97, i32 %98)
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @phystokv(i64 %102)
  %104 = load i32, i32* @ARM_PGBYTES, align 4
  %105 = mul nsw i32 %104, 8
  %106 = load i32, i32* @FALSE, align 4
  %107 = call i32 @arm_vm_page_granular_RWNX(i32 %103, i32 %105, i32 %106)
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @phystokv(i64 %110)
  %112 = load i32, i32* @ARM_PGBYTES, align 4
  %113 = mul nsw i32 %112, 8
  %114 = add nsw i32 %111, %113
  %115 = load i32, i32* @ARM_PGBYTES, align 4
  %116 = load i32, i32* @FALSE, align 4
  %117 = call i32 @arm_vm_page_granular_RWNX(i32 %114, i32 %115, i32 %116)
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @phystokv(i64 %120)
  %122 = load i32, i32* @ARM_PGBYTES, align 4
  %123 = mul nsw i32 %122, 9
  %124 = add nsw i32 %121, %123
  %125 = load i32, i32* @ARM_PGBYTES, align 4
  %126 = load i32, i32* @FALSE, align 4
  %127 = call i32 @arm_vm_page_granular_RWX(i32 %124, i32 %125, i32 %126)
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @phystokv(i64 %130)
  %132 = load i32, i32* @ARM_PGBYTES, align 4
  %133 = mul nsw i32 %132, 10
  %134 = add nsw i32 %131, %133
  %135 = load i32, i32* @static_memory_end, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @phystokv(i64 %138)
  %140 = load i32, i32* @ARM_PGBYTES, align 4
  %141 = mul nsw i32 %140, 10
  %142 = add nsw i32 %139, %141
  %143 = sub nsw i32 %135, %142
  %144 = load i32, i32* %3, align 4
  %145 = call i32 @arm_vm_page_granular_RWNX(i32 %134, i32 %143, i32 %144)
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i32, i32* @ARM_PGBYTES, align 4
  %150 = mul nsw i32 %149, 9
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %148, %151
  store i64 %152, i64* %4, align 8
  %153 = load i64, i64* %4, align 8
  %154 = call i32 @phystokv(i64 %153)
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to i32*
  store i32* %156, i32** %5, align 8
  %157 = load i32, i32* @HIGH_EXC_VECTORS, align 4
  %158 = load i32, i32* @ARM_TT_L2_INDEX_MASK, align 4
  %159 = and i32 %157, %158
  %160 = load i32, i32* @ARM_TT_L2_SHIFT, align 4
  %161 = ashr i32 %159, %160
  store i32 %161, i32* %6, align 4
  %162 = load i32*, i32** %5, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @ARM_PTE_APMASK, align 4
  %169 = xor i32 %168, -1
  %170 = and i32 %167, %169
  %171 = load i32, i32* @AP_RONA, align 4
  %172 = call i32 @ARM_PTE_AP(i32 %171)
  %173 = or i32 %170, %172
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load i32*, i32** %5, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %174, i32* %178, align 4
  ret void
}

declare dso_local i32 @arm_vm_page_granular_RWX(i32, i32, i32) #1

declare dso_local i32 @arm_vm_page_granular_RWNX(i32, i32, i32) #1

declare dso_local i32 @arm_vm_page_granular_RNX(i32, i32, i32) #1

declare dso_local i32 @arm_vm_page_granular_ROX(i32, i32, i32) #1

declare dso_local i32 @phystokv(i64) #1

declare dso_local i32 @ARM_PTE_AP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
