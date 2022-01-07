; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetIP46Ex.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetIP46Ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetIP46Ex(i32* %0, i32* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load i32*, i32** %8, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %9, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %5
  store i32 0, i32* %6, align 4
  br label %89

25:                                               ; preds = %21
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @ZeroIP4(i32* %26)
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @ZeroIP6(i32* %28)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = call i64 @GetIP6Ex(i32* %12, i8* %30, i32 %31, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 1, i32* %14, align 4
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = call i64 @GetIP4Ex(i32* %13, i8* %37, i32 %38, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 1, i32* %15, align 4
  br label %43

43:                                               ; preds = %42, %36
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = call i64 @IsIP4(i32* %12)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @Copy(i32* %50, i32* %12, i32 4)
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %43
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = call i64 @IsIP4(i32* %13)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @Copy(i32* %60, i32* %13, i32 4)
  br label %62

62:                                               ; preds = %59, %56
  %63 = call i64 @IsIP6(i32* %13)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @Copy(i32* %66, i32* %13, i32 4)
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %53
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = call i64 @IsIP6(i32* %12)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @Copy(i32* %76, i32* %12, i32 4)
  br label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %78, %69
  %80 = load i32*, i32** %7, align 8
  %81 = call i64 @IsZeroIp(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32*, i32** %8, align 8
  %85 = call i64 @IsZeroIp(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 0, i32* %6, align 4
  br label %89

88:                                               ; preds = %83, %79
  store i32 1, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %87, %24
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @ZeroIP4(i32*) #1

declare dso_local i32 @ZeroIP6(i32*) #1

declare dso_local i64 @GetIP6Ex(i32*, i8*, i32, i32*) #1

declare dso_local i64 @GetIP4Ex(i32*, i8*, i32, i32*) #1

declare dso_local i64 @IsIP4(i32*) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i64 @IsIP6(i32*) #1

declare dso_local i64 @IsZeroIp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
