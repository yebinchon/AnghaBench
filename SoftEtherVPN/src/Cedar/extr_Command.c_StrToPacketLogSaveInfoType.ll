; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_StrToPacketLogSaveInfoType.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_StrToPacketLogSaveInfoType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@PACKET_LOG_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@PACKET_LOG_HEADER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@PACKET_LOG_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StrToPacketLogSaveInfoType(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @INFINITE, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @INFINITE, align 4
  store i32 %9, i32* %2, align 4
  br label %40

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @StartWith(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @IsEmptyStr(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %10
  %19 = load i32, i32* @PACKET_LOG_NONE, align 4
  store i32 %19, i32* %4, align 4
  br label %38

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @StartWith(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @PACKET_LOG_HEADER, align 4
  store i32 %25, i32* %4, align 4
  br label %37

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 @StartWith(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8
  %32 = call i64 @StartWith(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %26
  %35 = load i32, i32* @PACKET_LOG_ALL, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %30
  br label %37

37:                                               ; preds = %36, %24
  br label %38

38:                                               ; preds = %37, %18
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %8
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @StartWith(i8*, i8*) #1

declare dso_local i64 @IsEmptyStr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
