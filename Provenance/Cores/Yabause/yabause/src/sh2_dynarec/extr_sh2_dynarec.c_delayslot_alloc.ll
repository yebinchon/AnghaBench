; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_delayslot_alloc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_delayslot_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i32 }

@itype = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [49 x i8] c"jump in the delay slot.  this shouldn't happen.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Disabled speculative precompilation\0A\00", align 1
@stop_after_jal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delayslot_alloc(%struct.regstat* %0, i32 %1) #0 {
  %3 = alloca %struct.regstat*, align 8
  %4 = alloca i32, align 4
  store %struct.regstat* %0, %struct.regstat** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** @itype, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %5, i64 %7
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %61 [
    i32 128, label %10
    i32 143, label %10
    i32 131, label %10
    i32 134, label %10
    i32 129, label %10
    i32 139, label %13
    i32 138, label %17
    i32 130, label %21
    i32 133, label %25
    i32 135, label %29
    i32 144, label %33
    i32 136, label %37
    i32 132, label %41
    i32 137, label %45
    i32 141, label %49
    i32 140, label %53
    i32 142, label %57
  ]

10:                                               ; preds = %2, %2, %2, %2, %2
  %11 = call i32 @assem_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @stop_after_jal, align 4
  br label %61

13:                                               ; preds = %2
  %14 = load %struct.regstat*, %struct.regstat** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @imm8_alloc(%struct.regstat* %14, i32 %15)
  br label %61

17:                                               ; preds = %2
  %18 = load %struct.regstat*, %struct.regstat** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @load_alloc(%struct.regstat* %18, i32 %19)
  br label %61

21:                                               ; preds = %2
  %22 = load %struct.regstat*, %struct.regstat** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @store_alloc(%struct.regstat* %22, i32 %23)
  br label %61

25:                                               ; preds = %2
  %26 = load %struct.regstat*, %struct.regstat** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @rmw_alloc(%struct.regstat* %26, i32 %27)
  br label %61

29:                                               ; preds = %2
  %30 = load %struct.regstat*, %struct.regstat** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @pcrel_alloc(%struct.regstat* %30, i32 %31)
  br label %61

33:                                               ; preds = %2
  %34 = load %struct.regstat*, %struct.regstat** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @alu_alloc(%struct.regstat* %34, i32 %35)
  br label %61

37:                                               ; preds = %2
  %38 = load %struct.regstat*, %struct.regstat** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @multdiv_alloc(%struct.regstat* %38, i32 %39)
  br label %61

41:                                               ; preds = %2
  %42 = load %struct.regstat*, %struct.regstat** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @shiftimm_alloc(%struct.regstat* %42, i32 %43)
  br label %61

45:                                               ; preds = %2
  %46 = load %struct.regstat*, %struct.regstat** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @mov_alloc(%struct.regstat* %46, i32 %47)
  br label %61

49:                                               ; preds = %2
  %50 = load %struct.regstat*, %struct.regstat** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @ext_alloc(%struct.regstat* %50, i32 %51)
  br label %61

53:                                               ; preds = %2
  %54 = load %struct.regstat*, %struct.regstat** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @flags_alloc(%struct.regstat* %54, i32 %55)
  br label %61

57:                                               ; preds = %2
  %58 = load %struct.regstat*, %struct.regstat** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @complex_alloc(%struct.regstat* %58, i32 %59)
  br label %61

61:                                               ; preds = %2, %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17, %13, %10
  ret void
}

declare dso_local i32 @assem_debug(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @imm8_alloc(%struct.regstat*, i32) #1

declare dso_local i32 @load_alloc(%struct.regstat*, i32) #1

declare dso_local i32 @store_alloc(%struct.regstat*, i32) #1

declare dso_local i32 @rmw_alloc(%struct.regstat*, i32) #1

declare dso_local i32 @pcrel_alloc(%struct.regstat*, i32) #1

declare dso_local i32 @alu_alloc(%struct.regstat*, i32) #1

declare dso_local i32 @multdiv_alloc(%struct.regstat*, i32) #1

declare dso_local i32 @shiftimm_alloc(%struct.regstat*, i32) #1

declare dso_local i32 @mov_alloc(%struct.regstat*, i32) #1

declare dso_local i32 @ext_alloc(%struct.regstat*, i32) #1

declare dso_local i32 @flags_alloc(%struct.regstat*, i32) #1

declare dso_local i32 @complex_alloc(%struct.regstat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
