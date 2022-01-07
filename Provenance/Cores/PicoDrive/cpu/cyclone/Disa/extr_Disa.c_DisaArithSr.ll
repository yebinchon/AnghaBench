; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaArithSr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaArithSr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ori\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"andi\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"eori\00", align 1
@DisaText = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"%s.%c %s, %s\00", align 1
@Tasm = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"sr\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ccr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @DisaArithSr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DisaArithSr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [6 x i8*], align 16
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = bitcast [6 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 48, i1 false)
  %8 = bitcast i8* %7 to [6 x i8*]*
  %9 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8** %9, align 16
  %10 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8** %10, align 8
  %11 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %12, align 8
  %13 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %13, align 16
  %14 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 5
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8** %14, align 8
  %15 = bitcast [64 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 64, i1 false)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %16 = load i32, i32* %2, align 4
  %17 = ashr i32 %16, 9
  %18 = and i32 %17, 5
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %2, align 4
  %20 = ashr i32 %19, 6
  %21 = and i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @DisaGetEa(i8* %22, i32 60, i32 %23)
  %25 = load i32, i32* @DisaText, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = load i32*, i32** @Tasm, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %40 = call i32 @sprintf(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %29, i32 %34, i8* %35, i8* %39)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DisaGetEa(i8*, i32, i32) #2

declare dso_local i32 @sprintf(i32, i8*, i8*, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
