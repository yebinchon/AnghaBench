; ModuleID = '/home/carl/AnghaBench/esp-idf/components/ulp/extr_ulp_macro.c_do_single_reloc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/ulp/extr_ulp_macro.c_do_single_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@OPCODE_BRANCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"branch macro was applied to a non-branch instruction\00", align 1
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"target out of range: branch from %x to %x\00", align 1
@ESP_ERR_ULP_BRANCH_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"relocation applied to a jump with offset in register\00", align 1
@OPCODE_ALU = common dso_local global i32 0, align 4
@SUB_OPCODE_ALU_IMM = common dso_local global i32 0, align 4
@ALU_SEL_MOV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"pc macro was applied to an incompatible instruction\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i64, i64)* @do_single_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_single_reloc(%struct.TYPE_12__* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__, align 4
  %7 = alloca %struct.TYPE_13__, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = bitcast %struct.TYPE_13__* %6 to i64*
  store i64 %2, i64* %15, align 4
  %16 = bitcast %struct.TYPE_13__* %7 to i64*
  store i64 %3, i64* %16, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store i32 %1, i32* %9, align 4
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %10, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i64 %23
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %126 [
    i32 132, label %27
    i32 131, label %95
  ]

27:                                               ; preds = %4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @OPCODE_BRANCH, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %27
  %36 = phi i1 [ false, %27 ], [ true, %34 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %92 [
    i32 130, label %43
    i32 129, label %43
    i32 128, label %76
  ]

43:                                               ; preds = %35, %35
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %46, %49
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @abs(i64 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i64, i64* %12, align 8
  %54 = icmp sge i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 0, i32 1
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp sgt i32 %57, 127
  br i1 %58, label %59, label %67

59:                                               ; preds = %43
  %60 = load i32, i32* @TAG, align 4
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ESP_LOGW(i32 %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %64)
  %66 = load i32, i32* @ESP_ERR_ULP_BRANCH_OUT_OF_RANGE, align 4
  store i32 %66, i32* %5, align 4
  br label %130

67:                                               ; preds = %43
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  br label %94

76:                                               ; preds = %35
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %76
  %84 = phi i1 [ false, %76 ], [ true, %82 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 4
  br label %94

92:                                               ; preds = %35
  %93 = call i32 @assert(i32 0)
  br label %94

94:                                               ; preds = %92, %83, %67
  br label %128

95:                                               ; preds = %4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @OPCODE_ALU, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %95
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SUB_OPCODE_ALU_IMM, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %102
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @ALU_SEL_MOV, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %109, %102, %95
  %118 = phi i1 [ false, %109 ], [ false, %102 ], [ false, %95 ], [ true, %116 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 4
  br label %128

126:                                              ; preds = %4
  %127 = call i32 @assert(i32 0)
  br label %128

128:                                              ; preds = %126, %117, %94
  %129 = load i32, i32* @ESP_OK, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %128, %59
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @ESP_LOGW(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
