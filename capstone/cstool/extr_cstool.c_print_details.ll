; ModuleID = '/home/carl/AnghaBench/capstone/cstool/extr_cstool.c_print_details.c'
source_filename = "/home/carl/AnghaBench/capstone/cstool/extr_cstool.c_print_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32* }

@.str = private unnamed_addr constant [10 x i8] c"\09Groups: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.TYPE_18__*)* @print_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_details(i32 %0, i32 %1, i32 %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %8, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %64 [
    i32 129, label %11
    i32 140, label %16
    i32 139, label %20
    i32 135, label %24
    i32 133, label %28
    i32 132, label %32
    i32 131, label %36
    i32 128, label %40
    i32 136, label %44
    i32 130, label %48
    i32 137, label %52
    i32 138, label %56
    i32 134, label %60
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %15 = call i32 @print_insn_detail_x86(i32 %12, i32 %13, %struct.TYPE_18__* %14)
  br label %65

16:                                               ; preds = %4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %19 = call i32 @print_insn_detail_arm(i32 %17, %struct.TYPE_18__* %18)
  br label %65

20:                                               ; preds = %4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %23 = call i32 @print_insn_detail_arm64(i32 %21, %struct.TYPE_18__* %22)
  br label %65

24:                                               ; preds = %4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %27 = call i32 @print_insn_detail_mips(i32 %25, %struct.TYPE_18__* %26)
  br label %65

28:                                               ; preds = %4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %31 = call i32 @print_insn_detail_ppc(i32 %29, %struct.TYPE_18__* %30)
  br label %65

32:                                               ; preds = %4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %35 = call i32 @print_insn_detail_sparc(i32 %33, %struct.TYPE_18__* %34)
  br label %65

36:                                               ; preds = %4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %39 = call i32 @print_insn_detail_sysz(i32 %37, %struct.TYPE_18__* %38)
  br label %65

40:                                               ; preds = %4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %43 = call i32 @print_insn_detail_xcore(i32 %41, %struct.TYPE_18__* %42)
  br label %65

44:                                               ; preds = %4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %47 = call i32 @print_insn_detail_m68k(i32 %45, %struct.TYPE_18__* %46)
  br label %65

48:                                               ; preds = %4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %51 = call i32 @print_insn_detail_tms320c64x(i32 %49, %struct.TYPE_18__* %50)
  br label %65

52:                                               ; preds = %4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %55 = call i32 @print_insn_detail_m680x(i32 %53, %struct.TYPE_18__* %54)
  br label %65

56:                                               ; preds = %4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %59 = call i32 @print_insn_detail_evm(i32 %57, %struct.TYPE_18__* %58)
  br label %65

60:                                               ; preds = %4
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %63 = call i32 @print_insn_detail_mos65xx(i32 %61, %struct.TYPE_18__* %62)
  br label %65

64:                                               ; preds = %4
  br label %65

65:                                               ; preds = %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16, %11
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %100

72:                                               ; preds = %65
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %95, %72
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %75, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %74
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @cs_group_name(i32 %83, i32 %92)
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %82
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %74

98:                                               ; preds = %74
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %65
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @print_insn_detail_x86(i32, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @print_insn_detail_arm(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @print_insn_detail_arm64(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @print_insn_detail_mips(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @print_insn_detail_ppc(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @print_insn_detail_sparc(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @print_insn_detail_sysz(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @print_insn_detail_xcore(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @print_insn_detail_m68k(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @print_insn_detail_tms320c64x(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @print_insn_detail_m680x(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @print_insn_detail_evm(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @print_insn_detail_mos65xx(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @cs_group_name(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
