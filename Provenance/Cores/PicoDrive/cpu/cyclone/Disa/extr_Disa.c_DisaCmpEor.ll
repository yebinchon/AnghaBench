; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaCmpEor.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaCmpEor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DisaText = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"eor.%c %s, %s\00", align 1
@Tasm = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"cmp.%c %s, %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @DisaCmpEor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DisaCmpEor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [64 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = bitcast [64 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 64, i1 false)
  %9 = bitcast [64 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 64, i1 false)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %3, align 4
  %11 = ashr i32 %10, 8
  %12 = and i32 %11, 1
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 6
  %15 = and i32 %14, 3
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sge i32 %16, 3
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %59

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 61752
  %22 = icmp eq i32 %21, 45320
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %59

24:                                               ; preds = %19
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %26 = load i32, i32* %3, align 4
  %27 = ashr i32 %26, 9
  %28 = and i32 %27, 7
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @DisaGetEa(i8* %25, i32 %28, i32 %29)
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, 63
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @DisaGetEa(i8* %31, i32 %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %24
  %39 = load i32, i32* @DisaText, align 4
  %40 = load i32*, i32** @Tasm, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %47 = call i32 @sprintf(i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %44, i8* %45, i8* %46)
  br label %58

48:                                               ; preds = %24
  %49 = load i32, i32* @DisaText, align 4
  %50 = load i32*, i32** @Tasm, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %57 = call i32 @sprintf(i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %54, i8* %55, i8* %56)
  br label %58

58:                                               ; preds = %48, %38
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %23, %18
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DisaGetEa(i8*, i32, i32) #2

declare dso_local i32 @sprintf(i32, i8*, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
