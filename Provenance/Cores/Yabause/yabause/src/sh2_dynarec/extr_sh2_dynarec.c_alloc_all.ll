; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_alloc_all.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_alloc_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i32*, i32 }

@HOST_REGS = common dso_local global i32 0, align 4
@EXCLUDE_REG = common dso_local global i32 0, align 4
@rs1 = common dso_local global i32* null, align 8
@rs2 = common dso_local global i32* null, align 8
@rs3 = common dso_local global i32* null, align 8
@rt1 = common dso_local global i32* null, align 8
@rt2 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alloc_all(%struct.regstat* %0, i32 %1) #0 {
  %3 = alloca %struct.regstat*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.regstat* %0, %struct.regstat** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %105, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @HOST_REGS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %108

10:                                               ; preds = %6
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @EXCLUDE_REG, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %104

14:                                               ; preds = %10
  %15 = load %struct.regstat*, %struct.regstat** %3, align 8
  %16 = getelementptr inbounds %struct.regstat, %struct.regstat* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 63
  %23 = load i32*, i32** @rs1, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %22, %27
  br i1 %28, label %29, label %103

29:                                               ; preds = %14
  %30 = load %struct.regstat*, %struct.regstat** %3, align 8
  %31 = getelementptr inbounds %struct.regstat, %struct.regstat* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 63
  %38 = load i32*, i32** @rs2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %37, %42
  br i1 %43, label %44, label %103

44:                                               ; preds = %29
  %45 = load %struct.regstat*, %struct.regstat** %3, align 8
  %46 = getelementptr inbounds %struct.regstat, %struct.regstat* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 63
  %53 = load i32*, i32** @rs3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %52, %57
  br i1 %58, label %59, label %103

59:                                               ; preds = %44
  %60 = load %struct.regstat*, %struct.regstat** %3, align 8
  %61 = getelementptr inbounds %struct.regstat, %struct.regstat* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 63
  %68 = load i32*, i32** @rt1, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %67, %72
  br i1 %73, label %74, label %103

74:                                               ; preds = %59
  %75 = load %struct.regstat*, %struct.regstat** %3, align 8
  %76 = getelementptr inbounds %struct.regstat, %struct.regstat* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 63
  %83 = load i32*, i32** @rt2, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %82, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %74
  %90 = load %struct.regstat*, %struct.regstat** %3, align 8
  %91 = getelementptr inbounds %struct.regstat, %struct.regstat* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 -1, i32* %95, align 4
  %96 = load i32, i32* %5, align 4
  %97 = shl i32 1, %96
  %98 = xor i32 %97, -1
  %99 = load %struct.regstat*, %struct.regstat** %3, align 8
  %100 = getelementptr inbounds %struct.regstat, %struct.regstat* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %89, %74, %59, %44, %29, %14
  br label %104

104:                                              ; preds = %103, %10
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %6

108:                                              ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
