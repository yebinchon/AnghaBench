; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_movq.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_movq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@out = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"mov (%%%s),%%%s\0A\00", align 1
@regname = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"movq %llx,%%%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_movq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i64, i64* @out, align 8
  %7 = trunc i64 %6 to i32
  %8 = sub nsw i32 %5, %7
  %9 = add nsw i32 %8, 2147483642
  %10 = icmp ugt i32 %9, -1
  br i1 %10, label %11, label %40

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i64, i64* @out, align 8
  %14 = trunc i64 %13 to i32
  %15 = sub nsw i32 %12, %14
  %16 = add nsw i32 %15, 2147483642
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %17, 4294967296
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @emit_movimm64(i32 %21, i32 %22)
  %24 = load i32*, i32** @regname, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** @regname, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @assem_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %33)
  %35 = call i32 @output_byte(i32 139)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @output_modrm(i32 0, i32 %36, i32 %37)
  %39 = call i32 @output_byte(i32 204)
  br label %60

40:                                               ; preds = %2
  %41 = load i32, i32* %3, align 4
  %42 = load i32*, i32** @regname, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @assem_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = ashr i32 %48, 8
  %50 = call i32 @output_rex(i32 1, i32 0, i32 0, i32 %49)
  %51 = call i32 @output_byte(i32 139)
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @output_modrm(i32 0, i32 5, i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = load i64, i64* @out, align 8
  %56 = trunc i64 %55 to i32
  %57 = sub nsw i32 %54, %56
  %58 = sub nsw i32 %57, 4
  %59 = call i32 @output_w32(i32 %58)
  br label %60

60:                                               ; preds = %40, %11
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_movimm64(i32, i32) #1

declare dso_local i32 @assem_debug(i8*, i32, i32) #1

declare dso_local i32 @output_byte(i32) #1

declare dso_local i32 @output_modrm(i32, i32, i32) #1

declare dso_local i32 @output_rex(i32, i32, i32, i32) #1

declare dso_local i32 @output_w32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
