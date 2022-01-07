; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Mayaqua.c_CheckUnixTempDir.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Mayaqua.c_CheckUnixTempDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%I64u\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/tmp/.%s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Unable to use /tmp.\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckUnixTempDir() #0 {
  %1 = alloca [128 x i8], align 16
  %2 = alloca [64 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = call %struct.TYPE_2__* (...) @GetOsInfo()
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @OS_IS_UNIX(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %0
  %11 = call i8* (...) @SystemTime64()
  store i8* %11, i8** %3, align 8
  %12 = call i32 @MakeDir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @Format(i8* %13, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %18 = call i32 @Format(i8* %16, i32 128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %20 = call i32* @FileCreate(i8* %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %10
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %25 = call i32* @FileOpen(i8* %24, i32 0)
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = call i32 @Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %30 = call i32 @exit(i32 0) #3
  unreachable

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %10
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @FileClose(i32* %33)
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %36 = call i32 @FileDelete(i8* %35)
  br label %37

37:                                               ; preds = %32, %0
  ret void
}

declare dso_local i64 @OS_IS_UNIX(i32) #1

declare dso_local %struct.TYPE_2__* @GetOsInfo(...) #1

declare dso_local i8* @SystemTime64(...) #1

declare dso_local i32 @MakeDir(i8*) #1

declare dso_local i32 @Format(i8*, i32, i8*, i8*) #1

declare dso_local i32* @FileCreate(i8*) #1

declare dso_local i32* @FileOpen(i8*, i32) #1

declare dso_local i32 @Print(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @FileClose(i32*) #1

declare dso_local i32 @FileDelete(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
