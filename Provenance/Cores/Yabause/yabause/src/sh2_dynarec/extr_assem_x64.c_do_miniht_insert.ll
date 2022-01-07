; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_do_miniht_insert.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_do_miniht_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slave = common dso_local global i64 0, align 8
@mini_ht_slave = common dso_local global i32** null, align 8
@mini_ht_master = common dso_local global i32** null, align 8
@out = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_miniht_insert(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @emit_movimm(i32 %7, i32 %8)
  %10 = load i64, i64* @slave, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32**, i32*** @mini_ht_slave, align 8
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 255
  %17 = ashr i32 %16, 3
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %14, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = ptrtoint i32* %21 to i32
  %23 = call i32 @emit_writeword(i32 %13, i32 %22)
  br label %36

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32**, i32*** @mini_ht_master, align 8
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 255
  %29 = ashr i32 %28, 3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %26, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = ptrtoint i32* %33 to i32
  %35 = call i32 @emit_writeword(i32 %25, i32 %34)
  br label %36

36:                                               ; preds = %24, %12
  %37 = load i64, i64* @out, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @add_to_linker(i32 %38, i32 %39, i32 1)
  %41 = load i64, i64* @slave, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load i32**, i32*** @mini_ht_slave, align 8
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, 255
  %47 = ashr i32 %46, 3
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %44, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = ptrtoint i32* %51 to i32
  %53 = call i32 @emit_writeword_imm(i32 0, i32 %52)
  br label %65

54:                                               ; preds = %36
  %55 = load i32**, i32*** @mini_ht_master, align 8
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, 255
  %58 = ashr i32 %57, 3
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %55, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = ptrtoint i32* %62 to i32
  %64 = call i32 @emit_writeword_imm(i32 0, i32 %63)
  br label %65

65:                                               ; preds = %54, %43
  ret void
}

declare dso_local i32 @emit_movimm(i32, i32) #1

declare dso_local i32 @emit_writeword(i32, i32) #1

declare dso_local i32 @add_to_linker(i32, i32, i32) #1

declare dso_local i32 @emit_writeword_imm(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
