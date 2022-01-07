; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_do_miniht_insert.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_do_miniht_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@out = common dso_local global i64 0, align 8
@slave = common dso_local global i64 0, align 8
@mini_ht_slave = common dso_local global i32** null, align 8
@mini_ht_master = common dso_local global i32** null, align 8

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
  %10 = load i64, i64* @out, align 8
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @add_to_linker(i32 %11, i32 %12, i32 1)
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @emit_pcreladdr(i32 %14)
  %16 = load i64, i64* @slave, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32**, i32*** @mini_ht_slave, align 8
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 255
  %23 = ashr i32 %22, 3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %20, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = ptrtoint i32* %27 to i32
  %29 = call i32 @emit_writeword(i32 %19, i32 %28)
  br label %42

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  %32 = load i32**, i32*** @mini_ht_master, align 8
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 255
  %35 = ashr i32 %34, 3
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %32, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = ptrtoint i32* %39 to i32
  %41 = call i32 @emit_writeword(i32 %31, i32 %40)
  br label %42

42:                                               ; preds = %30, %18
  %43 = load i64, i64* @slave, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = load i32**, i32*** @mini_ht_slave, align 8
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 255
  %50 = ashr i32 %49, 3
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %47, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = ptrtoint i32* %54 to i32
  %56 = call i32 @emit_writeword(i32 %46, i32 %55)
  br label %69

57:                                               ; preds = %42
  %58 = load i32, i32* %6, align 4
  %59 = load i32**, i32*** @mini_ht_master, align 8
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, 255
  %62 = ashr i32 %61, 3
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %59, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = ptrtoint i32* %66 to i32
  %68 = call i32 @emit_writeword(i32 %58, i32 %67)
  br label %69

69:                                               ; preds = %57, %45
  ret void
}

declare dso_local i32 @emit_movimm(i32, i32) #1

declare dso_local i32 @add_to_linker(i32, i32, i32) #1

declare dso_local i32 @emit_pcreladdr(i32) #1

declare dso_local i32 @emit_writeword(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
