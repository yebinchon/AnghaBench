; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetCurrentMachineIpProcessHashInternal.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetCurrentMachineIpProcessHashInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@REG_LOCAL_MACHINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetCurrentMachineIpProcessHashInternal(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i32, i32* @MAX_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  store i8* null, i8** %8, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 1, i32* %9, align 4
  br label %78

22:                                               ; preds = %1
  %23 = call %struct.TYPE_5__* (...) @NewBuf()
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %3, align 8
  %24 = trunc i64 %13 to i32
  %25 = call i32 @GetMachineHostName(i8* %15, i32 %24)
  %26 = call i32 @Trim(i8* %15)
  %27 = call i32 @StrUpper(i8* %15)
  %28 = trunc i64 %17 to i32
  %29 = call i32 @GetExeNameW(i8* %18, i32 %28)
  %30 = call i32 @UniTrim(i8* %18)
  %31 = call i32 @UniStrUpper(i8* %18)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = call i32 @StrSize(i8* %15)
  %34 = call i32 @WriteBuf(%struct.TYPE_5__* %32, i8* %15, i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = call i32 @UniStrSize(i8* %18)
  %37 = call i32 @WriteBuf(%struct.TYPE_5__* %35, i8* %18, i32 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @StrSize(i8* %40)
  %42 = call i32 @WriteBuf(%struct.TYPE_5__* %38, i8* %39, i32 %41)
  %43 = call i32* (...) @GetHostIPAddressList()
  store i32* %43, i32** %4, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %63

46:                                               ; preds = %22
  store i64 0, i64* %10, align 8
  br label %47

47:                                               ; preds = %59, %46
  %48 = load i64, i64* %10, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i64 @LIST_NUM(i32* %49)
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load i32*, i32** %4, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i8* @LIST_DATA(i32* %53, i64 %54)
  store i8* %55, i8** %11, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @WriteBuf(%struct.TYPE_5__* %56, i8* %57, i32 1)
  br label %59

59:                                               ; preds = %52
  %60 = load i64, i64* %10, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %10, align 8
  br label %47

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62, %22
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @FreeHostIPAddressList(i32* %64)
  %66 = load i8*, i8** %2, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @Sha1(i8* %66, i32 %69, i32 %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = call i32 @FreeBuf(%struct.TYPE_5__* %74)
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @Free(i8* %76)
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %63, %21
  %79 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %9, align 4
  switch i32 %80, label %82 [
    i32 0, label %81
    i32 1, label %81
  ]

81:                                               ; preds = %78, %78
  ret void

82:                                               ; preds = %78
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_5__* @NewBuf(...) #2

declare dso_local i32 @GetMachineHostName(i8*, i32) #2

declare dso_local i32 @Trim(i8*) #2

declare dso_local i32 @StrUpper(i8*) #2

declare dso_local i32 @GetExeNameW(i8*, i32) #2

declare dso_local i32 @UniTrim(i8*) #2

declare dso_local i32 @UniStrUpper(i8*) #2

declare dso_local i32 @WriteBuf(%struct.TYPE_5__*, i8*, i32) #2

declare dso_local i32 @StrSize(i8*) #2

declare dso_local i32 @UniStrSize(i8*) #2

declare dso_local i32* @GetHostIPAddressList(...) #2

declare dso_local i64 @LIST_NUM(i32*) #2

declare dso_local i8* @LIST_DATA(i32*, i64) #2

declare dso_local i32 @FreeHostIPAddressList(i32*) #2

declare dso_local i32 @Sha1(i8*, i32, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_5__*) #2

declare dso_local i32 @Free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
