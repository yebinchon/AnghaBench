; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_pcrel_alloc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_pcrel_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i32 }

@rt1 = common dso_local global i32* null, align 8
@start = common dso_local global i32 0, align 4
@imm = common dso_local global i32* null, align 8
@opcode = common dso_local global i32* null, align 8
@slen = common dso_local global i32 0, align 4
@source = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcrel_alloc(%struct.regstat* %0, i32 %1) #0 {
  %3 = alloca %struct.regstat*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.regstat* %0, %struct.regstat** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.regstat*, %struct.regstat** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32*, i32** @rt1, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @alloc_reg(%struct.regstat* %6, i32 %7, i32 %12)
  %14 = load i32, i32* @start, align 4
  %15 = load i32, i32* %4, align 4
  %16 = mul nsw i32 %15, 2
  %17 = add nsw i32 %14, %16
  %18 = add nsw i32 %17, 4
  %19 = and i32 %18, -4
  %20 = load i32*, i32** @imm, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %19, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32*, i32** @opcode, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 12
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = load %struct.regstat*, %struct.regstat** %3, align 8
  %34 = load i32*, i32** @rt1, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @set_const(%struct.regstat* %33, i32 %38, i32 %39)
  br label %119

41:                                               ; preds = %2
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @start, align 4
  %44 = sub nsw i32 %42, %43
  %45 = ashr i32 %44, 1
  %46 = load i32, i32* @slen, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %110

48:                                               ; preds = %41
  %49 = load i32*, i32** @opcode, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 9
  br i1 %54, label %55, label %82

55:                                               ; preds = %48
  %56 = load i32, i32* @start, align 4
  %57 = load i32, i32* %4, align 4
  %58 = mul nsw i32 %57, 2
  %59 = add nsw i32 %56, %58
  %60 = add nsw i32 %59, 4
  %61 = load i32*, i32** @imm, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %60, %65
  store i32 %66, i32* %5, align 4
  %67 = load %struct.regstat*, %struct.regstat** %3, align 8
  %68 = load i32*, i32** @rt1, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** @source, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @start, align 4
  %76 = sub nsw i32 %74, %75
  %77 = ashr i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %73, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @set_const(%struct.regstat* %67, i32 %72, i32 %80)
  br label %109

82:                                               ; preds = %48
  %83 = load %struct.regstat*, %struct.regstat** %3, align 8
  %84 = load i32*, i32** @rt1, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** @source, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @start, align 4
  %92 = sub nsw i32 %90, %91
  %93 = ashr i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %89, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 16
  %98 = load i32*, i32** @source, align 8
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 2
  %101 = load i32, i32* @start, align 4
  %102 = sub nsw i32 %100, %101
  %103 = ashr i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %98, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %97, %106
  %108 = call i32 @set_const(%struct.regstat* %83, i32 %88, i32 %107)
  br label %109

109:                                              ; preds = %82, %55
  br label %118

110:                                              ; preds = %41
  %111 = load %struct.regstat*, %struct.regstat** %3, align 8
  %112 = load i32*, i32** @rt1, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @clear_const(%struct.regstat* %111, i32 %116)
  br label %118

118:                                              ; preds = %110, %109
  br label %119

119:                                              ; preds = %118, %32
  %120 = load %struct.regstat*, %struct.regstat** %3, align 8
  %121 = load i32*, i32** @rt1, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @dirty_reg(%struct.regstat* %120, i32 %125)
  ret void
}

declare dso_local i32 @alloc_reg(%struct.regstat*, i32, i32) #1

declare dso_local i32 @set_const(%struct.regstat*, i32, i32) #1

declare dso_local i32 @clear_const(%struct.regstat*, i32) #1

declare dso_local i32 @dirty_reg(%struct.regstat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
