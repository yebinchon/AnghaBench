; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaBranch.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaBranch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DisaBranch.BraCode = internal global [16 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"bra\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bsr\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bhi\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"bls\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"bcc\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"bcs\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bne\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"beq\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"bvc\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"bvs\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"bpl\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"bmi\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"bge\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"blt\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"bgt\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ble\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DisaPc = common dso_local global i32 0, align 4
@DisaText = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"%s %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @DisaBranch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DisaBranch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8** %5, align 8
  %6 = load i32, i32* %2, align 4
  %7 = ashr i32 %6, 8
  %8 = and i32 %7, 15
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [16 x i8*], [16 x i8*]* @DisaBranch.BraCode, i64 0, i64 %9
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i32, i32* @DisaPc, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 255
  %15 = trunc i32 %14 to i8
  %16 = sext i8 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load i32, i32* @DisaPc, align 4
  %21 = call i64 @DisaWord(i32 %20)
  %22 = trunc i64 %21 to i16
  %23 = sext i16 %22 to i32
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @DisaPc, align 4
  %25 = add nsw i32 %24, 2
  store i32 %25, i32* @DisaPc, align 4
  br label %35

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* @DisaPc, align 4
  %31 = call i32 @DisaLong(i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @DisaPc, align 4
  %33 = add nsw i32 %32, 4
  store i32 %33, i32* @DisaPc, align 4
  br label %34

34:                                               ; preds = %29, %26
  br label %35

35:                                               ; preds = %34, %19
  %36 = load i32, i32* @DisaText, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %38, %39
  %41 = call i32 @sprintf(i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %37, i32 %40)
  ret i32 0
}

declare dso_local i64 @DisaWord(i32) #1

declare dso_local i32 @DisaLong(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
