; ModuleID = '/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_build_move16.c'
source_filename = "/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_build_move16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }

@M68K_INS_MOVE16 = common dso_local global i32 0, align 4
@M68K_OP_MEM = common dso_local global i32 0, align 4
@M68K_AM_REGI_ADDR_POST_INC = common dso_local global i32 0, align 4
@M68K_AM_REG_DIRECT_ADDR = common dso_local global i32 0, align 4
@M68K_REG_A0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @build_move16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_move16(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @M68K_INS_MOVE16, align 4
  %14 = call %struct.TYPE_5__* @build_init_op(i32* %12, i32 %13, i32 2, i32 0)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %63, %3
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %66

18:                                               ; preds = %15
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %9, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* @M68K_OP_MEM, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @M68K_AM_REGI_ADDR_POST_INC, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %18
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @M68K_AM_REG_DIRECT_ADDR, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41, %18
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i64, i64* @M68K_REG_A0, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  br label %62

55:                                               ; preds = %41
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %55, %45
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %15

66:                                               ; preds = %15
  ret void
}

declare dso_local %struct.TYPE_5__* @build_init_op(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
