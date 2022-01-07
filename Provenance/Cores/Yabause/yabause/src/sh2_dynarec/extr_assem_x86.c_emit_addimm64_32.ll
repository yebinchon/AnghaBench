; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_addimm64_32.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_addimm64_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"add $%d,%%%s\0A\00", align 1
@regname = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"adc $%d,%%%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_addimm64_32(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %58

14:                                               ; preds = %5
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** @regname, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @assem_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 128
  br i1 %27, label %28, label %37

28:                                               ; preds = %18
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %29, -128
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = call i32 @output_byte(i32 131)
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @output_modrm(i32 3, i32 %33, i32 0)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @output_byte(i32 %35)
  br label %43

37:                                               ; preds = %28, %18
  %38 = call i32 @output_byte(i32 129)
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @output_modrm(i32 3, i32 %39, i32 0)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @output_w32(i32 %41)
  br label %43

43:                                               ; preds = %37, %31
  %44 = load i32, i32* %8, align 4
  %45 = ashr i32 %44, 31
  %46 = load i32*, i32** @regname, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @assem_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %50)
  %52 = call i32 @output_byte(i32 131)
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @output_modrm(i32 3, i32 %53, i32 2)
  %55 = load i32, i32* %8, align 4
  %56 = ashr i32 %55, 31
  %57 = call i32 @output_byte(i32 %56)
  br label %70

58:                                               ; preds = %14, %5
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @emit_mov(i32 %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @emit_mov(i32 %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  call void @emit_addimm64_32(i32 %65, i32 %66, i32 %67, i32 %68, i32 %69)
  br label %70

70:                                               ; preds = %58, %43
  ret void
}

declare dso_local i32 @assem_debug(i8*, i32, i32) #1

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
