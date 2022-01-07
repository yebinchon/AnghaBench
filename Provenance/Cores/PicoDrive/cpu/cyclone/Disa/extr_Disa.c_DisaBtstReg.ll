; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaBtstReg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaBtstReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"btst\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"bchg\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bclr\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bset\00", align 1
@__const.DisaBtstReg.opcode = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)], align 16
@DisaText = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"%s %s, %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @DisaBtstReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DisaBtstReg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca [64 x i8], align 16
  %9 = alloca [4 x i8*], align 16
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = bitcast [64 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 64, i1 false)
  %11 = bitcast [64 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 64, i1 false)
  %12 = bitcast [4 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([4 x i8*]* @__const.DisaBtstReg.opcode to i8*), i64 32, i1 false)
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 9
  %15 = and i32 %14, 7
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = ashr i32 %16, 6
  %18 = and i32 %17, 3
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 63
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 56
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %40

25:                                               ; preds = %1
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @DisaGetEa(i8* %26, i32 %27, i32 0)
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @DisaGetEa(i8* %29, i32 %30, i32 0)
  %32 = load i32, i32* @DisaText, align 4
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %39 = call i32 @sprintf(i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %36, i8* %37, i8* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %25, %24
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DisaGetEa(i8*, i32, i32) #2

declare dso_local i32 @sprintf(i32, i8*, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
