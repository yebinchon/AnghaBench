; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaDbra.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaDbra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DisaDbra.BraCode = internal global [16 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"bt\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bra\00", align 1
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
@.str.17 = private unnamed_addr constant [11 x i8] c"d%s %s, %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @DisaDbra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DisaDbra(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %8 = bitcast [64 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 64, i1 false)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8** %7, align 8
  %9 = load i32, i32* %2, align 4
  %10 = and i32 %9, 7
  store i32 %10, i32* %3, align 4
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @DisaGetEa(i8* %11, i32 %12, i32 2)
  %14 = load i32, i32* %2, align 4
  %15 = ashr i32 %14, 8
  %16 = and i32 %15, 15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @DisaDbra.BraCode, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  %20 = load i32, i32* @DisaPc, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @DisaPc, align 4
  %22 = call i64 @DisaWord(i32 %21)
  %23 = trunc i64 %22 to i16
  %24 = sext i16 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @DisaPc, align 4
  %26 = add nsw i32 %25, 2
  store i32 %26, i32* @DisaPc, align 4
  %27 = load i32, i32* @DisaText, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  %33 = call i32 @sprintf(i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* %28, i8* %29, i32 %32)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DisaGetEa(i8*, i32, i32) #2

declare dso_local i64 @DisaWord(i32) #2

declare dso_local i32 @sprintf(i32, i8*, i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
