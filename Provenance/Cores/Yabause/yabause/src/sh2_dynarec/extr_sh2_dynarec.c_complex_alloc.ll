; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_complex_alloc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_complex_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i32 }

@opcode = common dso_local global i32* null, align 8
@opcode2 = common dso_local global i32* null, align 8
@rs1 = common dso_local global i32* null, align 8
@ECX = common dso_local global i32 0, align 4
@rs2 = common dso_local global i32* null, align 8
@EAX = common dso_local global i32 0, align 4
@SR = common dso_local global i32 0, align 4
@EDX = common dso_local global i32 0, align 4
@EBP = common dso_local global i32 0, align 4
@EDI = common dso_local global i32 0, align 4
@EBX = common dso_local global i32 0, align 4
@MACL = common dso_local global i32 0, align 4
@MACH = common dso_local global i32 0, align 4
@HOST_REGS = common dso_local global i32 0, align 4
@minimum_free_regs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @complex_alloc(%struct.regstat* %0, i32 %1) #0 {
  %3 = alloca %struct.regstat*, align 8
  %4 = alloca i32, align 4
  store %struct.regstat* %0, %struct.regstat** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** @opcode, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %5, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %55

11:                                               ; preds = %2
  %12 = load i32*, i32** @opcode2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %18, label %55

