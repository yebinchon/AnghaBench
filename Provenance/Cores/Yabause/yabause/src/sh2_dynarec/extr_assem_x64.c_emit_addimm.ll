; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_addimm.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_addimm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"add $%d,%%%s\0A\00", align 1
@regname = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"lea %d(%%%s),%%%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_addimm(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %40

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %39

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
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, -128
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = call i32 @output_byte(i32 131)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @output_modrm(i32 3, i32 %28, i32 0)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @output_byte(i32 %30)
  br label %38

32:                                               ; preds = %23, %13
  %33 = call i32 @output_byte(i32 129)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @output_modrm(i32 3, i32 %34, i32 0)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @output_w32(i32 %36)
  br label %38

38:                                               ; preds = %32, %26
  br label %39

39:                                               ; preds = %38, %10
  br label %80

40:                                               ; preds = %3
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %75

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = load i32*, i32** @regname, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** @regname, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i32, i32, ...) @assem_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %49, i32 %54)
  %56 = call i32 @output_byte(i32 141)
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 128
  br i1 %58, label %59, label %68

59:                                               ; preds = %43
  %60 = load i32, i32* %5, align 4
  %61 = icmp sge i32 %60, -128
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @output_modrm(i32 1, i32 %63, i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @output_byte(i32 %66)
  br label %74

68:                                               ; preds = %59, %43
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @output_modrm(i32 2, i32 %69, i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @output_w32(i32 %72)
  br label %74

74:                                               ; preds = %68, %62
  br label %79

75:                                               ; preds = %40
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @emit_mov(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %74
  br label %80

80:                                               ; preds = %79, %39
  ret void
}

declare dso_local i32 @assem_debug(i8*, i32, i32, ...) #1

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
