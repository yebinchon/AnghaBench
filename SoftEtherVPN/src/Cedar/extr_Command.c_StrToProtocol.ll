; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_StrToProtocol.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_StrToProtocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@IP_PROTO_TCP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@IP_PROTO_UDP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"icmpv4\00", align 1
@IP_PROTO_ICMPV4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"icmpv6\00", align 1
@IP_PROTO_ICMPV6 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StrToProtocol(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @IsEmptyStr(i8* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @StartWith(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %61

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @StartWith(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @IP_PROTO_TCP, align 4
  store i32 %18, i32* %2, align 4
  br label %61

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @StartWith(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @IP_PROTO_UDP, align 4
  store i32 %24, i32* %2, align 4
  br label %61

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @StartWith(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @IP_PROTO_ICMPV4, align 4
  store i32 %30, i32* %2, align 4
  br label %61

31:                                               ; preds = %25
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @StartWith(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @IP_PROTO_ICMPV6, align 4
  store i32 %36, i32* %2, align 4
  br label %61

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @ToInt(i8* %42)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @StrCmpi(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %61

50:                                               ; preds = %45
  %51 = load i32, i32* @INFINITE, align 4
  store i32 %51, i32* %2, align 4
  br label %61

52:                                               ; preds = %41
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @ToInt(i8* %53)
  %55 = icmp sge i32 %54, 256
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @INFINITE, align 4
  store i32 %57, i32* %2, align 4
  br label %61

58:                                               ; preds = %52
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @ToInt(i8* %59)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %56, %50, %49, %35, %29, %23, %17, %12, %7
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @IsEmptyStr(i8*) #1

declare dso_local i64 @StartWith(i8*, i8*) #1

declare dso_local i32 @ToInt(i8*) #1

declare dso_local i64 @StrCmpi(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
