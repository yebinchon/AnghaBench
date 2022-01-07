; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_addimm64.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_addimm64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"add $%d,%%%s\0A\00", align 1
@regname = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"lea %d(%%%s),%%%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_addimm64(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %48

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = load i32*, i32** @regname, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, i32, i32, ...) @assem_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 128
  br i1 %22, label %23, label %36

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, -128
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, 3
  %29 = call i32 @output_rex(i32 1, i32 0, i32 0, i32 %28)
  %30 = call i32 @output_byte(i32 131)
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 7
  %33 = call i32 @output_modrm(i32 3, i32 %32, i32 0)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @output_byte(i32 %34)
  br label %46

36:                                               ; preds = %23, %13
  %37 = load i32, i32* %6, align 4
  %38 = ashr i32 %37, 3
  %39 = call i32 @output_rex(i32 1, i32 0, i32 0, i32 %38)
  %40 = call i32 @output_byte(i32 129)
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 7
  %43 = call i32 @output_modrm(i32 3, i32 %42, i32 0)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @output_w32(i32 %44)
  br label %46

46:                                               ; preds = %36, %26
  br label %47

47:                                               ; preds = %46, %10
  br label %97

48:                                               ; preds = %3
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %92

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = load i32*, i32** @regname, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** @regname, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, i32, i32, ...) @assem_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %57, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = ashr i32 %64, 3
  %66 = load i32, i32* %4, align 4
  %67 = ashr i32 %66, 3
  %68 = call i32 @output_rex(i32 1, i32 %65, i32 0, i32 %67)
  %69 = call i32 @output_byte(i32 141)
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, 128
  br i1 %71, label %72, label %83

72:                                               ; preds = %51
  %73 = load i32, i32* %5, align 4
  %74 = icmp sge i32 %73, -128
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, 7
  %78 = load i32, i32* %6, align 4
  %79 = and i32 %78, 7
  %80 = call i32 @output_modrm(i32 1, i32 %77, i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @output_byte(i32 %81)
  br label %91

83:                                               ; preds = %72, %51
  %84 = load i32, i32* %4, align 4
  %85 = and i32 %84, 7
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, 7
  %88 = call i32 @output_modrm(i32 2, i32 %85, i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @output_w32(i32 %89)
  br label %91

91:                                               ; preds = %83, %75
  br label %96

92:                                               ; preds = %48
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @emit_mov(i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %91
  br label %97

97:                                               ; preds = %96, %47
  ret void
}

declare dso_local i32 @assem_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @output_rex(i32, i32, i32, i32) #1

declare dso_local i32 @output_byte(i32) #1

declare dso_local i32 @output_modrm(i32, i32, i32) #1

declare dso_local i32 @output_w32(i32) #1

declare dso_local i32 @emit_mov(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
