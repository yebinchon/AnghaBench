; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscLocal.c_getToStringLength.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscLocal.c_getToStringLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @getToStringLength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getToStringLength(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [512 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = bitcast [512 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 512, i1 false)
  store i32 0, i32* %9, align 4
  store i32 5, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %49 [
    i32 133, label %13
    i32 129, label %15
    i32 131, label %17
    i32 130, label %29
    i32 128, label %41
    i32 134, label %41
    i32 132, label %47
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %4, align 4
  br label %57

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %4, align 4
  br label %57

17:                                               ; preds = %3
  %18 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to double*
  %21 = load double, double* %20, align 8
  %22 = fptosi double %21 to i32
  %23 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %25 = call i32 @strncasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 3)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 4, i32* %9, align 4
  br label %28

28:                                               ; preds = %27, %17
  br label %55

29:                                               ; preds = %3
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %31 = load i8*, i8** %5, align 8
  %32 = bitcast i8* %31 to float*
  %33 = load float, float* %32, align 4
  %34 = fptosi float %33 to i32
  %35 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %37 = call i32 @strncasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 3)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 4, i32* %9, align 4
  br label %40

40:                                               ; preds = %39, %29
  br label %55

41:                                               ; preds = %3, %3
  %42 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %43 = load i8*, i8** %5, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  store i32 %46, i32* %9, align 4
  br label %55

47:                                               ; preds = %3
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %9, align 4
  br label %55

49:                                               ; preds = %3
  %50 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %51 = load i8*, i8** %5, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sprintf(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %49, %47, %41, %40, %28
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %15, %13
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
