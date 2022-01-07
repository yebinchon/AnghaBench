; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_rmw_xorimm.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_rmw_xorimm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"xorb $0x%x,(%%%s)\0A\00", align 1
@regname = common dso_local global i32* null, align 8
@ESP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"xorb $0x%x,(%%%s,%%%s,1)\0A\00", align 1
@EBP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_rmw_xorimm(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = load i32*, i32** @regname, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, i32, i32, ...) @assem_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @ESP, align 4
  %19 = icmp ne i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = call i32 @output_byte(i32 128)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @output_modrm(i32 0, i32 %23, i32 6)
  br label %62

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** @regname, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** @regname, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i32, i32, ...) @assem_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %31, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @ESP, align 4
  %40 = icmp ne i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = call i32 @output_byte(i32 128)
  %44 = call i32 @output_modrm(i32 0, i32 4, i32 6)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @EBP, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %25
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @output_sib(i32 0, i32 %49, i32 %50)
  br label %61

52:                                               ; preds = %25
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @output_sib(i32 0, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %52, %48
  br label %62

62:                                               ; preds = %61, %9
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @output_byte(i32 %63)
  ret void
}

declare dso_local i32 @assem_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @output_byte(i32) #1

declare dso_local i32 @output_modrm(i32, i32, i32) #1

declare dso_local i32 @output_sib(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
