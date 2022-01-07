; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Mayaqua.c_SetCommandLineUniStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Mayaqua.c_SetCommandLineUniStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uni_cmdline = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetCommandLineUniStr(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** @uni_cmdline, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32*, i32** @uni_cmdline, align 8
  %7 = call i32 @Free(i32* %6)
  br label %8

8:                                                ; preds = %5, %1
  %9 = load i32*, i32** %2, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32* null, i32** @uni_cmdline, align 8
  br label %15

12:                                               ; preds = %8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32* @CopyUniStr(i32* %13)
  store i32* %14, i32** @uni_cmdline, align 8
  br label %15

15:                                               ; preds = %12, %11
  %16 = call i32 (...) @ParseCommandLineTokens()
  ret void
}

declare dso_local i32 @Free(i32*) #1

declare dso_local i32* @CopyUniStr(i32*) #1

declare dso_local i32 @ParseCommandLineTokens(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
