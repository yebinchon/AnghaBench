; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/vpntest/extr_vpntest.c_main.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/vpntest/extr_vpntest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/memcheck\00", align 1
@cmdline = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* @MAX_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %16 = call i32 (...) @InitProcessCallOnce()
  %17 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %17, align 16
  %18 = load i32, i32* %4, align 4
  %19 = icmp sge i32 %18, 2
  br i1 %19, label %20, label %52

20:                                               ; preds = %2
  store i64 1, i64* %7, align 8
  br label %21

21:                                               ; preds = %48, %20
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %21
  %27 = load i8**, i8*** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 47
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @StrCmpi(i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %36
  br label %47

42:                                               ; preds = %26
  %43 = trunc i64 %13 to i32
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = call i32 @StrCpy(i8* %15, i32 %43, i8* %45)
  br label %47

47:                                               ; preds = %42, %41
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %7, align 8
  br label %21

51:                                               ; preds = %21
  br label %52

52:                                               ; preds = %51, %2
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i8**, i8*** %5, align 8
  %56 = call i32 @InitMayaqua(i32 %53, i32 1, i32 %54, i8** %55)
  %57 = call i32 @EnableProbe(i32 1)
  %58 = call i32 (...) @InitCedar()
  %59 = call i32 (...) @SetHamMode()
  %60 = load i32, i32* @cmdline, align 4
  %61 = call i32 @TestMain(i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = call i32 (...) @FreeCedar()
  %63 = call i32 (...) @FreeMayaqua()
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %3, align 4
  %65 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @InitProcessCallOnce(...) #2

declare dso_local i32 @StrCmpi(i8*, i8*) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @InitMayaqua(i32, i32, i32, i8**) #2

declare dso_local i32 @EnableProbe(i32) #2

declare dso_local i32 @InitCedar(...) #2

declare dso_local i32 @SetHamMode(...) #2

declare dso_local i32 @TestMain(i32) #2

declare dso_local i32 @FreeCedar(...) #2

declare dso_local i32 @FreeMayaqua(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
