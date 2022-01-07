; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Mayaqua.c_ParseCommandLineTokens.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Mayaqua.c_ParseCommandLineTokens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmdline_token = common dso_local global i32* null, align 8
@cmdline = common dso_local global i32 0, align 4
@cmdline_uni_token = common dso_local global i32* null, align 8
@uni_cmdline = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ParseCommandLineTokens() #0 {
  %1 = load i32*, i32** @cmdline_token, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32*, i32** @cmdline_token, align 8
  %5 = call i32 @FreeToken(i32* %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32, i32* @cmdline, align 4
  %8 = call i32* @ParseCmdLine(i32 %7)
  store i32* %8, i32** @cmdline_token, align 8
  %9 = load i32*, i32** @cmdline_uni_token, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load i32*, i32** @cmdline_uni_token, align 8
  %13 = call i32 @UniFreeToken(i32* %12)
  br label %14

14:                                               ; preds = %11, %6
  %15 = load i32, i32* @uni_cmdline, align 4
  %16 = call i32* @UniParseCmdLine(i32 %15)
  store i32* %16, i32** @cmdline_uni_token, align 8
  ret void
}

declare dso_local i32 @FreeToken(i32*) #1

declare dso_local i32* @ParseCmdLine(i32) #1

declare dso_local i32 @UniFreeToken(i32*) #1

declare dso_local i32* @UniParseCmdLine(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
