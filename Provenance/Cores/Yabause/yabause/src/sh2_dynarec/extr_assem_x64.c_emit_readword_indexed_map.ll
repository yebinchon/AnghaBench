; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_readword_indexed_map.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_readword_indexed_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"mov %x(%%%s,%%%s,4),%%%s\0A\00", align 1
@regname = common dso_local global i32* null, align 8
@ESP = common dso_local global i32 0, align 4
@EBP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_readword_indexed_map(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp sge i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @emit_readword_indexed(i32 %16, i32 %17, i32 %18)
  br label %80

20:                                               ; preds = %4
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** @regname, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** @regname, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** @regname, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @assem_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %26, i32 %31, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @ESP, align 4
  %40 = icmp ne i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = call i32 @output_byte(i32 139)
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %20
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @EBP, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @output_modrm(i32 0, i32 4, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @output_sib(i32 2, i32 %53, i32 %54)
  br label %79

56:                                               ; preds = %46, %20
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 128
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = icmp sge i32 %60, -128
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @output_modrm(i32 1, i32 4, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @output_sib(i32 2, i32 %65, i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @output_byte(i32 %68)
  br label %78

70:                                               ; preds = %59, %56
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @output_modrm(i32 2, i32 4, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @output_sib(i32 2, i32 %73, i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @output_w32(i32 %76)
  br label %78

78:                                               ; preds = %70, %62
  br label %79

79:                                               ; preds = %78, %50
  br label %80

80:                                               ; preds = %79, %15
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_readword_indexed(i32, i32, i32) #1

declare dso_local i32 @assem_debug(i8*, i32, i32, i32, i32) #1

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
