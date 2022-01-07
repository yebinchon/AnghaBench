; ModuleID = '/home/carl/AnghaBench/capstone/arch/EVM/extr_EVMInstPrinter.c_EVM_printInst.c'
source_filename = "/home/carl/AnghaBench/capstone/arch/EVM/extr_EVMInstPrinter.c_EVM_printInst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i64 }
%struct.SStream = type { i32 }

@EVM_INS_PUSH1 = common dso_local global i64 0, align 8
@EVM_INS_PUSH32 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EVM_printInst(%struct.TYPE_3__* %0, %struct.SStream* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.SStream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.SStream* %1, %struct.SStream** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.SStream*, %struct.SStream** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @EVM_insn_name(i32 %12, i64 %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 (%struct.SStream*, i8*, ...) @SStream_concat(%struct.SStream* %8, i8* %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EVM_INS_PUSH1, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EVM_INS_PUSH32, align 8
  %30 = icmp sle i64 %28, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %25
  %32 = load %struct.SStream*, %struct.SStream** %5, align 8
  %33 = call i32 @SStream_concat0(%struct.SStream* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %54, %31
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EVM_INS_PUSH1, align 8
  %41 = sub nsw i64 %39, %40
  %42 = add nsw i64 %41, 1
  %43 = icmp slt i64 %36, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %34
  %45 = load %struct.SStream*, %struct.SStream** %5, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (%struct.SStream*, i8*, ...) @SStream_concat(%struct.SStream* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %34

57:                                               ; preds = %34
  br label %58

58:                                               ; preds = %57, %25, %3
  ret void
}

declare dso_local i32 @SStream_concat(%struct.SStream*, i8*, ...) #1

declare dso_local i32 @EVM_insn_name(i32, i64) #1

declare dso_local i32 @SStream_concat0(%struct.SStream*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
