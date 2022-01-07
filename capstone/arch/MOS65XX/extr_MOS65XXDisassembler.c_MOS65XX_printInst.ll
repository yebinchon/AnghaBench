; ModuleID = '/home/carl/AnghaBench/capstone/arch/MOS65XX/extr_MOS65XXDisassembler.c_MOS65XX_printInst.c'
source_filename = "/home/carl/AnghaBench/capstone/arch/MOS65XX/extr_MOS65XXDisassembler.c_MOS65XX_printInst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i8, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.SStream = type { i32 }

@InstructionInfoTable = common dso_local global %struct.TYPE_9__* null, align 8
@OpInfoTable = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c" a\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" $0x%04x\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" #$0x%02x\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" $0x%02x\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" $0x%04x, x\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" $0x%04x, y\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" $0x%02x, x\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c" $0x%02x, y\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" ($0x%04x)\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c" ($0x%02x, x)\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c" ($0x%02x), y\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MOS65XX_printInst(%struct.TYPE_7__* %0, %struct.SStream* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.SStream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.SStream* %1, %struct.SStream** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i8, i8* %10, align 8
  store i8 %11, i8* %7, align 1
  %12 = load %struct.SStream*, %struct.SStream** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** @InstructionInfoTable, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @OpInfoTable, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 8
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @SStream_concat0(%struct.SStream* %12, i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @OpInfoTable, align 8
  %33 = load i8, i8* %7, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %38 [
    i32 135, label %39
    i32 137, label %40
    i32 140, label %43
    i32 136, label %47
    i32 130, label %51
    i32 139, label %55
    i32 138, label %59
    i32 129, label %63
    i32 128, label %67
    i32 131, label %71
    i32 134, label %82
    i32 133, label %86
    i32 132, label %90
  ]

38:                                               ; preds = %3
  br label %94

39:                                               ; preds = %3
  br label %94

40:                                               ; preds = %3
  %41 = load %struct.SStream*, %struct.SStream** %5, align 8
  %42 = call i32 (%struct.SStream*, i8*, ...) @SStream_concat(%struct.SStream* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %94

43:                                               ; preds = %3
  %44 = load %struct.SStream*, %struct.SStream** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (%struct.SStream*, i8*, ...) @SStream_concat(%struct.SStream* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %94

47:                                               ; preds = %3
  %48 = load %struct.SStream*, %struct.SStream** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (%struct.SStream*, i8*, ...) @SStream_concat(%struct.SStream* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %94

51:                                               ; preds = %3
  %52 = load %struct.SStream*, %struct.SStream** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 (%struct.SStream*, i8*, ...) @SStream_concat(%struct.SStream* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  br label %94

55:                                               ; preds = %3
  %56 = load %struct.SStream*, %struct.SStream** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (%struct.SStream*, i8*, ...) @SStream_concat(%struct.SStream* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  br label %94

59:                                               ; preds = %3
  %60 = load %struct.SStream*, %struct.SStream** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 (%struct.SStream*, i8*, ...) @SStream_concat(%struct.SStream* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  br label %94

63:                                               ; preds = %3
  %64 = load %struct.SStream*, %struct.SStream** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 (%struct.SStream*, i8*, ...) @SStream_concat(%struct.SStream* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %65)
  br label %94

67:                                               ; preds = %3
  %68 = load %struct.SStream*, %struct.SStream** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 (%struct.SStream*, i8*, ...) @SStream_concat(%struct.SStream* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %69)
  br label %94

71:                                               ; preds = %3
  %72 = load %struct.SStream*, %struct.SStream** %5, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = trunc i32 %76 to i8
  %78 = sext i8 %77 to i32
  %79 = add nsw i32 %75, %78
  %80 = add nsw i32 %79, 2
  %81 = call i32 (%struct.SStream*, i8*, ...) @SStream_concat(%struct.SStream* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %94

82:                                               ; preds = %3
  %83 = load %struct.SStream*, %struct.SStream** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 (%struct.SStream*, i8*, ...) @SStream_concat(%struct.SStream* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %84)
  br label %94

86:                                               ; preds = %3
  %87 = load %struct.SStream*, %struct.SStream** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 (%struct.SStream*, i8*, ...) @SStream_concat(%struct.SStream* %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %88)
  br label %94

90:                                               ; preds = %3
  %91 = load %struct.SStream*, %struct.SStream** %5, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 (%struct.SStream*, i8*, ...) @SStream_concat(%struct.SStream* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %90, %86, %82, %71, %67, %63, %59, %55, %51, %47, %43, %40, %39, %38
  ret void
}

declare dso_local i32 @SStream_concat0(%struct.SStream*, i32) #1

declare dso_local i32 @SStream_concat(%struct.SStream*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
