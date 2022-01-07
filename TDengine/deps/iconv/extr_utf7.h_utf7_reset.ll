; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf7.h_utf7_reset.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf7.h_utf7_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32)* @utf7_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf7_reset(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = and i32 %15, 3
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %81

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 3
  %21 = icmp sge i32 %20, 2
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %29, i32* %4, align 4
  br label %82

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 3
  %33 = icmp sge i32 %32, 2
  br i1 %33, label %34, label %77

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, -4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ult i32 %37, 26
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = add i32 %40, 65
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %11, align 1
  br label %73

43:                                               ; preds = %34
  %44 = load i32, i32* %10, align 4
  %45 = icmp ult i32 %44, 52
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = sub i32 %47, 26
  %49 = add i32 %48, 97
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %11, align 1
  br label %72

51:                                               ; preds = %43
  %52 = load i32, i32* %10, align 4
  %53 = icmp ult i32 %52, 62
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  %56 = sub i32 %55, 52
  %57 = add i32 %56, 48
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %11, align 1
  br label %71

59:                                               ; preds = %51
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 62
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i8 43, i8* %11, align 1
  br label %70

63:                                               ; preds = %59
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 63
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i8 47, i8* %11, align 1
  br label %69

67:                                               ; preds = %63
  %68 = call i32 (...) @abort() #2
  unreachable

69:                                               ; preds = %66
  br label %70

70:                                               ; preds = %69, %62
  br label %71

71:                                               ; preds = %70, %54
  br label %72

72:                                               ; preds = %71, %46
  br label %73

73:                                               ; preds = %72, %39
  %74 = load i8, i8* %11, align 1
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %6, align 8
  store i8 %74, i8* %75, align 1
  br label %77

77:                                               ; preds = %73, %30
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %6, align 8
  store i8 45, i8* %78, align 1
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %4, align 4
  br label %82

81:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %77, %28
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
