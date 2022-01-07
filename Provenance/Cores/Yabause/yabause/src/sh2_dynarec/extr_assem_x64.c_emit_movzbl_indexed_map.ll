; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_movzbl_indexed_map.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_movzbl_indexed_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"addr32 movzbl %x(%%%s,%%%s,4),%%%s\0A\00", align 1
@regname = common dso_local global i32* null, align 8
@ESP = common dso_local global i32 0, align 4
@EBP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_movzbl_indexed_map(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @emit_movzbl_indexed(i32 %12, i32 %13, i32 %14)
  br label %78

16:                                               ; preds = %4
  %17 = load i32, i32* %5, align 4
  %18 = load i32*, i32** @regname, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** @regname, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @regname, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @assem_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %22, i32 %27, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ESP, align 4
  %36 = icmp ne i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = call i32 @output_byte(i32 103)
  %40 = call i32 @output_byte(i32 15)
  %41 = call i32 @output_byte(i32 182)
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %16
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @EBP, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @output_modrm(i32 0, i32 4, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @output_sib(i32 2, i32 %51, i32 %52)
  br label %77

54:                                               ; preds = %44, %16
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 128
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = icmp sge i32 %58, -128
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @output_modrm(i32 1, i32 4, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @output_sib(i32 2, i32 %63, i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @output_byte(i32 %66)
  br label %76

68:                                               ; preds = %57, %54
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @output_modrm(i32 2, i32 4, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @output_sib(i32 2, i32 %71, i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @output_w32(i32 %74)
  br label %76

76:                                               ; preds = %68, %60
  br label %77

77:                                               ; preds = %76, %48
  br label %78

78:                                               ; preds = %77, %11
  ret void
}

declare dso_local i32 @emit_movzbl_indexed(i32, i32, i32) #1

declare dso_local i32 @assem_debug(i8*, i32, i32, i32, i32) #1

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