18:                                               ; preds = %11
  %19 = load %struct.regstat*, %struct.regstat** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32*, i32** @rs1, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ECX, align 4
  %27 = call i32 @alloc_x86_reg(%struct.regstat* %19, i32 %20, i32 %25, i32 %26)
  %28 = load %struct.regstat*, %struct.regstat** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32*, i32** @rs2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @EAX, align 4
  %36 = call i32 @alloc_x86_reg(%struct.regstat* %28, i32 %29, i32 %34, i32 %35)
  %37 = load %struct.regstat*, %struct.regstat** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SR, align 4
  %40 = load i32, i32* @EDX, align 4
  %41 = call i32 @alloc_x86_reg(%struct.regstat* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.regstat*, %struct.regstat** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @alloc_all(%struct.regstat* %42, i32 %43)
  %45 = load %struct.regstat*, %struct.regstat** %3, align 8
  %46 = load i32*, i32** @rs2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dirty_reg(%struct.regstat* %45, i32 %50)
  %52 = load %struct.regstat*, %struct.regstat** %3, align 8
  %53 = load i32, i32* @SR, align 4
  %54 = call i32 @dirty_reg(%struct.regstat* %52, i32 %53)
  br label %55

55:                                               ; preds = %18, %11, %2
  %56 = load i32*, i32** @opcode, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %132

62:                                               ; preds = %55
  %63 = load i32*, i32** @opcode2, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 15
  br i1 %68, label %69, label %132

69:                                               ; preds = %62
  %70 = load %struct.regstat*, %struct.regstat** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load i32*, i32** @rs1, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @EBP, align 4
  %78 = call i32 @alloc_x86_reg(%struct.regstat* %70, i32 %71, i32 %76, i32 %77)
  %79 = load %struct.regstat*, %struct.regstat** %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = load i32*, i32** @rs2, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @EDI, align 4
  %87 = call i32 @alloc_x86_reg(%struct.regstat* %79, i32 %80, i32 %85, i32 %86)
  %88 = load %struct.regstat*, %struct.regstat** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @SR, align 4
  %91 = load i32, i32* @EBX, align 4
  %92 = call i32 @alloc_x86_reg(%struct.regstat* %88, i32 %89, i32 %90, i32 %91)
  %93 = load %struct.regstat*, %struct.regstat** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @alloc_all(%struct.regstat* %93, i32 %94)
  %96 = load %struct.regstat*, %struct.regstat** %3, align 8
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @MACL, align 4
  %99 = load i32, i32* @EAX, align 4
  %100 = call i32 @alloc_x86_reg(%struct.regstat* %96, i32 %97, i32 %98, i32 %99)
  %101 = load %struct.regstat*, %struct.regstat** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @MACH, align 4
  %104 = load i32, i32* @EDX, align 4
  %105 = call i32 @alloc_x86_reg(%struct.regstat* %101, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.regstat*, %struct.regstat** %3, align 8
  %107 = load i32*, i32** @rs1, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @dirty_reg(%struct.regstat* %106, i32 %111)
  %113 = load %struct.regstat*, %struct.regstat** %3, align 8
  %114 = load i32*, i32** @rs2, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @dirty_reg(%struct.regstat* %113, i32 %118)
  %120 = load %struct.regstat*, %struct.regstat** %3, align 8
  %121 = load i32, i32* @MACH, align 4
  %122 = call i32 @dirty_reg(%struct.regstat* %120, i32 %121)
  %123 = load %struct.regstat*, %struct.regstat** %3, align 8
  %124 = load i32, i32* @MACL, align 4
  %125 = call i32 @dirty_reg(%struct.regstat* %123, i32 %124)
  %126 = load %struct.regstat*, %struct.regstat** %3, align 8
  %127 = load i32, i32* @MACH, align 4
  %128 = call i32 @clear_const(%struct.regstat* %126, i32 %127)
  %129 = load %struct.regstat*, %struct.regstat** %3, align 8
  %130 = load i32, i32* @MACL, align 4
  %131 = call i32 @clear_const(%struct.regstat* %129, i32 %130)
  br label %132

132:                                              ; preds = %69, %62, %55
  %133 = load i32*, i32** @opcode, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 4
  br i1 %138, label %139, label %209

139:                                              ; preds = %132
  %140 = load i32*, i32** @opcode2, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 15
  br i1 %145, label %146, label %209

146:                                              ; preds = %139
  %147 = load %struct.regstat*, %struct.regstat** %3, align 8
  %148 = load i32, i32* %4, align 4
  %149 = load i32*, i32** @rs1, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @EBP, align 4
  %155 = call i32 @alloc_x86_reg(%struct.regstat* %147, i32 %148, i32 %153, i32 %154)
  %156 = load %struct.regstat*, %struct.regstat** %3, align 8
  %157 = load i32, i32* %4, align 4
  %158 = load i32*, i32** @rs2, align 8
  %159 = load i32, i32* %4, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @EDI, align 4
  %164 = call i32 @alloc_x86_reg(%struct.regstat* %156, i32 %157, i32 %162, i32 %163)
  %165 = load %struct.regstat*, %struct.regstat** %3, align 8
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @SR, align 4
  %168 = load i32, i32* @EBX, align 4
  %169 = call i32 @alloc_x86_reg(%struct.regstat* %165, i32 %166, i32 %167, i32 %168)
  %170 = load %struct.regstat*, %struct.regstat** %3, align 8
  %171 = load i32, i32* %4, align 4
  %172 = call i32 @alloc_all(%struct.regstat* %170, i32 %171)
  %173 = load %struct.regstat*, %struct.regstat** %3, align 8
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @MACL, align 4
  %176 = load i32, i32* @EAX, align 4
  %177 = call i32 @alloc_x86_reg(%struct.regstat* %173, i32 %174, i32 %175, i32 %176)
  %178 = load %struct.regstat*, %struct.regstat** %3, align 8
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* @MACH, align 4
  %181 = load i32, i32* @EDX, align 4
  %182 = call i32 @alloc_x86_reg(%struct.regstat* %178, i32 %179, i32 %180, i32 %181)
  %183 = load %struct.regstat*, %struct.regstat** %3, align 8
  %184 = load i32*, i32** @rs1, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @dirty_reg(%struct.regstat* %183, i32 %188)
  %190 = load %struct.regstat*, %struct.regstat** %3, align 8
  %191 = load i32*, i32** @rs2, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @dirty_reg(%struct.regstat* %190, i32 %195)
  %197 = load %struct.regstat*, %struct.regstat** %3, align 8
  %198 = load i32, i32* @MACH, align 4
  %199 = call i32 @dirty_reg(%struct.regstat* %197, i32 %198)
  %200 = load %struct.regstat*, %struct.regstat** %3, align 8
  %201 = load i32, i32* @MACL, align 4
  %202 = call i32 @dirty_reg(%struct.regstat* %200, i32 %201)
  %203 = load %struct.regstat*, %struct.regstat** %3, align 8
  %204 = load i32, i32* @MACH, align 4
  %205 = call i32 @clear_const(%struct.regstat* %203, i32 %204)
  %206 = load %struct.regstat*, %struct.regstat** %3, align 8
  %207 = load i32, i32* @MACL, align 4
  %208 = call i32 @clear_const(%struct.regstat* %206, i32 %207)
  br label %209

209:                                              ; preds = %146, %139, %132
  %210 = load %struct.regstat*, %struct.regstat** %3, align 8
  %211 = load i32*, i32** @rs1, align 8
  %212 = load i32, i32* %4, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @clear_const(%struct.regstat* %210, i32 %215)
  %217 = load %struct.regstat*, %struct.regstat** %3, align 8
  %218 = load i32*, i32** @rs2, align 8
  %219 = load i32, i32* %4, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @clear_const(%struct.regstat* %217, i32 %222)
  %224 = load i32, i32* @HOST_REGS, align 4
  %225 = load i32*, i32** @minimum_free_regs, align 8
  %226 = load i32, i32* %4, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  store i32 %224, i32* %228, align 4
  ret void
}

declare dso_local i32 @alloc_x86_reg(%struct.regstat*, i32, i32, i32) #1

declare dso_local i32 @alloc_all(%struct.regstat*, i32) #1

declare dso_local i32 @dirty_reg(%struct.regstat*, i32) #1

declare dso_local i32 @clear_const(%struct.regstat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
