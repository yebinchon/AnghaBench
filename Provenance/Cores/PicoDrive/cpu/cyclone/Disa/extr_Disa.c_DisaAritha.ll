; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaAritha.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaAritha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"suba\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cmpa\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"adda\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.DisaAritha.aritha = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)], align 16
@DisaText = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"%s.%c %s, %s\00", align 1
@Tasm = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @DisaAritha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DisaAritha(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  %9 = alloca [64 x i8], align 16
  %10 = alloca [4 x i8*], align 16
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = bitcast [64 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 64, i1 false)
  %12 = bitcast [64 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 64, i1 false)
  %13 = bitcast [4 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([4 x i8*]* @__const.DisaAritha.aritha to i8*), i64 32, i1 false)
  %14 = load i32, i32* %3, align 4
  %15 = ashr i32 %14, 13
  %16 = and i32 %15, 3
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp sge i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %54

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %3, align 4
  %27 = ashr i32 %26, 9
  %28 = and i32 %27, 7
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, 8
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 63
  store i32 %32, i32* %6, align 4
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @DisaGetEa(i8* %33, i32 %34, i32 %35)
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @DisaGetEa(i8* %37, i32 %38, i32 %39)
  %41 = load i32, i32* @DisaText, align 4
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load i32*, i32** @Tasm, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %53 = call i32 @sprintf(i32 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %45, i32 %50, i8* %51, i8* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %20, %19
  %55 = load i32, i32* %2, align 4
  ret i32 %55
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
