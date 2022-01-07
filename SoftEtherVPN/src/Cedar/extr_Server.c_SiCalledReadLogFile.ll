; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalledReadLogFile.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalledReadLogFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"FilePath\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SiCalledReadLogFile(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %2
  store i32* null, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %37

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  %24 = trunc i64 %13 to i32
  %25 = call i32 @PackGetStr(i32* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @PackGetInt(i32* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %10, align 4
  %28 = call i32 @Zero(i32* %6, i32 4)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @SiReadLocalLogFile(i32* %29, i8* %15, i32 %30, i32* %6)
  %32 = call i32* (...) @NewPack()
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @OutRpcReadLogFile(i32* %33, i32* %6)
  %35 = call i32 @FreeRpcReadLogFile(i32* %6)
  %36 = load i32*, i32** %7, align 8
  store i32* %36, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %37

37:                                               ; preds = %22, %21
  %38 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i32*, i32** %3, align 8
  ret i32* %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PackGetStr(i32*, i8*, i8*, i32) #2

declare dso_local i32 @PackGetInt(i32*, i8*) #2

declare dso_local i32 @Zero(i32*, i32) #2

declare dso_local i32 @SiReadLocalLogFile(i32*, i8*, i32, i32*) #2

declare dso_local i32* @NewPack(...) #2

declare dso_local i32 @OutRpcReadLogFile(i32*, i32*) #2

declare dso_local i32 @FreeRpcReadLogFile(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
