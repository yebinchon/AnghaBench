; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaArithImm.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaArithImm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"eor\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@__const.DisaArithImm.arith = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)], align 16
@DisaText = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"%si.%c %s, %s\00", align 1
@Tasm = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @DisaArithImm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DisaArithImm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i8*], align 16
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %10 = bitcast [64 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 64, i1 false)
  %11 = bitcast [64 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 64, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = bitcast [8 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([8 x i8*]* @__const.DisaArithImm.arith to i8*), i64 64, i1 false)
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 9
  %15 = and i32 %14, 7
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  %20 = icmp sge i32 %19, 7
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %1
  store i32 1, i32* %2, align 4
  br label %56

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = ashr i32 %23, 6
  %25 = and i32 %24, 3
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sge i32 %26, 3
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %56

29:                                               ; preds = %22
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, 63
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 60
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %56

35:                                               ; preds = %29
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @DisaGetEa(i8* %36, i32 60, i32 %37)
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @DisaGetEa(i8* %39, i32 %40, i32 %41)
  %43 = load i32, i32* @DisaText, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x i8*], [8 x i8*]* %9, i64 0, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = load i32*, i32** @Tasm, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %55 = call i32 @sprintf(i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %47, i32 %52, i8* %53, i8* %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %35, %34, %28, %21
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DisaGetEa(i8*, i32, i32) #2

declare dso_local i32 @sprintf(i32, i8*, i8*, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
