; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_flags_alloc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_flags_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i32 }

@opcode2 = common dso_local global i32* null, align 8
@SR = common dso_local global i32 0, align 4
@rt1 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flags_alloc(%struct.regstat* %0, i32 %1) #0 {
  %3 = alloca %struct.regstat*, align 8
  %4 = alloca i32, align 4
  store %struct.regstat* %0, %struct.regstat** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** @opcode2, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %5, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.regstat*, %struct.regstat** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SR, align 4
  %15 = call i32 @alloc_reg(%struct.regstat* %12, i32 %13, i32 %14)
  %16 = load %struct.regstat*, %struct.regstat** %3, align 8
  %17 = load i32, i32* @SR, align 4
  %18 = call i32 @dirty_reg(%struct.regstat* %16, i32 %17)
  br label %54

19:                                               ; preds = %2
  %20 = load i32*, i32** @opcode2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 9
  br i1 %25, label %26, label %53

26:                                               ; preds = %19
  %27 = load %struct.regstat*, %struct.regstat** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SR, align 4
  %30 = call i32 @alloc_reg(%struct.regstat* %27, i32 %28, i32 %29)
  %31 = load %struct.regstat*, %struct.regstat** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32*, i32** @rt1, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @alloc_reg(%struct.regstat* %31, i32 %32, i32 %37)
  %39 = load %struct.regstat*, %struct.regstat** %3, align 8
  %40 = load i32*, i32** @rt1, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @clear_const(%struct.regstat* %39, i32 %44)
  %46 = load %struct.regstat*, %struct.regstat** %3, align 8
  %47 = load i32*, i32** @rt1, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dirty_reg(%struct.regstat* %46, i32 %51)
  br label %53

53:                                               ; preds = %26, %19
  br label %54

54:                                               ; preds = %53, %11
  ret void
}

declare dso_local i32 @alloc_reg(%struct.regstat*, i32, i32) #1

declare dso_local i32 @dirty_reg(%struct.regstat*, i32) #1

declare dso_local i32 @clear_const(%struct.regstat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
