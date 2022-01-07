; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_ds_assemble.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_ds_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i32 }

@is_delayslot = common dso_local global i32 0, align 4
@itype = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"Jump in the delay slot.  This is probably a bug.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ds_assemble(i32 %0, %struct.regstat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regstat*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.regstat* %1, %struct.regstat** %4, align 8
  store i32 1, i32* @is_delayslot, align 4
  %5 = load i32*, i32** @itype, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %5, i64 %7
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %60 [
    i32 145, label %10
    i32 140, label %14
    i32 133, label %18
    i32 139, label %22
    i32 131, label %26
    i32 134, label %30
    i32 136, label %34
    i32 137, label %38
    i32 138, label %42
    i32 142, label %46
    i32 141, label %50
    i32 143, label %54
    i32 129, label %58
    i32 130, label %58
    i32 128, label %58
    i32 135, label %58
    i32 144, label %58
    i32 132, label %58
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.regstat*, %struct.regstat** %4, align 8
  %13 = call i32 @alu_assemble(i32 %11, %struct.regstat* %12)
  br label %60

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.regstat*, %struct.regstat** %4, align 8
  %17 = call i32 @imm8_assemble(i32 %15, %struct.regstat* %16)
  br label %60

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.regstat*, %struct.regstat** %4, align 8
  %21 = call i32 @shiftimm_assemble(i32 %19, %struct.regstat* %20)
  br label %60

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.regstat*, %struct.regstat** %4, align 8
  %25 = call i32 @load_assemble(i32 %23, %struct.regstat* %24)
  br label %60

26:                                               ; preds = %2
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.regstat*, %struct.regstat** %4, align 8
  %29 = call i32 @store_assemble(i32 %27, %struct.regstat* %28)
  br label %60

30:                                               ; preds = %2
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.regstat*, %struct.regstat** %4, align 8
  %33 = call i32 @rmw_assemble(i32 %31, %struct.regstat* %32)
  br label %60

34:                                               ; preds = %2
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.regstat*, %struct.regstat** %4, align 8
  %37 = call i32 @pcrel_assemble(i32 %35, %struct.regstat* %36)
  br label %60

38:                                               ; preds = %2
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.regstat*, %struct.regstat** %4, align 8
  %41 = call i32 @multdiv_assemble(i32 %39, %struct.regstat* %40)
  br label %60

42:                                               ; preds = %2
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.regstat*, %struct.regstat** %4, align 8
  %45 = call i32 @mov_assemble(i32 %43, %struct.regstat* %44)
  br label %60

46:                                               ; preds = %2
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.regstat*, %struct.regstat** %4, align 8
  %49 = call i32 @ext_assemble(i32 %47, %struct.regstat* %48)
  br label %60

50:                                               ; preds = %2
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.regstat*, %struct.regstat** %4, align 8
  %53 = call i32 @flags_assemble(i32 %51, %struct.regstat* %52)
  br label %60

54:                                               ; preds = %2
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.regstat*, %struct.regstat** %4, align 8
  %57 = call i32 @complex_assemble(i32 %55, %struct.regstat* %56)
  br label %60

58:                                               ; preds = %2, %2, %2, %2, %2, %2
  %59 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %2, %54, %50, %46, %42, %38, %34, %30, %26, %22, %18, %14, %10
  store i32 0, i32* @is_delayslot, align 4
  ret void
}

declare dso_local i32 @alu_assemble(i32, %struct.regstat*) #1

declare dso_local i32 @imm8_assemble(i32, %struct.regstat*) #1

declare dso_local i32 @shiftimm_assemble(i32, %struct.regstat*) #1

declare dso_local i32 @load_assemble(i32, %struct.regstat*) #1

declare dso_local i32 @store_assemble(i32, %struct.regstat*) #1

declare dso_local i32 @rmw_assemble(i32, %struct.regstat*) #1

declare dso_local i32 @pcrel_assemble(i32, %struct.regstat*) #1

declare dso_local i32 @multdiv_assemble(i32, %struct.regstat*) #1

declare dso_local i32 @mov_assemble(i32, %struct.regstat*) #1

declare dso_local i32 @ext_assemble(i32, %struct.regstat*) #1

declare dso_local i32 @flags_assemble(i32, %struct.regstat*) #1

declare dso_local i32 @complex_assemble(i32, %struct.regstat*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
