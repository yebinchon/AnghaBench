; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaMoveUsp.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaMoveUsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DisaText = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"move usp, %s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"move %s, usp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @DisaMoveUsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DisaMoveUsp(i32 %0) #0 {
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
  %8 = ashr i32 %7, 3
  %9 = and i32 %8, 1
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 7
  %12 = or i32 %11, 8
  store i32 %12, i32* %3, align 4
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @DisaGetEa(i8* %13, i32 %14, i32 0)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @DisaText, align 4
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %21 = call i32 @sprintf(i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @DisaText, align 4
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %25 = call i32 @sprintf(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %22, %18
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
