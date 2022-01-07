; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaMovep.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaMovep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DisaText = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"movep.%c d%d, (%s,a%d)\00", align 1
@Tasm = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"movep.%c (%s,a%d), d%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @DisaMovep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DisaMovep(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = bitcast [32 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 32, i1 false)
  %9 = load i32, i32* %2, align 4
  %10 = ashr i32 %9, 9
  %11 = and i32 %10, 7
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 7
  %14 = and i32 %13, 1
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %2, align 4
  %16 = ashr i32 %15, 6
  %17 = and i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %2, align 4
  %21 = and i32 %20, 7
  store i32 %21, i32* %6, align 4
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %23 = call i32 @GetOffset(i8* %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %1
  %27 = load i32, i32* @DisaText, align 4
  %28 = load i32*, i32** @Tasm, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %3, align 4
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i32, i8*, i32, ...) @sprintf(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i8* %34, i32 %35)
  br label %48

37:                                               ; preds = %1
  %38 = load i32, i32* @DisaText, align 4
  %39 = load i32*, i32** @Tasm, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (i32, i8*, i32, ...) @sprintf(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %43, i8* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %37, %26
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GetOffset(i8*) #2

declare dso_local i32 @sprintf(i32, i8*, i32, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
