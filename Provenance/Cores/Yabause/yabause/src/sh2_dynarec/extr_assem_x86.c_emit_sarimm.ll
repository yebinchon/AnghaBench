; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_sarimm.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_sarimm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"sar %%%s,%d\0A\00", align 1
@regname = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_sarimm(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %3
  %11 = load i32*, i32** @regname, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @assem_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ugt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %10
  %25 = call i32 @output_byte(i32 209)
  br label %28

26:                                               ; preds = %10
  %27 = call i32 @output_byte(i32 193)
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @output_modrm(i32 3, i32 %29, i32 7)
  %31 = load i32, i32* %5, align 4
  %32 = icmp ugt i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @output_byte(i32 %34)
  br label %36

36:                                               ; preds = %33, %28
  br label %44

37:                                               ; preds = %3
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @emit_mov(i32 %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  call void @emit_sarimm(i32 %41, i32 %42, i32 %43)
  br label %44

44:                                               ; preds = %37, %36
  ret void
}

declare dso_local i32 @assem_debug(i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @output_byte(i32) #1

declare dso_local i32 @output_modrm(i32, i32, i32) #1

declare dso_local i32 @emit_mov(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
