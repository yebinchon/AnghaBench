; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetHostName.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetHostName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GetHostNameThread = common dso_local global i32 0, align 4
@TIMEOUT_HOSTNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetHostName(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %84

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @GetHostCache(i8* %18, i32 %19, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @IsEmptyStr(i8* %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %84

28:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %84

29:                                               ; preds = %17
  %30 = call i32* @ZeroMalloc(i32 4)
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @Copy(i32* %31, i32* %32, i32 4)
  %34 = load i32, i32* @GetHostNameThread, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = call i32* @NewThread(i32 %34, i32* %35)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @WaitThreadInit(i32* %37)
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* @TIMEOUT_HOSTNAME, align 4
  %41 = call i32 @WaitThread(i32* %39, i32 %40)
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @ReleaseThread(i32* %42)
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @GetHostCache(i8* %44, i32 %45, i32* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %29
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @IsIP4(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @GetNetBiosName(i8* %55, i32 %56, i32* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32*, i32** %7, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @AddHostCache(i32* %62, i8* %63)
  br label %65

65:                                               ; preds = %61, %54
  br label %66

66:                                               ; preds = %65, %50
  br label %73

67:                                               ; preds = %29
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @IsEmptyStr(i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %71, %67
  br label %73

73:                                               ; preds = %72, %66
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @AddHostCache(i32* %77, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @StrCpy(i8* %79, i32 %80, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %76, %73
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %28, %27, %16
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @GetHostCache(i8*, i32, i32*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i32* @ZeroMalloc(i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32* @NewThread(i32, i32*) #1

declare dso_local i32 @WaitThreadInit(i32*) #1

declare dso_local i32 @WaitThread(i32*, i32) #1

declare dso_local i32 @ReleaseThread(i32*) #1

declare dso_local i64 @IsIP4(i32*) #1

declare dso_local i32 @GetNetBiosName(i8*, i32, i32*) #1

declare dso_local i32 @AddHostCache(i32*, i8*) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
