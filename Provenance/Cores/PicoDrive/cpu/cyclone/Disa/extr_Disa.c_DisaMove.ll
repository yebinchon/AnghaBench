; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaMove.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"move%s.%c\00", align 1
@Tasm = common dso_local global i32* null, align 8
@DisaText = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%s %s, %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @DisaMove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DisaMove(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  %7 = alloca [64 x i8], align 16
  %8 = alloca [64 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = bitcast [64 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 64, i1 false)
  %12 = bitcast [64 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 64, i1 false)
  %13 = bitcast [64 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 64, i1 false)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 448
  %16 = icmp eq i32 %15, 64
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %18

18:                                               ; preds = %17, %1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 12288
  switch i32 %20, label %24 [
    i32 4096, label %21
    i32 12288, label %22
    i32 8192, label %23
  ]

21:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %25

22:                                               ; preds = %18
  store i32 1, i32* %10, align 4
  br label %25

23:                                               ; preds = %18
  store i32 2, i32* %10, align 4
  br label %25

24:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %59

25:                                               ; preds = %23, %22, %21
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 63
  store i32 %27, i32* %4, align 4
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @DisaGetEa(i8* %28, i32 %29, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, 448
  %34 = ashr i32 %33, 3
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 3584
  %37 = ashr i32 %36, 9
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @DisaGetEa(i8* %40, i32 %41, i32 %42)
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %45 = load i8*, i8** %9, align 8
  %46 = load i32*, i32** @Tasm, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %45, i32 %50)
  %52 = load i32, i32* @DisaText, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %58 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %55, i8* %56, i8* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %25, %24
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DisaGetEa(i8*, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
