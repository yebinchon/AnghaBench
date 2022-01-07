; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_readword.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_readword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@out = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"mov (%%%s),%%%s\0A\00", align 1
@regname = common dso_local global i32* null, align 8
@EBP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"mov %x,%%%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_readword(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i64, i64* @out, align 8
  %7 = trunc i64 %6 to i32
  %8 = sub nsw i32 %5, %7
  %9 = add nsw i32 %8, 2147483642
  %10 = icmp ugt i32 %9, -2
  br i1 %10, label %11, label %40

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @emit_movimm64(i32 %12, i32 %13)
  %15 = load i32*, i32** @regname, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** @regname, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @assem_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %24)
  %26 = call i32 @output_byte(i32 139)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @EBP, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %11
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @output_modrm(i32 0, i32 %31, i32 %32)
  br label %39

34:                                               ; preds = %11
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @output_modrm(i32 1, i32 %35, i32 %36)
  %38 = call i32 @output_byte(i32 0)
  br label %39

39:                                               ; preds = %34, %30
  br label %57

40:                                               ; preds = %2
  %41 = load i32, i32* %3, align 4
  %42 = load i32*, i32** @regname, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @assem_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %46)
  %48 = call i32 @output_byte(i32 139)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @output_modrm(i32 0, i32 5, i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = load i64, i64* @out, align 8
  %53 = trunc i64 %52 to i32
  %54 = sub nsw i32 %51, %53
  %55 = sub nsw i32 %54, 4
  %56 = call i32 @output_w32(i32 %55)
  br label %57

57:                                               ; preds = %40, %39
  ret void
}

declare dso_local i32 @emit_movimm64(i32, i32) #1

declare dso_local i32 @assem_debug(i8*, i32, i32) #1

declare dso_local i32 @output_byte(i32) #1

declare dso_local i32 @output_modrm(i32, i32, i32) #1

declare dso_local i32 @output_w32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
