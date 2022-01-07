; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_store.c_AAS_HashVec.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_store.c_AAS_HashVec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_MAP_BOUNDS = common dso_local global i32 0, align 4
@VERTEX_HASH_SHIFT = common dso_local global i32 0, align 4
@VERTEX_HASH_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"WARNING! HashVec: point %f %f %f outside valid range\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"This should never happen!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_HashVec(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %6 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %7 = load i64*, i64** %3, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = sitofp i64 %9 to double
  %11 = fadd double %10, 5.000000e-01
  %12 = fptosi double %11 to i32
  %13 = add nsw i32 %6, %12
  %14 = load i32, i32* @VERTEX_HASH_SHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %17 = load i64*, i64** %3, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = sitofp i64 %19 to double
  %21 = fadd double %20, 5.000000e-01
  %22 = fptosi double %21 to i32
  %23 = add nsw i32 %16, %22
  %24 = load i32, i32* @VERTEX_HASH_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @VERTEX_HASH_SIZE, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @VERTEX_HASH_SIZE, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35, %32, %28, %1
  %40 = load i64*, i64** %3, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %3, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %3, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %45, i64 %48)
  %50 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %57

51:                                               ; preds = %35
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @VERTEX_HASH_SIZE, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %51, %39
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @Log_Print(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
