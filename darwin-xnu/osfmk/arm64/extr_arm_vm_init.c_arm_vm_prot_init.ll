; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_arm_vm_init.c_arm_vm_prot_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_arm_vm_init.c_arm_vm_prot_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@UINT64_MAX = common dso_local global i64 0, align 8
@segLOWESTTEXT = common dso_local global i64 0, align 8
@segSizePRELINKTEXT = common dso_local global i64 0, align 8
@segPRELINKTEXTB = common dso_local global i64 0, align 8
@segSizeTEXT = common dso_local global i32 0, align 4
@segTEXTB = common dso_local global i64 0, align 8
@segEXTRADATA = common dso_local global i64 0, align 8
@segSizeEXTRADATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"chosen/memory-map\00", align 1
@kSuccess = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"TrustCache\00", align 1
@FALSE = common dso_local global i32 0, align 4
@segPLKDATACONSTB = common dso_local global i64 0, align 8
@segSizePLKDATACONST = common dso_local global i64 0, align 8
@segPLKTEXTEXECB = common dso_local global i32 0, align 4
@segSizePLKTEXTEXEC = common dso_local global i32 0, align 4
@segDATACONSTB = common dso_local global i64 0, align 8
@segSizeDATACONST = common dso_local global i64 0, align 8
@segTEXTEXECB = common dso_local global i32 0, align 4
@segSizeTEXTEXEC = common dso_local global i32 0, align 4
@segDATAB = common dso_local global i64 0, align 8
@segSizeDATA = common dso_local global i64 0, align 8
@segBOOTDATAB = common dso_local global i64 0, align 8
@segSizeBOOTDATA = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@intstack_low_guard = common dso_local global i32 0, align 4
@PAGE_MAX_SIZE = common dso_local global i32 0, align 4
@intstack_high_guard = common dso_local global i32 0, align 4
@excepstack_high_guard = common dso_local global i32 0, align 4
@segKLDB = common dso_local global i32 0, align 4
@segSizeKLD = common dso_local global i32 0, align 4
@segLINKB = common dso_local global i64 0, align 8
@segSizeLINK = common dso_local global i64 0, align 8
@segPLKLINKEDITB = common dso_local global i64 0, align 8
@segSizePLKLINKEDIT = common dso_local global i64 0, align 8
@segLASTB = common dso_local global i32 0, align 4
@segSizeLAST = common dso_local global i32 0, align 4
@segPRELINKDATAB = common dso_local global i64 0, align 8
@segSizePRELINKDATA = common dso_local global i64 0, align 8
@segSizePLKLLVMCOV = common dso_local global i64 0, align 8
@segPLKLLVMCOVB = common dso_local global i64 0, align 8
@segPRELINKINFOB = common dso_local global i64 0, align 8
@segSizePRELINKINFO = common dso_local global i64 0, align 8
@BOOTSTRAP_TABLE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arm_vm_prot_init(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %7 = load i64, i64* @UINT64_MAX, align 8
  store i64 %7, i64* @segLOWESTTEXT, align 8
  %8 = load i64, i64* @segSizePRELINKTEXT, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i64, i64* @segPRELINKTEXTB, align 8
  %12 = load i64, i64* @segLOWESTTEXT, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i64, i64* @segPRELINKTEXTB, align 8
  store i64 %15, i64* @segLOWESTTEXT, align 8
  br label %16

16:                                               ; preds = %14, %10, %1
  %17 = load i32, i32* @segSizeTEXT, align 4
  %18 = call i32 @assert(i32 %17)
  %19 = load i64, i64* @segTEXTB, align 8
  %20 = load i64, i64* @segLOWESTTEXT, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i64, i64* @segTEXTB, align 8
  store i64 %23, i64* @segLOWESTTEXT, align 8
  br label %24

24:                                               ; preds = %22, %16
  %25 = load i64, i64* @segLOWESTTEXT, align 8
  %26 = load i64, i64* @UINT64_MAX, align 8
  %27 = icmp slt i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i64, i64* @segLOWESTTEXT, align 8
  store i64 %30, i64* @segEXTRADATA, align 8
  store i32 0, i32* @segSizeEXTRADATA, align 4
  %31 = call i32 @DTLookupEntry(i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %3)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @kSuccess, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = bitcast %struct.TYPE_5__** %4 to i8**
  %39 = call i32 @DTGetProperty(i32 %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %38, i32* %5)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @kSuccess, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %24
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = icmp eq i64 %45, 8
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @phystokv(i32 %51)
  store i64 %52, i64* @segEXTRADATA, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* @segSizeEXTRADATA, align 4
  %56 = load i64, i64* @segEXTRADATA, align 8
  %57 = load i32, i32* @segSizeEXTRADATA, align 4
  %58 = load i32, i32* @FALSE, align 4
  %59 = call i32 @arm_vm_page_granular_RNX(i64 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %43, %24
  %61 = load i64, i64* @segPRELINKTEXTB, align 8
  %62 = load i64, i64* @segSizePRELINKTEXT, align 8
  %63 = load i32, i32* @FALSE, align 4
  %64 = call i32 @arm_vm_page_granular_RWNX(i64 %61, i64 %62, i32 %63)
  %65 = load i64, i64* @segPLKDATACONSTB, align 8
  %66 = load i64, i64* @segSizePLKDATACONST, align 8
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i32 @arm_vm_page_granular_RWNX(i64 %65, i64 %66, i32 %67)
  %69 = load i32, i32* @segPLKTEXTEXECB, align 4
  %70 = load i32, i32* @segSizePLKTEXTEXEC, align 4
  %71 = load i32, i32* @FALSE, align 4
  %72 = call i32 @arm_vm_page_granular_ROX(i32 %69, i32 %70, i32 %71)
  %73 = load i64, i64* @segSizePLKDATACONST, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %93, label %75

75:                                               ; preds = %60
  %76 = load i32, i32* @segSizePLKTEXTEXEC, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %93, label %78

78:                                               ; preds = %75
  %79 = load i64, i64* @segSizePRELINKTEXT, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load i64, i64* @segPRELINKTEXTB, align 8
  %83 = load i64, i64* @segSizePRELINKTEXT, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i64, i64* @segTEXTB, align 8
  %86 = load i64, i64* @segPRELINKTEXTB, align 8
  %87 = load i64, i64* @segSizePRELINKTEXT, align 8
  %88 = add nsw i64 %86, %87
  %89 = sub nsw i64 %85, %88
  %90 = load i32, i32* @FALSE, align 4
  %91 = call i32 @arm_vm_page_granular_RWNX(i64 %84, i64 %89, i32 %90)
  br label %92

92:                                               ; preds = %81, %78
  br label %111

93:                                               ; preds = %75, %60
  %94 = load i64, i64* @segPLKDATACONSTB, align 8
  %95 = load i64, i64* @segSizePLKDATACONST, align 8
  %96 = add nsw i64 %94, %95
  %97 = load i64, i64* @segTEXTB, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %93
  %100 = load i64, i64* @segPLKDATACONSTB, align 8
  %101 = load i64, i64* @segSizePLKDATACONST, align 8
  %102 = add nsw i64 %100, %101
  %103 = load i64, i64* @segTEXTB, align 8
  %104 = load i64, i64* @segPLKDATACONSTB, align 8
  %105 = load i64, i64* @segSizePLKDATACONST, align 8
  %106 = add nsw i64 %104, %105
  %107 = sub nsw i64 %103, %106
  %108 = load i32, i32* @FALSE, align 4
  %109 = call i32 @arm_vm_page_granular_RWNX(i64 %102, i64 %107, i32 %108)
  br label %110

110:                                              ; preds = %99, %93
  br label %111

111:                                              ; preds = %110, %92
  %112 = load i64, i64* @segTEXTB, align 8
  %113 = load i32, i32* @segSizeTEXT, align 4
  %114 = load i32, i32* @FALSE, align 4
  %115 = call i32 @arm_vm_page_granular_RNX(i64 %112, i32 %113, i32 %114)
  %116 = load i64, i64* @segDATACONSTB, align 8
  %117 = load i64, i64* @segSizeDATACONST, align 8
  %118 = load i32, i32* @FALSE, align 4
  %119 = call i32 @arm_vm_page_granular_RWNX(i64 %116, i64 %117, i32 %118)
  %120 = load i32, i32* @segTEXTEXECB, align 4
  %121 = load i32, i32* @segSizeTEXTEXEC, align 4
  %122 = load i32, i32* @FALSE, align 4
  %123 = call i32 @arm_vm_page_granular_RWX(i32 %120, i32 %121, i32 %122)
  %124 = load i64, i64* @segDATAB, align 8
  %125 = load i64, i64* @segSizeDATA, align 8
  %126 = load i32, i32* @FALSE, align 4
  %127 = call i32 @arm_vm_page_granular_RWNX(i64 %124, i64 %125, i32 %126)
  %128 = load i64, i64* @segBOOTDATAB, align 8
  %129 = load i64, i64* @segSizeBOOTDATA, align 8
  %130 = load i32, i32* @TRUE, align 4
  %131 = call i32 @arm_vm_page_granular_RWNX(i64 %128, i64 %129, i32 %130)
  %132 = load i32, i32* @PAGE_MAX_SIZE, align 4
  %133 = load i32, i32* @TRUE, align 4
  %134 = call i32 @arm_vm_page_granular_RNX(i64 ptrtoint (i32* @intstack_low_guard to i64), i32 %132, i32 %133)
  %135 = load i32, i32* @PAGE_MAX_SIZE, align 4
  %136 = load i32, i32* @TRUE, align 4
  %137 = call i32 @arm_vm_page_granular_RNX(i64 ptrtoint (i32* @intstack_high_guard to i64), i32 %135, i32 %136)
  %138 = load i32, i32* @PAGE_MAX_SIZE, align 4
  %139 = load i32, i32* @TRUE, align 4
  %140 = call i32 @arm_vm_page_granular_RNX(i64 ptrtoint (i32* @excepstack_high_guard to i64), i32 %138, i32 %139)
  %141 = load i32, i32* @segKLDB, align 4
  %142 = load i32, i32* @segSizeKLD, align 4
  %143 = load i32, i32* @FALSE, align 4
  %144 = call i32 @arm_vm_page_granular_ROX(i32 %141, i32 %142, i32 %143)
  %145 = load i64, i64* @segLINKB, align 8
  %146 = load i64, i64* @segSizeLINK, align 8
  %147 = load i32, i32* @FALSE, align 4
  %148 = call i32 @arm_vm_page_granular_RWNX(i64 %145, i64 %146, i32 %147)
  %149 = load i64, i64* @segPLKLINKEDITB, align 8
  %150 = load i64, i64* @segSizePLKLINKEDIT, align 8
  %151 = load i32, i32* @FALSE, align 4
  %152 = call i32 @arm_vm_page_granular_RWNX(i64 %149, i64 %150, i32 %151)
  %153 = load i32, i32* @segLASTB, align 4
  %154 = load i32, i32* @segSizeLAST, align 4
  %155 = load i32, i32* @FALSE, align 4
  %156 = call i32 @arm_vm_page_granular_ROX(i32 %153, i32 %154, i32 %155)
  %157 = load i64, i64* @segPRELINKDATAB, align 8
  %158 = load i64, i64* @segSizePRELINKDATA, align 8
  %159 = load i32, i32* @FALSE, align 4
  %160 = call i32 @arm_vm_page_granular_RWNX(i64 %157, i64 %158, i32 %159)
  %161 = load i64, i64* @segSizePLKLLVMCOV, align 8
  %162 = icmp sgt i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %111
  %164 = load i64, i64* @segPLKLLVMCOVB, align 8
  %165 = load i64, i64* @segSizePLKLLVMCOV, align 8
  %166 = load i32, i32* @FALSE, align 4
  %167 = call i32 @arm_vm_page_granular_RWNX(i64 %164, i64 %165, i32 %166)
  br label %168

168:                                              ; preds = %163, %111
  %169 = load i64, i64* @segPRELINKINFOB, align 8
  %170 = load i64, i64* @segSizePRELINKINFO, align 8
  %171 = load i32, i32* @FALSE, align 4
  %172 = call i32 @arm_vm_page_granular_RWNX(i64 %169, i64 %170, i32 %171)
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @phystokv(i32 %175)
  %177 = load i32, i32* @BOOTSTRAP_TABLE_SIZE, align 4
  %178 = load i32, i32* @FALSE, align 4
  %179 = call i32 @arm_vm_page_granular_RNX(i64 %176, i32 %177, i32 %178)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DTLookupEntry(i32*, i8*, i32*) #1

declare dso_local i32 @DTGetProperty(i32, i8*, i8**, i32*) #1

declare dso_local i64 @phystokv(i32) #1

declare dso_local i32 @arm_vm_page_granular_RNX(i64, i32, i32) #1

declare dso_local i32 @arm_vm_page_granular_RWNX(i64, i64, i32) #1

declare dso_local i32 @arm_vm_page_granular_ROX(i32, i32, i32) #1

declare dso_local i32 @arm_vm_page_granular_RWX(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
