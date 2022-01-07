; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaAddx.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaAddx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"subx\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"addx\00", align 1
@DisaText = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"%s.%c %s, %s\00", align 1
@Tasm = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @DisaAddx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DisaAddx(i32 %0) #0 {
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
  %12 = bitcast [64 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 64, i1 false)
  %13 = bitcast [64 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 64, i1 false)
  %14 = bitcast [6 x i8*]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 48, i1 false)
  %15 = bitcast i8* %14 to [6 x i8*]*
  %16 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %16, align 16
  %17 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8** %17, align 8
  %18 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %18, align 16
  %19 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i32 0, i32 3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %19, align 8
  %20 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i32 0, i32 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %20, align 16
  %21 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i32 0, i32 5
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = ashr i32 %22, 12
  %24 = and i32 %23, 5
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = ashr i32 %25, 9
  %27 = and i32 %26, 7
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %3, align 4
  %29 = ashr i32 %28, 6
  %30 = and i32 %29, 3
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp sge i32 %31, 3
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %68

34:                                               ; preds = %1
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 7
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, 8
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 32
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 32
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %41, %34
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @DisaGetEa(i8* %47, i32 %48, i32 %49)
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @DisaGetEa(i8* %51, i32 %52, i32 %53)
  %55 = load i32, i32* @DisaText, align 4
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [6 x i8*], [6 x i8*]* %11, i64 0, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = load i32*, i32** @Tasm, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %67 = call i32 @sprintf(i32 %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %59, i32 %64, i8* %65, i8* %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %46, %33
  %69 = load i32, i32* %2, align 4
  ret i32 %69
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
