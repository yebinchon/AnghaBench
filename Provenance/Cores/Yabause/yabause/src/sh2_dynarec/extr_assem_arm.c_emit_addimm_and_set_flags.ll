; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_emit_addimm_and_set_flags.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_emit_addimm_and_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"adds %s,%s,#%d\0A\00", align 1
@regname = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"subs %s,%s,#%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"sub %s,%s,#%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"add %s,%s,#%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_addimm_and_set_flags(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, -65536
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 65536
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ false, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @genimm(i32 %15, i32* %5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %11
  %19 = load i32*, i32** @regname, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** @regname, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @assem_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @rd_rn_rm(i32 %31, i32 %32, i32 0)
  %34 = or i32 -493879296, %33
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @output_w32(i32 %36)
  br label %154

38:                                               ; preds = %11
  %39 = load i32, i32* %3, align 4
  %40 = sub nsw i32 0, %39
  %41 = call i64 @genimm(i32 %40, i32* %5)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = load i32*, i32** @regname, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** @regname, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @assem_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %53, i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @rd_rn_rm(i32 %56, i32 %57, i32 0)
  %59 = or i32 -498073600, %58
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @output_w32(i32 %61)
  br label %153

63:                                               ; preds = %38
  %64 = load i32, i32* %3, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %111

66:                                               ; preds = %63
  %67 = load i32*, i32** @regname, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** @regname, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %3, align 4
  %78 = sub nsw i32 0, %77
  %79 = and i32 %78, 65280
  %80 = call i32 @assem_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %76, i32 %79)
  %81 = load i32*, i32** @regname, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** @regname, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %3, align 4
  %92 = sub nsw i32 0, %91
  %93 = and i32 %92, 255
  %94 = call i32 @assem_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %90, i32 %93)
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %3, align 4
  %98 = sub nsw i32 0, %97
  %99 = ashr i32 %98, 8
  %100 = call i32 @rd_rn_imm_shift(i32 %95, i32 %96, i32 %99, i32 8)
  %101 = or i32 -499122176, %100
  %102 = call i32 @output_w32(i32 %101)
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %3, align 4
  %106 = sub nsw i32 0, %105
  %107 = and i32 %106, 255
  %108 = call i32 @rd_rn_imm_shift(i32 %103, i32 %104, i32 %107, i32 0)
  %109 = or i32 -498073600, %108
  %110 = call i32 @output_w32(i32 %109)
  br label %152

111:                                              ; preds = %63
  %112 = load i32*, i32** @regname, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** @regname, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %3, align 4
  %123 = and i32 %122, 65280
  %124 = call i32 @assem_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %116, i32 %121, i32 %123)
  %125 = load i32*, i32** @regname, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** @regname, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %3, align 4
  %136 = and i32 %135, 255
  %137 = call i32 @assem_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %134, i32 %136)
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %3, align 4
  %141 = ashr i32 %140, 8
  %142 = call i32 @rd_rn_imm_shift(i32 %138, i32 %139, i32 %141, i32 8)
  %143 = or i32 -494927872, %142
  %144 = call i32 @output_w32(i32 %143)
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* %3, align 4
  %148 = and i32 %147, 255
  %149 = call i32 @rd_rn_imm_shift(i32 %145, i32 %146, i32 %148, i32 0)
  %150 = or i32 -493879296, %149
  %151 = call i32 @output_w32(i32 %150)
  br label %152

152:                                              ; preds = %111, %66
  br label %153

153:                                              ; preds = %152, %43
  br label %154

154:                                              ; preds = %153, %18
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @genimm(i32, i32*) #1

declare dso_local i32 @assem_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @output_w32(i32) #1

declare dso_local i32 @rd_rn_rm(i32, i32, i32) #1

declare dso_local i32 @rd_rn_imm_shift(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
