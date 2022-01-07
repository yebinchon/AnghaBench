; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaMoveSr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaMoveSr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DisaText = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"move sr, %s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"move ccr, %s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"move %s, ccr\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"move %s, sr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @DisaMoveSr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DisaMoveSr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = bitcast [64 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 64, i1 false)
  %7 = load i32, i32* %2, align 4
  %8 = ashr i32 %7, 9
  %9 = and i32 %8, 3
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 63
  store i32 %11, i32* %4, align 4
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @DisaGetEa(i8* %12, i32 %13, i32 1)
  %15 = load i32, i32* %3, align 4
  switch i32 %15, label %16 [
    i32 1, label %20
    i32 2, label %24
    i32 3, label %28
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @DisaText, align 4
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %19 = call i32 @sprintf(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %32

20:                                               ; preds = %1
  %21 = load i32, i32* @DisaText, align 4
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %23 = call i32 @sprintf(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %32

24:                                               ; preds = %1
  %25 = load i32, i32* @DisaText, align 4
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %27 = call i32 @sprintf(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  br label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @DisaText, align 4
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %31 = call i32 @sprintf(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %28, %24, %20, %16
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DisaGetEa(i8*, i32, i32) #2

declare dso_local i32 @sprintf(i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
