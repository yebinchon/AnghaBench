; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Mayaqua.c_SetCommandLineStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Mayaqua.c_SetCommandLineStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmdline = common dso_local global i32* null, align 8
@uni_cmdline = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetCommandLineStr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load i32*, i32** @cmdline, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i32*, i32** @cmdline, align 8
  %10 = call i32 @Free(i32* %9)
  br label %11

11:                                               ; preds = %8, %5
  store i32* null, i32** @cmdline, align 8
  br label %21

12:                                               ; preds = %1
  %13 = load i32*, i32** @cmdline, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32*, i32** @cmdline, align 8
  %17 = call i32 @Free(i32* %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i8*, i8** %2, align 8
  %20 = call i32* @CopyStr(i8* %19)
  store i32* %20, i32** @cmdline, align 8
  br label %21

21:                                               ; preds = %18, %11
  %22 = load i32*, i32** @cmdline, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32*, i32** @uni_cmdline, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** @uni_cmdline, align 8
  %29 = call i32 @Free(i32* %28)
  store i32* null, i32** @uni_cmdline, align 8
  br label %30

30:                                               ; preds = %27, %24
  br label %40

31:                                               ; preds = %21
  %32 = load i32*, i32** @uni_cmdline, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32*, i32** @uni_cmdline, align 8
  %36 = call i32 @Free(i32* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32*, i32** @cmdline, align 8
  %39 = call i32* @CopyStrToUni(i32* %38)
  store i32* %39, i32** @uni_cmdline, align 8
  br label %40

40:                                               ; preds = %37, %30
  %41 = call i32 (...) @ParseCommandLineTokens()
  ret void
}

declare dso_local i32 @Free(i32*) #1

declare dso_local i32* @CopyStr(i8*) #1

declare dso_local i32* @CopyStrToUni(i32*) #1

declare dso_local i32 @ParseCommandLineTokens(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
