; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_loadreg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_emit_loadreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slave = common dso_local global i64 0, align 8
@slave_reg = common dso_local global i64 0, align 8
@master_reg = common dso_local global i64 0, align 8
@CCREG = common dso_local global i32 0, align 4
@slave_cc = common dso_local global i32 0, align 4
@master_cc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"mov %x+%d,%%%s\0A\00", align 1
@regname = common dso_local global i32* null, align 8
@out = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_loadreg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @slave, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i64, i64* @slave_reg, align 8
  %10 = trunc i64 %9 to i32
  br label %14

11:                                               ; preds = %2
  %12 = load i64, i64* @master_reg, align 8
  %13 = trunc i64 %12 to i32
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %10, %8 ], [ %13, %11 ]
  %16 = load i32, i32* %3, align 4
  %17 = shl i32 %16, 2
  %18 = add nsw i32 %15, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @CCREG, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load i64, i64* @slave, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %27

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %25
  %28 = phi i32 [ ptrtoint (i32* @slave_cc to i32), %25 ], [ ptrtoint (i32* @master_cc to i32), %26 ]
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %14
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32*, i32** @regname, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @assem_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %36)
  %38 = call i32 @output_byte(i32 139)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @output_modrm(i32 0, i32 5, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i64, i64* @out, align 8
  %43 = trunc i64 %42 to i32
  %44 = sub nsw i32 %41, %43
  %45 = sub nsw i32 %44, 4
  %46 = call i32 @output_w32(i32 %45)
  ret void
}

declare dso_local i32 @assem_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @output_byte(i32) #1

declare dso_local i32 @output_modrm(i32, i32, i32) #1

declare dso_local i32 @output_w32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
