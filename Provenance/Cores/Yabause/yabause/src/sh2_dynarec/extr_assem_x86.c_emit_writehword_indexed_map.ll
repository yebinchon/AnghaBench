; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_writehword_indexed_map.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_writehword_indexed_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"movw %%%s,%x(%%%s,%%%s,1)\0A\00", align 1
@regname = common dso_local global i64* null, align 8
@ESP = common dso_local global i32 0, align 4
@EBP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_writehword_indexed_map(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %17 = call i32 @emit_writeword_indexed(i32 %14, i32 %15, i32 %16)
  br label %80

18:                                               ; preds = %5
  %19 = load i64*, i64** @regname, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  %25 = load i32, i32* %7, align 4
  %26 = load i64*, i64** @regname, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** @regname, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @assem_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %25, i64 %30, i64 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @ESP, align 4
  %39 = icmp ne i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = call i32 @output_byte(i32 102)
  %43 = call i32 @output_byte(i32 137)
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %18
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @EBP, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @output_modrm(i32 0, i32 4, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @output_sib(i32 0, i32 %53, i32 %54)
  br label %79

56:                                               ; preds = %46, %18
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 128
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = icmp sge i32 %60, -128
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @output_modrm(i32 1, i32 4, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @output_sib(i32 0, i32 %65, i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @output_byte(i32 %68)
  br label %78

70:                                               ; preds = %59, %56
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @output_modrm(i32 2, i32 4, i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @output_sib(i32 0, i32 %73, i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @output_w32(i32 %76)
  br label %78

78:                                               ; preds = %70, %62
  br label %79

79:                                               ; preds = %78, %50
  br label %80

80:                                               ; preds = %79, %13
  ret void
}

declare dso_local i32 @emit_writeword_indexed(i32, i32, i32) #1

declare dso_local i32 @assem_debug(i8*, i64, i32, i64, i64) #1

declare dso_local i32 @assert(i32) #1

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
