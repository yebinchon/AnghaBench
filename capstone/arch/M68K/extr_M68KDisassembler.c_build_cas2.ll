; ModuleID = '/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_build_cas2.c'
source_filename = "/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_build_cas2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }

@M68K_INS_CAS2 = common dso_local global i32 0, align 4
@M68K_AM_NONE = common dso_local global i8* null, align 8
@M68K_OP_REG_PAIR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @build_cas2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_cas2(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @M68K_INS_CAS2, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.TYPE_7__* @build_init_op(i32* %13, i32 %14, i32 3, i32 %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %10, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @peek_imm_32(i32* %17)
  %19 = and i32 %18, 65535
  store i32 %19, i32* %5, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @instruction_is_valid(i32* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %107

25:                                               ; preds = %2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 0
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %7, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 1
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %8, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 2
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %9, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @read_imm_32(i32* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i8*, i8** @M68K_AM_NONE, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @M68K_OP_REG_PAIR, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = ashr i32 %46, 16
  %48 = and i32 %47, 7
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 7
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load i8*, i8** @M68K_AM_NONE, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @M68K_OP_REG_PAIR, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = ashr i32 %63, 22
  %65 = and i32 %64, 7
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* %6, align 4
  %70 = ashr i32 %69, 6
  %71 = and i32 %70, 7
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* %6, align 4
  %76 = ashr i32 %75, 28
  %77 = and i32 %76, 7
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %6, align 4
  %79 = ashr i32 %78, 12
  %80 = and i32 %79, 7
  store i32 %80, i32* %12, align 4
  %81 = load i8*, i8** @M68K_AM_NONE, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @M68K_OP_REG_PAIR, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i64 @BIT_1F(i32 %88)
  %90 = icmp ne i64 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 8, i32 0
  %93 = add nsw i32 %87, %92
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i64 @BIT_F(i32 %98)
  %100 = icmp ne i64 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 8, i32 0
  %103 = add nsw i32 %97, %102
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  br label %107

107:                                              ; preds = %25, %24
  ret void
}

declare dso_local %struct.TYPE_7__* @build_init_op(i32*, i32, i32, i32) #1

declare dso_local i32 @peek_imm_32(i32*) #1

declare dso_local i32 @instruction_is_valid(i32*, i32) #1

declare dso_local i32 @read_imm_32(i32*) #1

declare dso_local i64 @BIT_1F(i32) #1

declare dso_local i64 @BIT_F(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
