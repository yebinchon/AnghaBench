; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_writebyte_indexed.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_writebyte_indexed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"movb %%%cl,%x+%%%s\0A\00", align 1
@regname = common dso_local global i32** null, align 8
@EAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_writebyte_indexed(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %43

9:                                                ; preds = %3
  %10 = load i32**, i32*** @regname, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32*, i32** %10, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32**, i32*** @regname, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @assem_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32* %22)
  %24 = call i32 @output_byte(i32 136)
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 128
  br i1 %26, label %27, label %36

27:                                               ; preds = %9
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %28, -128
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @output_modrm(i32 1, i32 %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @output_byte(i32 %34)
  br label %42

36:                                               ; preds = %27, %9
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @output_modrm(i32 2, i32 %37, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @output_w32(i32 %40)
  br label %42

42:                                               ; preds = %36, %30
  br label %61

43:                                               ; preds = %3
  %44 = load i32, i32* @EAX, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @emit_xchg(i32 %44, i32 %45)
  %47 = load i32, i32* @EAX, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @EAX, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %4, align 4
  br label %56

54:                                               ; preds = %43
  %55 = load i32, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  call void @emit_writebyte_indexed(i32 %47, i32 %48, i32 %57)
  %58 = load i32, i32* @EAX, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @emit_xchg(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %42
  ret void
}

declare dso_local i32 @assem_debug(i8*, i32, i32, i32*) #1

declare dso_local i32 @output_byte(i32) #1

declare dso_local i32 @output_modrm(i32, i32, i32) #1

declare dso_local i32 @output_w32(i32) #1

declare dso_local i32 @emit_xchg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
