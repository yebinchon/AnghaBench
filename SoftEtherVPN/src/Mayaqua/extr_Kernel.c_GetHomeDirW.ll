; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_GetHomeDirW.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_GetHomeDirW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i32] [i32 72, i32 79, i32 77, i32 69, i32 0], align 4
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i32] [i32 72, i32 79, i32 77, i32 69, i32 68, i32 82, i32 73, i32 86, i32 69, i32 0], align 4
@.str.2 = private unnamed_addr constant [9 x i32] [i32 72, i32 79, i32 77, i32 69, i32 80, i32 65, i32 84, i32 72, i32 0], align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 37, i32 115, i32 37, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetHomeDirW(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %43

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @GetEnvW(i8* bitcast ([5 x i32]* @.str to i8*), i32* %12, i32 %13)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %11
  %17 = load i32, i32* @MAX_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %21 = load i32, i32* @MAX_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %24 = mul nuw i64 4, %18
  %25 = trunc i64 %24 to i32
  %26 = call i32 @GetEnvW(i8* bitcast ([10 x i32]* @.str.1 to i8*), i32* %20, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %16
  %29 = mul nuw i64 4, %22
  %30 = trunc i64 %29 to i32
  %31 = call i32 @GetEnvW(i8* bitcast ([9 x i32]* @.str.2 to i8*), i32* %23, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @UniFormat(i32* %34, i32 %35, i8* bitcast ([5 x i32]* @.str.3 to i8*), i32* %20, i32* %23)
  br label %41

37:                                               ; preds = %28, %16
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @UnixGetCurrentDirW(i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %42)
  br label %43

43:                                               ; preds = %10, %41, %11
  ret void
}

declare dso_local i32 @GetEnvW(i8*, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UniFormat(i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @UnixGetCurrentDirW(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
