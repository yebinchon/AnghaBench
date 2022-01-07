; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_NewUDPEx2RandMachineAndExePath.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_NewUDPEx2RandMachineAndExePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4
@REG_LOCAL_MACHINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @NewUDPEx2RandMachineAndExePath(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @MAX_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  store i8* null, i8** %13, align 8
  %22 = load i32, i32* @SHA1_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  %25 = call %struct.TYPE_6__* (...) @NewBuf()
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %9, align 8
  %26 = trunc i64 %16 to i32
  %27 = call i32 @GetMachineHostName(i8* %18, i32 %26)
  %28 = call i32 @Trim(i8* %18)
  %29 = call i32 @StrUpper(i8* %18)
  %30 = trunc i64 %20 to i32
  %31 = call i32 @GetExeNameW(i8* %21, i32 %30)
  %32 = call i32 @UniTrim(i8* %21)
  %33 = call i32 @UniStrUpper(i8* %21)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %35 = call i32 @StrSize(i8* %18)
  %36 = call i32 @WriteBuf(%struct.TYPE_6__* %34, i8* %18, i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = call i32 @UniStrSize(i8* %21)
  %39 = call i32 @WriteBuf(%struct.TYPE_6__* %37, i8* %21, i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 @StrSize(i8* %42)
  %44 = call i32 @WriteBuf(%struct.TYPE_6__* %40, i8* %41, i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @WriteBufChar(%struct.TYPE_6__* %45, i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @Sha1(i32* %24, i32 %50, i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %56 = call i32 @FreeBuf(%struct.TYPE_6__* %55)
  %57 = load i8*, i8** %13, align 8
  %58 = call i32 @Free(i8* %57)
  %59 = load i32, i32* %5, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = mul nuw i64 4, %23
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* %7, align 4
  %64 = call i32* @NewUDPEx2Rand(i32 %59, i32* %60, i32* %24, i32 %62, i32 %63)
  %65 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %65)
  ret i32* %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_6__* @NewBuf(...) #2

declare dso_local i32 @GetMachineHostName(i8*, i32) #2

declare dso_local i32 @Trim(i8*) #2

declare dso_local i32 @StrUpper(i8*) #2

declare dso_local i32 @GetExeNameW(i8*, i32) #2

declare dso_local i32 @UniTrim(i8*) #2

declare dso_local i32 @UniStrUpper(i8*) #2

declare dso_local i32 @WriteBuf(%struct.TYPE_6__*, i8*, i32) #2

declare dso_local i32 @StrSize(i8*) #2

declare dso_local i32 @UniStrSize(i8*) #2

declare dso_local i32 @WriteBufChar(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @Sha1(i32*, i32, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_6__*) #2

declare dso_local i32 @Free(i8*) #2

declare dso_local i32* @NewUDPEx2Rand(i32, i32*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
