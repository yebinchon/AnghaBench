; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_store_alloc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_store_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i32* }

@addrmode = common dso_local global i64* null, align 8
@DUALIND = common dso_local global i64 0, align 8
@rs2 = common dso_local global i32* null, align 8
@rs3 = common dso_local global i32* null, align 8
@PREDEC = common dso_local global i64 0, align 8
@rt1 = common dso_local global i32* null, align 8
@opcode = common dso_local global i32* null, align 8
@opcode2 = common dso_local global i32* null, align 8
@rs1 = common dso_local global i32* null, align 8
@MOREG = common dso_local global i32 0, align 4
@minimum_free_regs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store_alloc(%struct.regstat* %0, i32 %1) #0 {
  %3 = alloca %struct.regstat*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regstat* %0, %struct.regstat** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64*, i64** @addrmode, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i64, i64* %7, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DUALIND, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %2
  %15 = load %struct.regstat*, %struct.regstat** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32*, i32** @rs2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @alloc_reg(%struct.regstat* %15, i32 %16, i32 %21)
  %23 = load %struct.regstat*, %struct.regstat** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @alloc_reg(%struct.regstat* %23, i32 %24, i32 0)
  %26 = load %struct.regstat*, %struct.regstat** %3, align 8
  %27 = load i32*, i32** @rs2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @is_const(%struct.regstat* %26, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %14
  %35 = load %struct.regstat*, %struct.regstat** %3, align 8
  %36 = load i32*, i32** @rs3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @is_const(%struct.regstat* %35, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %34, %14
  %44 = load %struct.regstat*, %struct.regstat** %3, align 8
  %45 = load i32*, i32** @rs2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @clear_const(%struct.regstat* %44, i32 %49)
  %51 = load %struct.regstat*, %struct.regstat** %3, align 8
  %52 = load i32*, i32** @rs3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @clear_const(%struct.regstat* %51, i32 %56)
  br label %58

58:                                               ; preds = %43, %34
  br label %59

59:                                               ; preds = %58, %2
  %60 = load i64*, i64** @addrmode, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PREDEC, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %127

67:                                               ; preds = %59
  %68 = load %struct.regstat*, %struct.regstat** %3, align 8
  %69 = load i32*, i32** @rt1, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @is_const(%struct.regstat* %68, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %110

76:                                               ; preds = %67
  %77 = load %struct.regstat*, %struct.regstat** %3, align 8
  %78 = load i32*, i32** @rt1, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @get_const(%struct.regstat* %77, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load %struct.regstat*, %struct.regstat** %3, align 8
  %85 = load i32*, i32** @rt1, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32*, i32** @opcode, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 4
  br i1 %96, label %97, label %98

97:                                               ; preds = %76
  br label %105

98:                                               ; preds = %76
  %99 = load i32*, i32** @opcode2, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 3
  br label %105

105:                                              ; preds = %98, %97
  %106 = phi i32 [ 2, %97 ], [ %104, %98 ]
  %107 = shl i32 1, %106
  %108 = sub nsw i32 %90, %107
  %109 = call i32 @set_const(%struct.regstat* %84, i32 %89, i32 %108)
  br label %126

110:                                              ; preds = %67
  %111 = load %struct.regstat*, %struct.regstat** %3, align 8
  %112 = load i32, i32* %4, align 4
  %113 = load i32*, i32** @rt1, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @alloc_reg(%struct.regstat* %111, i32 %112, i32 %117)
  %119 = load %struct.regstat*, %struct.regstat** %3, align 8
  %120 = load i32*, i32** @rt1, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dirty_reg(%struct.regstat* %119, i32 %124)
  br label %126

126:                                              ; preds = %110, %105
  br label %127

127:                                              ; preds = %126, %59
  %128 = load i32*, i32** @rs2, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %4, align 4
  %134 = call i64 @needed_again(i32 %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %127
  %137 = load %struct.regstat*, %struct.regstat** %3, align 8
  %138 = load i32, i32* %4, align 4
  %139 = load i32*, i32** @rs2, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @alloc_reg(%struct.regstat* %137, i32 %138, i32 %143)
  br label %145

145:                                              ; preds = %136, %127
  %146 = load %struct.regstat*, %struct.regstat** %3, align 8
  %147 = load i32*, i32** @rs1, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @clear_const(%struct.regstat* %146, i32 %151)
  %153 = load %struct.regstat*, %struct.regstat** %3, align 8
  %154 = load i32, i32* %4, align 4
  %155 = load i32*, i32** @rs1, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @alloc_reg(%struct.regstat* %153, i32 %154, i32 %159)
  %161 = load %struct.regstat*, %struct.regstat** %3, align 8
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @MOREG, align 4
  %164 = call i32 @alloc_reg(%struct.regstat* %161, i32 %162, i32 %163)
  %165 = load %struct.regstat*, %struct.regstat** %3, align 8
  %166 = load i32, i32* %4, align 4
  %167 = call i32 @alloc_reg_temp(%struct.regstat* %165, i32 %166, i32 -1)
  %168 = load i32*, i32** @minimum_free_regs, align 8
  %169 = load i32, i32* %4, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 1, i32* %171, align 4
  %172 = load %struct.regstat*, %struct.regstat** %3, align 8
  %173 = getelementptr inbounds %struct.regstat, %struct.regstat* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* @MOREG, align 4
  %176 = call i32 @get_reg(i32* %174, i32 %175)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp sge i32 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = load %struct.regstat*, %struct.regstat** %3, align 8
  %182 = getelementptr inbounds %struct.regstat, %struct.regstat* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @MOREG, align 4
  %189 = icmp eq i32 %187, %188
  %190 = zext i1 %189 to i32
  %191 = call i32 @assert(i32 %190)
  %192 = load %struct.regstat*, %struct.regstat** %3, align 8
  %193 = getelementptr inbounds %struct.regstat, %struct.regstat* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %5, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  store i32 -1, i32* %197, align 4
  %198 = load i32*, i32** @minimum_free_regs, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %201, align 4
  ret void
}

declare dso_local i32 @alloc_reg(%struct.regstat*, i32, i32) #1

declare dso_local i64 @is_const(%struct.regstat*, i32) #1

declare dso_local i32 @clear_const(%struct.regstat*, i32) #1

declare dso_local i32 @get_const(%struct.regstat*, i32) #1

declare dso_local i32 @set_const(%struct.regstat*, i32, i32) #1

declare dso_local i32 @dirty_reg(%struct.regstat*, i32) #1

declare dso_local i64 @needed_again(i32, i32) #1

declare dso_local i32 @alloc_reg_temp(%struct.regstat*, i32, i32) #1

declare dso_local i32 @get_reg(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
