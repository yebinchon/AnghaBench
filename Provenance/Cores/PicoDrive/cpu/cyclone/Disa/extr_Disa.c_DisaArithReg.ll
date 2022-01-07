; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaArithReg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaArithReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@DisaText = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"%s.%c %s, %s\00", align 1
@Tasm = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @DisaArithReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DisaArithReg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 16
  %10 = alloca [64 x i8], align 16
  %11 = alloca [6 x i8*], align 16
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = bitcast [64 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 64, i1 false)
  %13 = bitcast [64 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 64, i1 false)
  %14 = bitcast [6 x i8*]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 48, i1 false)
  %15 = bitcast i8* %14 to [6 x i8*]*
  %16 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %16, align 16
  %17 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %17, align 8
  %18 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %18, align 16
  %19 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i32 0, i32 3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %19, align 8
  %20 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %20, align 16
  %21 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i32 0, i32 5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8** %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = ashr i32 %22, 12
  %24 = and i32 %23, 5
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = ashr i32 %25, 9
  %27 = and i32 %26, 7
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %3, align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 1
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %3, align 4
  %32 = ashr i32 %31, 6
  %33 = and i32 %32, 3
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp sge i32 %34, 3
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %86

37:                                               ; preds = %1
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, 63
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 16
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %86

46:                                               ; preds = %42, %37
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @DisaGetEa(i8* %47, i32 %48, i32 %49)
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @DisaGetEa(i8* %51, i32 %52, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %46
  %58 = load i32, i32* @DisaText, align 4
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [6 x i8*], [6 x i8*]* %11, i64 0, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load i32*, i32** @Tasm, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %70 = call i32 @sprintf(i32 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %62, i32 %67, i8* %68, i8* %69)
  br label %85

71:                                               ; preds = %46
  %72 = load i32, i32* @DisaText, align 4
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [6 x i8*], [6 x i8*]* %11, i64 0, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = load i32*, i32** @Tasm, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %84 = call i32 @sprintf(i32 %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %76, i32 %81, i8* %82, i8* %83)
  br label %85

85:                                               ; preds = %71, %57
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %45, %36
  %87 = load i32, i32* %2, align 4
  ret i32 %87
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
