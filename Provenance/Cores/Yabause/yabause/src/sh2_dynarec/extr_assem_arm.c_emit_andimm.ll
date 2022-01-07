; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_emit_andimm.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_emit_andimm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"and %s,%s,#%d\0A\00", align 1
@regname = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"bic %s,%s,#%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"bic %s,%s,#FF000000\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"bic %s,%s,#00FF0000\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"mov r14,#%d\0A\00", align 1
@HOST_TEMPREG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"add r14,r14,#%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"and %s,%s,r14\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_andimm(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @emit_zeroreg(i32 %11)
  br label %149

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @genimm(i32 %14, i32* %7)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = load i32*, i32** @regname, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** @regname, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i8*, i32, ...) @assem_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @rd_rn_rm(i32 %30, i32 %31, i32 0)
  %33 = or i32 -503316480, %32
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @output_w32(i32 %35)
  br label %148

37:                                               ; preds = %13
  %38 = load i32, i32* %5, align 4
  %39 = xor i32 %38, -1
  %40 = call i64 @genimm(i32 %39, i32* %7)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  %43 = load i32*, i32** @regname, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** @regname, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i8*, i32, ...) @assem_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %52, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @rd_rn_rm(i32 %55, i32 %56, i32 0)
  %58 = or i32 -473956352, %57
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @output_w32(i32 %60)
  br label %147

62:                                               ; preds = %37
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, 65535
  br i1 %64, label %65, label %100

65:                                               ; preds = %62
  %66 = load i32*, i32** @regname, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** @regname, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, i32, ...) @assem_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @rd_rn_rm(i32 %77, i32 %78, i32 0)
  %80 = or i32 -473956352, %79
  %81 = or i32 %80, 1279
  %82 = call i32 @output_w32(i32 %81)
  %83 = load i32*, i32** @regname, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** @regname, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, i32, ...) @assem_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %92)
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @rd_rn_rm(i32 %94, i32 %95, i32 0)
  %97 = or i32 -473956352, %96
  %98 = or i32 %97, 2303
  %99 = call i32 @output_w32(i32 %98)
  br label %146

100:                                              ; preds = %62
  %101 = load i32, i32* %5, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %5, align 4
  %105 = icmp slt i32 %104, 65535
  br label %106

106:                                              ; preds = %103, %100
  %107 = phi i1 [ false, %100 ], [ %105, %103 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load i32, i32* %5, align 4
  %111 = and i32 %110, 65280
  %112 = call i32 (i8*, i32, ...) @assem_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @HOST_TEMPREG, align 4
  %114 = load i32, i32* %5, align 4
  %115 = ashr i32 %114, 8
  %116 = call i32 @rd_rn_imm_shift(i32 %113, i32 0, i32 %115, i32 8)
  %117 = or i32 -476053504, %116
  %118 = call i32 @output_w32(i32 %117)
  %119 = load i32, i32* %5, align 4
  %120 = and i32 %119, 255
  %121 = call i32 (i8*, i32, ...) @assem_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @HOST_TEMPREG, align 4
  %123 = load i32, i32* @HOST_TEMPREG, align 4
  %124 = load i32, i32* %5, align 4
  %125 = and i32 %124, 255
  %126 = call i32 @rd_rn_imm_shift(i32 %122, i32 %123, i32 %125, i32 0)
  %127 = or i32 -494927872, %126
  %128 = call i32 @output_w32(i32 %127)
  %129 = load i32*, i32** @regname, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** @regname, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i8*, i32, ...) @assem_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %133, i32 %138)
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @HOST_TEMPREG, align 4
  %143 = call i32 @rd_rn_rm(i32 %140, i32 %141, i32 %142)
  %144 = or i32 -536870912, %143
  %145 = call i32 @output_w32(i32 %144)
  br label %146

146:                                              ; preds = %106, %65
  br label %147

147:                                              ; preds = %146, %42
  br label %148

148:                                              ; preds = %147, %17
  br label %149

149:                                              ; preds = %148, %10
  ret void
}

declare dso_local i32 @emit_zeroreg(i32) #1

declare dso_local i64 @genimm(i32, i32*) #1

declare dso_local i32 @assem_debug(i8*, i32, ...) #1

declare dso_local i32 @output_w32(i32) #1

declare dso_local i32 @rd_rn_rm(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rd_rn_imm_shift(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
