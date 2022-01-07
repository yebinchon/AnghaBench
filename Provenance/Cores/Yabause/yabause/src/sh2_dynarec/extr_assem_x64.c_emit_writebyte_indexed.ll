; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_writebyte_indexed.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_writebyte_indexed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"movb %%%cl,%x+%%%s\0A\00", align 1
@regname = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_writebyte_indexed(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32**, i32*** @regname, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32*, i32** %7, i64 %9
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32**, i32*** @regname, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @assem_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32* %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 4
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = icmp sge i32 %24, 8
  br i1 %25, label %26, label %32

26:                                               ; preds = %23, %3
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 3
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 3
  %31 = call i32 @output_rex(i32 0, i32 %28, i32 0, i32 %30)
  br label %32

32:                                               ; preds = %26, %23
  %33 = call i32 @output_byte(i32 136)
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 128
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = icmp sge i32 %37, -128
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @output_modrm(i32 1, i32 %40, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @output_byte(i32 %43)
  br label %51

45:                                               ; preds = %36, %32
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @output_modrm(i32 2, i32 %46, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @output_w32(i32 %49)
  br label %51

51:                                               ; preds = %45, %39
  ret void
}

declare dso_local i32 @assem_debug(i8*, i32, i32, i32*) #1

declare dso_local i32 @output_rex(i32, i32, i32, i32) #1

declare dso_local i32 @output_byte(i32) #1

declare dso_local i32 @output_modrm(i32, i32, i32) #1

declare dso_local i32 @output_w32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
