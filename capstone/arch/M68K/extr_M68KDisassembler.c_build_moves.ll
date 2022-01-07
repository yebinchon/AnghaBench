; ModuleID = '/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_build_moves.c'
source_filename = "/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_build_moves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }

@M68K_INS_MOVES = common dso_local global i32 0, align 4
@M68K_REG_A0 = common dso_local global i8* null, align 8
@M68K_REG_D0 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32)* @build_moves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_moves(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = load i32, i32* @M68K_INS_MOVES, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.TYPE_12__* @build_init_op(%struct.TYPE_10__* %9, i32 %10, i32 2, i32 %11)
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %7, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = call i32 @read_imm_16(%struct.TYPE_10__* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i64 0
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %5, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 1
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @BIT_B(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @BIT_F(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i8*, i8** @M68K_REG_A0, align 8
  br label %34

32:                                               ; preds = %26
  %33 = load i8*, i8** @M68K_REG_D0, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i8* [ %31, %30 ], [ %33, %32 ]
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 12
  %38 = and i32 %37, 7
  %39 = sext i32 %38 to i64
  %40 = getelementptr i8, i8* %35, i64 %39
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @get_ea_mode_op(%struct.TYPE_10__* %43, %struct.TYPE_11__* %44, i32 %47, i32 %48)
  br label %74

50:                                               ; preds = %2
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @get_ea_mode_op(%struct.TYPE_10__* %51, %struct.TYPE_11__* %52, i32 %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @BIT_F(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i8*, i8** @M68K_REG_A0, align 8
  br label %65

63:                                               ; preds = %50
  %64 = load i8*, i8** @M68K_REG_D0, align 8
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i8* [ %62, %61 ], [ %64, %63 ]
  %67 = load i32, i32* %8, align 4
  %68 = ashr i32 %67, 12
  %69 = and i32 %68, 7
  %70 = sext i32 %69 to i64
  %71 = getelementptr i8, i8* %66, i64 %70
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %65, %34
  ret void
}

declare dso_local %struct.TYPE_12__* @build_init_op(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @read_imm_16(%struct.TYPE_10__*) #1

declare dso_local i64 @BIT_B(i32) #1

declare dso_local i64 @BIT_F(i32) #1

declare dso_local i32 @get_ea_mode_op(%struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
