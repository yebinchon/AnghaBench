; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_main.c_MyConnect.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_main.c_MyConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"handler_name %s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"signal_name %s\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Signal handler (%s) not found\00", align 1
@G_CONNECT_AFTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32, i32)* @MyConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MyConnect(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @g_return_if_fail(i32 %18)
  %20 = load i32*, i32** %11, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @g_return_if_fail(i32 %22)
  %24 = load i32*, i32** %10, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @g_return_if_fail(i32 %26)
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @g_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %28)
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @g_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %30)
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @self_symbol_lookup(i32* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %7
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @g_message(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32* %37)
  br label %67

39:                                               ; preds = %7
  %40 = load i32*, i32** %12, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @g_signal_connect_object(i32* %43, i32* %44, i32 %45, i32* %46, i32 %47)
  br label %67

49:                                               ; preds = %39
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @G_CONNECT_AFTER, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32*, i32** %9, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @g_signal_connect_after(i32* %55, i32* %56, i32 %57, i32 %58)
  br label %66

60:                                               ; preds = %49
  %61 = load i32*, i32** %9, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @g_signal_connect(i32* %61, i32* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %54
  br label %67

67:                                               ; preds = %36, %66, %42
  ret void
}

declare dso_local i32 @g_return_if_fail(i32) #1

declare dso_local i32 @g_debug(i8*, i32*) #1

declare dso_local i32 @self_symbol_lookup(i32*) #1

declare dso_local i32 @g_message(i8*, i32*) #1

declare dso_local i32 @g_signal_connect_object(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @g_signal_connect_after(i32*, i32*, i32, i32) #1

declare dso_local i32 @g_signal_connect(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
