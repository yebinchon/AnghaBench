; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_writebyte_indexed_map.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_writebyte_indexed_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"movb %%%cl,%x(%%%s,%%%s,1)\0A\00", align 1
@regname = common dso_local global i32** null, align 8
@ESP = common dso_local global i32 0, align 4
@EBP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_writebyte_indexed_map(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %5
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @emit_writebyte_indexed(i32 %14, i32 %15, i32 %16)
  br label %97

18:                                               ; preds = %5
  %19 = load i32**, i32*** @regname, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32**, i32*** @regname, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i32**, i32*** @regname, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @assem_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32* %31, i32* %36)
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @ESP, align 4
  %40 = icmp ne i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp sge i32 %43, 4
  br i1 %44, label %51, label %45

45:                                               ; preds = %18
  %46 = load i32, i32* %8, align 4
  %47 = icmp sge i32 %46, 8
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = icmp sge i32 %49, 8
  br i1 %50, label %51, label %59

51:                                               ; preds = %48, %45, %18
  %52 = load i32, i32* %6, align 4
  %53 = ashr i32 %52, 3
  %54 = load i32, i32* %9, align 4
  %55 = ashr i32 %54, 3
  %56 = load i32, i32* %8, align 4
  %57 = ashr i32 %56, 3
  %58 = call i32 @output_rex(i32 0, i32 %53, i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %51, %48
  %60 = call i32 @output_byte(i32 136)
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @EBP, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @output_modrm(i32 0, i32 4, i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @output_sib(i32 0, i32 %70, i32 %71)
  br label %96

73:                                               ; preds = %63, %59
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 128
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = icmp sge i32 %77, -128
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @output_modrm(i32 1, i32 4, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @output_sib(i32 0, i32 %82, i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @output_byte(i32 %85)
  br label %95

87:                                               ; preds = %76, %73
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @output_modrm(i32 2, i32 4, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @output_sib(i32 0, i32 %90, i32 %91)
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @output_w32(i32 %93)
  br label %95

95:                                               ; preds = %87, %79
  br label %96

96:                                               ; preds = %95, %67
  br label %97

97:                                               ; preds = %96, %13
  ret void
}

declare dso_local i32 @emit_writebyte_indexed(i32, i32, i32) #1

declare dso_local i32 @assem_debug(i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @output_rex(i32, i32, i32, i32) #1

declare dso_local i32 @output_byte(i32) #1

declare dso_local i32 @output_modrm(i32, i32, i32) #1

declare dso_local i32 @output_sib(i32, i32, i32) #1

declare dso_local i32 @output_w32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
