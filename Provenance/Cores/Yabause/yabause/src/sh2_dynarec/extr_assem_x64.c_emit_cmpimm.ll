; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_cmpimm.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_cmpimm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"cmp $%d,%%%s\0A\00", align 1
@regname = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_cmpimm(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32*, i32** @regname, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @assem_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = icmp sge i32 %12, 8
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = ashr i32 %15, 3
  %17 = call i32 @output_rex(i32 0, i32 0, i32 0, i32 %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 128
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp sge i32 %22, -128
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = call i32 @output_byte(i32 131)
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 7
  %28 = call i32 @output_modrm(i32 3, i32 %27, i32 7)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @output_byte(i32 %29)
  br label %38

31:                                               ; preds = %21, %18
  %32 = call i32 @output_byte(i32 129)
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, 7
  %35 = call i32 @output_modrm(i32 3, i32 %34, i32 7)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @output_w32(i32 %36)
  br label %38

38:                                               ; preds = %31, %24
  ret void
}

declare dso_local i32 @assem_debug(i8*, i32, i32) #1

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
