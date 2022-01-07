; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_emit_addimm.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_emit_addimm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"add %s,%s,#%d\0A\00", align 1
@regname = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"sub %s,%s,#%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_addimm(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ult i32 %8, 16
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %12, 16
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %168

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, -65536
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 65536
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @genimm(i32 %28, i32* %7)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %24
  %32 = load i32*, i32** @regname, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** @regname, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @assem_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %41, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @rd_rn_rm(i32 %44, i32 %45, i32 0)
  %47 = or i32 -494927872, %46
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @output_w32(i32 %49)
  br label %167

51:                                               ; preds = %24
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 0, %52
  %54 = call i64 @genimm(i32 %53, i32* %7)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %51
  %57 = load i32*, i32** @regname, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** @regname, align 8
  %63 = load i32, i32* %4, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @assem_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %66, i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @rd_rn_rm(i32 %69, i32 %70, i32 0)
  %72 = or i32 -499122176, %71
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @output_w32(i32 %74)
  br label %166

76:                                               ; preds = %51
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %124

79:                                               ; preds = %76
  %80 = load i32*, i32** @regname, align 8
  %81 = load i32, i32* %6, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** @regname, align 8
  %86 = load i32, i32* %4, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %5, align 4
  %91 = sub nsw i32 0, %90
  %92 = and i32 %91, 65280
  %93 = call i32 @assem_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %89, i32 %92)
  %94 = load i32*, i32** @regname, align 8
  %95 = load i32, i32* %6, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** @regname, align 8
  %100 = load i32, i32* %6, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %5, align 4
  %105 = sub nsw i32 0, %104
  %106 = and i32 %105, 255
  %107 = call i32 @assem_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %103, i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %5, align 4
  %111 = sub nsw i32 0, %110
  %112 = ashr i32 %111, 8
  %113 = call i32 @rd_rn_imm_shift(i32 %108, i32 %109, i32 %112, i32 8)
  %114 = or i32 -499122176, %113
  %115 = call i32 @output_w32(i32 %114)
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %5, align 4
  %119 = sub nsw i32 0, %118
  %120 = and i32 %119, 255
  %121 = call i32 @rd_rn_imm_shift(i32 %116, i32 %117, i32 %120, i32 0)
  %122 = or i32 -499122176, %121
  %123 = call i32 @output_w32(i32 %122)
  br label %165

124:                                              ; preds = %76
  %125 = load i32*, i32** @regname, align 8
  %126 = load i32, i32* %6, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** @regname, align 8
  %131 = load i32, i32* %4, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %5, align 4
  %136 = and i32 %135, 65280
  %137 = call i32 @assem_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %134, i32 %136)
  %138 = load i32*, i32** @regname, align 8
  %139 = load i32, i32* %6, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** @regname, align 8
  %144 = load i32, i32* %6, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %5, align 4
  %149 = and i32 %148, 255
  %150 = call i32 @assem_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %142, i32 %147, i32 %149)
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* %5, align 4
  %154 = ashr i32 %153, 8
  %155 = call i32 @rd_rn_imm_shift(i32 %151, i32 %152, i32 %154, i32 8)
  %156 = or i32 -494927872, %155
  %157 = call i32 @output_w32(i32 %156)
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* %5, align 4
  %161 = and i32 %160, 255
  %162 = call i32 @rd_rn_imm_shift(i32 %158, i32 %159, i32 %161, i32 0)
  %163 = or i32 -494927872, %162
  %164 = call i32 @output_w32(i32 %163)
  br label %165

165:                                              ; preds = %124, %79
  br label %166

166:                                              ; preds = %165, %56
  br label %167

167:                                              ; preds = %166, %31
  br label %177

168:                                              ; preds = %3
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @emit_mov(i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %172, %168
  br label %177

177:                                              ; preds = %176, %167
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @genimm(i32, i32*) #1

declare dso_local i32 @assem_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @output_w32(i32) #1

declare dso_local i32 @rd_rn_rm(i32, i32, i32) #1

declare dso_local i32 @rd_rn_imm_shift(i32, i32, i32, i32) #1

declare dso_local i32 @emit_mov(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
