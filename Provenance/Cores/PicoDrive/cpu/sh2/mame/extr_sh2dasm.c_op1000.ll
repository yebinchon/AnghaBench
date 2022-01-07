; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/sh2/mame/extr_sh2dasm.c_op1000.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/sh2/mame/extr_sh2dasm.c_op1000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"MOV.B   R0,@($%02X,%s)\00", align 1
@regname = common dso_local global i8** null, align 8
@Rm = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"MOV.W   R0,@($%02X,%s)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MOV.B   @($%02X,%s),R0\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MOV.W   @($%02X,%s),R0\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"CMP/EQ  #$%02X,R0\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"BT      $%08x\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"BF      $%08x\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"BTS     $%08x\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"BFS     $%08x\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"invalid $%04X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @op1000 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op1000(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = ashr i32 %7, 8
  %9 = and i32 %8, 15
  switch i32 %9, label %92 [
    i32 0, label %10
    i32 1, label %19
    i32 4, label %29
    i32 5, label %38
    i32 8, label %47
    i32 9, label %52
    i32 11, label %62
    i32 13, label %72
    i32 15, label %82
  ]

10:                                               ; preds = %3
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 15
  %14 = load i8**, i8*** @regname, align 8
  %15 = load i64, i64* @Rm, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13, i8* %17)
  br label %96

19:                                               ; preds = %3
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 15
  %23 = mul nsw i32 %22, 2
  %24 = load i8**, i8*** @regname, align 8
  %25 = load i64, i64* @Rm, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %23, i8* %27)
  br label %96

29:                                               ; preds = %3
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 15
  %33 = load i8**, i8*** @regname, align 8
  %34 = load i64, i64* @Rm, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %32, i8* %36)
  br label %96

38:                                               ; preds = %3
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 15
  %42 = load i8**, i8*** @regname, align 8
  %43 = load i64, i64* @Rm, align 8
  %44 = getelementptr inbounds i8*, i8** %42, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %41, i8* %45)
  br label %96

47:                                               ; preds = %3
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 255
  %51 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  br label %96

52:                                               ; preds = %3
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 255
  %57 = call i32 @SIGNX8(i32 %56)
  %58 = mul nsw i32 %57, 2
  %59 = add nsw i32 %54, %58
  %60 = add nsw i32 %59, 2
  %61 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  br label %96

62:                                               ; preds = %3
  %63 = load i8*, i8** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, 255
  %67 = call i32 @SIGNX8(i32 %66)
  %68 = mul nsw i32 %67, 2
  %69 = add nsw i32 %64, %68
  %70 = add nsw i32 %69, 2
  %71 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  br label %96

72:                                               ; preds = %3
  %73 = load i8*, i8** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, 255
  %77 = call i32 @SIGNX8(i32 %76)
  %78 = mul nsw i32 %77, 2
  %79 = add nsw i32 %74, %78
  %80 = add nsw i32 %79, 2
  %81 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %80)
  br label %96

82:                                               ; preds = %3
  %83 = load i8*, i8** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, 255
  %87 = call i32 @SIGNX8(i32 %86)
  %88 = mul nsw i32 %87, 2
  %89 = add nsw i32 %84, %88
  %90 = add nsw i32 %89, 2
  %91 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %90)
  br label %96

92:                                               ; preds = %3
  %93 = load i8*, i8** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %92, %82, %72, %62, %52, %47, %38, %29, %19, %10
  ret i32 0
}

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @SIGNX8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
