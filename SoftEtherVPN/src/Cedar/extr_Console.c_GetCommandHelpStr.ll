; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_GetCommandHelpStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_GetCommandHelpStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"CMD_%s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"CMD_%s_ARGS\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"CMD_%s_HELP\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"CMD_UNKNOWM\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"CMD_UNKNOWN_ARGS\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"CMD_UNKNOWN_HELP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetCommandHelpStr(i8* %0, i32** %1, i32** %2, i32** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca [128 x i8], align 16
  %11 = alloca [128 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32** %3, i32*** %8, align 8
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @Format(i8* %12, i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @Format(i8* %15, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @Format(i8* %18, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %21 = load i32**, i32*** %6, align 8
  %22 = icmp ne i32** %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %4
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %25 = call i32* @_UU(i8* %24)
  %26 = load i32**, i32*** %6, align 8
  store i32* %25, i32** %26, align 8
  %27 = load i32**, i32*** %6, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @UniIsEmptyStr(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = call i32* @_UU(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32**, i32*** %6, align 8
  store i32* %32, i32** %33, align 8
  br label %34

34:                                               ; preds = %31, %23
  br label %35

35:                                               ; preds = %34, %4
  %36 = load i32**, i32*** %7, align 8
  %37 = icmp ne i32** %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %40 = call i32* @_UU(i8* %39)
  %41 = load i32**, i32*** %7, align 8
  store i32* %40, i32** %41, align 8
  %42 = load i32**, i32*** %7, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @UniIsEmptyStr(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i32**, i32*** %7, align 8
  store i32* %47, i32** %48, align 8
  br label %49

49:                                               ; preds = %46, %38
  br label %50

50:                                               ; preds = %49, %35
  %51 = load i32**, i32*** %8, align 8
  %52 = icmp ne i32** %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %55 = call i32* @_UU(i8* %54)
  %56 = load i32**, i32*** %8, align 8
  store i32* %55, i32** %56, align 8
  %57 = load i32**, i32*** %8, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @UniIsEmptyStr(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i32**, i32*** %8, align 8
  store i32* %62, i32** %63, align 8
  br label %64

64:                                               ; preds = %61, %53
  br label %65

65:                                               ; preds = %64, %50
  ret void
}

declare dso_local i32 @Format(i8*, i32, i8*, i8*) #1

declare dso_local i32* @_UU(i8*) #1

declare dso_local i64 @UniIsEmptyStr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
