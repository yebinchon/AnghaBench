; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_TcpFlagStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_TcpFlagStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TCP_FIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"FIN+\00", align 1
@TCP_SYN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"SYN+\00", align 1
@TCP_RST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"RST+\00", align 1
@TCP_PSH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"PSH+\00", align 1
@TCP_ACK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"ACK+\00", align 1
@TCP_URG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"URG+\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @TcpFlagStr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @MAX_SIZE, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = trunc i64 %6 to i32
  %10 = call i32 @StrCpy(i8* %8, i32 %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @TCP_FIN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = trunc i64 %6 to i32
  %17 = call i32 @StrCat(i8* %8, i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @TCP_SYN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = trunc i64 %6 to i32
  %25 = call i32 @StrCat(i8* %8, i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @TCP_RST, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = trunc i64 %6 to i32
  %33 = call i32 @StrCat(i8* %8, i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @TCP_PSH, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = trunc i64 %6 to i32
  %41 = call i32 @StrCat(i8* %8, i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @TCP_ACK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = trunc i64 %6 to i32
  %49 = call i32 @StrCat(i8* %8, i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @TCP_URG, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = trunc i64 %6 to i32
  %57 = call i32 @StrCat(i8* %8, i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %50
  %59 = call i32 @StrLen(i8* %8)
  %60 = icmp sge i32 %59, 1
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = call i32 @StrLen(i8* %8)
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %8, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 43
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = call i32 @StrLen(i8* %8)
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %8, i64 %72
  store i8 0, i8* %73, align 1
  br label %74

74:                                               ; preds = %69, %61
  br label %75

75:                                               ; preds = %74, %58
  %76 = call i8* @CopyStr(i8* %8)
  %77 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %77)
  ret i8* %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @StrCat(i8*, i32, i8*) #2

declare dso_local i32 @StrLen(i8*) #2

declare dso_local i8* @CopyStr(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
