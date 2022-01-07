; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_mov_assemble.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_mov_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i32 }

@rt1 = common dso_local global i32* null, align 8
@rs1 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mov_assemble(i32 %0, %struct.regstat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regstat*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store %struct.regstat* %1, %struct.regstat** %4, align 8
  %7 = load %struct.regstat*, %struct.regstat** %4, align 8
  %8 = getelementptr inbounds %struct.regstat, %struct.regstat* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** @rt1, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call signext i8 @get_reg(i32 %9, i32 %14)
  store i8 %15, i8* %6, align 1
  %16 = load i8, i8* %6, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %2
  %20 = load %struct.regstat*, %struct.regstat** %4, align 8
  %21 = getelementptr inbounds %struct.regstat, %struct.regstat* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** @rs1, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call signext i8 @get_reg(i32 %22, i32 %27)
  store i8 %28, i8* %5, align 1
  %29 = load i8, i8* %5, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %19
  %33 = load i8, i8* %5, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8, i8* %6, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i8, i8* %5, align 1
  %40 = load i8, i8* %6, align 1
  %41 = call i32 @emit_mov(i8 signext %39, i8 signext %40)
  br label %42

42:                                               ; preds = %38, %32
  br label %51

43:                                               ; preds = %19
  %44 = load i32*, i32** @rs1, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i8, i8* %6, align 1
  %50 = call i32 @emit_loadreg(i32 %48, i8 signext %49)
  br label %51

51:                                               ; preds = %43, %42
  br label %52

52:                                               ; preds = %51, %2
  ret void
}

declare dso_local signext i8 @get_reg(i32, i32) #1

declare dso_local i32 @emit_mov(i8 signext, i8 signext) #1

declare dso_local i32 @emit_loadreg(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
