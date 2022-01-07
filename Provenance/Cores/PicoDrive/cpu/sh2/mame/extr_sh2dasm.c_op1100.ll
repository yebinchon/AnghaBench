; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/sh2/mame/extr_sh2dasm.c_op1100.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/sh2/mame/extr_sh2dasm.c_op1100.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"MOV.B   R0,@($%02X,GBR)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"MOV.W   R0,@($%04X,GBR)\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"MOV.L   R0,@($%04X,GBR)\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"TRAPA   #$%02X\00", align 1
@DASMFLAG_STEP_OVER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"MOV.B   @($%02X,GBR),R0\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"MOV.W   @($%04X,GBR),R0\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"MOV.L   @($%04X,GBR),R0\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"MOVA    @($%04X,PC),R0  ; @$%08x\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"TST     #$%02X,R0\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"AND     #$%02X,R0\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"XOR     #$%02X,R0\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"OR      #$%02X,R0\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"TST.B   #$%02X,@(R0,GBR)\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"AND.B   #$%02X,@(R0,GBR)\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"XOR.B   #$%02X,@(R0,GBR)\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"OR.B    #$%02X,@(R0,GBR)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @op1100 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op1100(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = ashr i32 %8, 8
  %10 = and i32 %9, 15
  switch i32 %10, label %104 [
    i32 0, label %11
    i32 1, label %16
    i32 2, label %22
    i32 3, label %28
    i32 4, label %34
    i32 5, label %39
    i32 6, label %45
    i32 7, label %51
    i32 8, label %64
    i32 9, label %69
    i32 10, label %74
    i32 11, label %79
    i32 12, label %84
    i32 13, label %89
    i32 14, label %94
    i32 15, label %99
  ]

11:                                               ; preds = %3
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 255
  %15 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %104

16:                                               ; preds = %3
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 255
  %20 = mul nsw i32 %19, 2
  %21 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %104

22:                                               ; preds = %3
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 255
  %26 = mul nsw i32 %25, 4
  %27 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  br label %104

28:                                               ; preds = %3
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 255
  %32 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @DASMFLAG_STEP_OVER, align 4
  store i32 %33, i32* %7, align 4
  br label %104

34:                                               ; preds = %3
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 255
  %38 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  br label %104

39:                                               ; preds = %3
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 255
  %43 = mul nsw i32 %42, 2
  %44 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  br label %104

45:                                               ; preds = %3
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 255
  %49 = mul nsw i32 %48, 4
  %50 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %49)
  br label %104

51:                                               ; preds = %3
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 255
  %55 = mul nsw i32 %54, 4
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 2
  %58 = and i32 %57, -4
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, 255
  %61 = mul nsw i32 %60, 4
  %62 = add nsw i32 %58, %61
  %63 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %55, i32 %62)
  br label %104

64:                                               ; preds = %3
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, 255
  %68 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %67)
  br label %104

69:                                               ; preds = %3
  %70 = load i8*, i8** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = and i32 %71, 255
  %73 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %72)
  br label %104

74:                                               ; preds = %3
  %75 = load i8*, i8** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = and i32 %76, 255
  %78 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %77)
  br label %104

79:                                               ; preds = %3
  %80 = load i8*, i8** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, 255
  %83 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %82)
  br label %104

84:                                               ; preds = %3
  %85 = load i8*, i8** %4, align 8
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, 255
  %88 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %87)
  br label %104

89:                                               ; preds = %3
  %90 = load i8*, i8** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %91, 255
  %93 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %92)
  br label %104

94:                                               ; preds = %3
  %95 = load i8*, i8** %4, align 8
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, 255
  %98 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %97)
  br label %104

99:                                               ; preds = %3
  %100 = load i8*, i8** %4, align 8
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, 255
  %103 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %3, %99, %94, %89, %84, %79, %74, %69, %64, %51, %45, %39, %34, %28, %22, %16, %11
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
