; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_csops_copy_token.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_csops_copy_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i32)* @csops_copy_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csops_copy_token(i8* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = bitcast [8 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %13, i8 0, i64 8, i1 false)
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 8
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @ERANGE, align 4
  store i32 %18, i32* %5, align 4
  br label %50

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* null, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  store i8* %23, i8** %6, align 8
  store i64 8, i64* %7, align 8
  br label %45

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %7, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load i64, i64* %7, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @htonl(i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 4
  %34 = call i32 @memcpy(i8* %33, i32* %12, i32 4)
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @copyout(i8* %35, i32 %36, i64 8)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* @ERANGE, align 4
  store i32 %41, i32* %5, align 4
  br label %50

42:                                               ; preds = %29
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %50

44:                                               ; preds = %24
  br label %45

45:                                               ; preds = %44, %22
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @copyout(i8* %46, i32 %47, i64 %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %45, %42, %40, %17
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

declare dso_local i32 @copyout(i8*, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
