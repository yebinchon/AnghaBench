; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiGenerateDefaultCertEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiGenerateDefaultCertEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"server.softether.vpn\00", align 1
@.str.1 = private unnamed_addr constant [3 x i32] [i32 85, i32 83, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiGenerateDefaultCertEx(i32** %0, i32** %1, i8* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i32, i32* @MAX_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* @MAX_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %22 = load i32**, i32*** %4, align 8
  %23 = icmp eq i32** %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32**, i32*** %5, align 8
  %26 = icmp eq i32** %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %3
  store i32 1, i32* %14, align 4
  br label %61

28:                                               ; preds = %24
  %29 = call i32 @RsaGen(i32** %8, i32** %9, i32 2048)
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @IsEmptyStr(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = trunc i64 %16 to i32
  %35 = call i32 @StrCpy(i8* %18, i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %36 = trunc i64 %16 to i32
  %37 = call i32 @GetMachineName(i8* %18, i32 %36)
  %38 = mul nuw i64 4, %20
  %39 = trunc i64 %38 to i32
  %40 = call i32 @StrToUni(i32* %21, i32 %39, i8* %18)
  br label %46

41:                                               ; preds = %28
  %42 = mul nuw i64 4, %20
  %43 = trunc i64 %42 to i32
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @StrToUni(i32* %21, i32 %43, i8* %44)
  br label %46

46:                                               ; preds = %41, %33
  %47 = call i32* @NewName(i32* %21, i32* %21, i32* %21, i8* bitcast ([3 x i32]* @.str.1 to i8*), i32* null, i32* null)
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 (...) @GetDaysUntil2038Ex()
  %52 = call i32* @NewRootX(i32* %48, i32* %49, i32* %50, i32 %51, i32* null)
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32**, i32*** %4, align 8
  store i32* %53, i32** %54, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32**, i32*** %5, align 8
  store i32* %55, i32** %56, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @FreeName(i32* %57)
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @FreeK(i32* %59)
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %46, %27
  %62 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %14, align 4
  switch i32 %63, label %65 [
    i32 0, label %64
    i32 1, label %64
  ]

64:                                               ; preds = %61, %61
  ret void

65:                                               ; preds = %61
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RsaGen(i32**, i32**, i32) #2

declare dso_local i64 @IsEmptyStr(i8*) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @GetMachineName(i8*, i32) #2

declare dso_local i32 @StrToUni(i32*, i32, i8*) #2

declare dso_local i32* @NewName(i32*, i32*, i32*, i8*, i32*, i32*) #2

declare dso_local i32* @NewRootX(i32*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @GetDaysUntil2038Ex(...) #2

declare dso_local i32 @FreeName(i32*) #2

declare dso_local i32 @FreeK(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
