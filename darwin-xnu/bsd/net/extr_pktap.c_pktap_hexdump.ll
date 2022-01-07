; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pktap.c_pktap_hexdump.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pktap.c_pktap_hexdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pktap_log = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64)* @pktap_hexdump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pktap_hexdump(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i32, i32* @pktap_log, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %93

17:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %84, %17
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %87

22:                                               ; preds = %18
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 240
  %29 = ashr i32 %28, 4
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %9, align 1
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 15
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %10, align 1
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %22
  %41 = load i64, i64* %8, align 8
  %42 = urem i64 %41, 32
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %53

46:                                               ; preds = %40
  %47 = load i64, i64* %8, align 8
  %48 = urem i64 %47, 4
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %46
  br label %53

53:                                               ; preds = %52, %44
  br label %54

54:                                               ; preds = %53, %22
  %55 = load i8, i8* %9, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp slt i32 %56, 10
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i8, i8* %9, align 1
  %60 = zext i8 %59 to i32
  %61 = add nsw i32 %60, 48
  br label %67

62:                                               ; preds = %54
  %63 = load i8, i8* %9, align 1
  %64 = zext i8 %63 to i32
  %65 = sub nsw i32 %64, 10
  %66 = add nsw i32 %65, 97
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi i32 [ %61, %58 ], [ %66, %62 ]
  %69 = load i8, i8* %10, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp slt i32 %70, 10
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i8, i8* %10, align 1
  %74 = zext i8 %73 to i32
  %75 = add nsw i32 %74, 48
  br label %81

76:                                               ; preds = %67
  %77 = load i8, i8* %10, align 1
  %78 = zext i8 %77 to i32
  %79 = sub nsw i32 %78, 10
  %80 = add nsw i32 %79, 97
  br label %81

81:                                               ; preds = %76, %72
  %82 = phi i32 [ %75, %72 ], [ %80, %76 ]
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %82)
  br label %84

84:                                               ; preds = %81
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %8, align 8
  br label %18

87:                                               ; preds = %18
  %88 = load i64, i64* %8, align 8
  %89 = urem i64 %88, 32
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %16, %91, %87
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
