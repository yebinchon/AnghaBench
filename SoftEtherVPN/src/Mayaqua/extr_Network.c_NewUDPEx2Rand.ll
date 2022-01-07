; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_NewUDPEx2Rand.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_NewUDPEx2Rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@RAND_UDP_PORT_DEFAULT_NUM_RETRY = common dso_local global i64 0, align 8
@SHA1_SIZE = common dso_local global i32 0, align 4
@RAND_UDP_PORT_START = common dso_local global i64 0, align 8
@RAND_UDP_PORT_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @NewUDPEx2Rand(i32 %0, i32* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i64, i64* %10, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %5
  store i32* null, i32** %6, align 8
  br label %86

25:                                               ; preds = %21
  %26 = load i64, i64* %11, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64, i64* @RAND_UDP_PORT_DEFAULT_NUM_RETRY, align 8
  store i64 %29, i64* %11, align 8
  br label %30

30:                                               ; preds = %28, %25
  store i64 0, i64* %12, align 8
  br label %31

31:                                               ; preds = %79, %30
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %11, align 8
  %34 = add nsw i64 %33, 1
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %31
  %37 = call %struct.TYPE_6__* (...) @NewBuf()
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %13, align 8
  %38 = load i32, i32* @SHA1_SIZE, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %14, align 8
  %41 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @WriteBuf(%struct.TYPE_6__* %42, i8* %43, i64 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @WriteBufInt(%struct.TYPE_6__* %46, i64 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @Sha1(i32* %41, i32 %51, i32 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %57 = call i32 @FreeBuf(%struct.TYPE_6__* %56)
  %58 = call i64 @READ_UINT(i32* %41)
  store i64 %58, i64* %16, align 8
  %59 = load i64, i64* @RAND_UDP_PORT_START, align 8
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* @RAND_UDP_PORT_END, align 8
  %62 = load i64, i64* @RAND_UDP_PORT_START, align 8
  %63 = sub nsw i64 %61, %62
  %64 = srem i64 %60, %63
  %65 = add nsw i64 %59, %64
  store i64 %65, i64* %16, align 8
  %66 = load i64, i64* %16, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = call i32* @NewUDPEx2(i64 %66, i32 %67, i32* %68)
  store i32* %69, i32** %17, align 8
  %70 = load i32*, i32** %17, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %36
  %73 = load i32*, i32** %17, align 8
  store i32* %73, i32** %6, align 8
  store i32 1, i32* %18, align 4
  br label %75

74:                                               ; preds = %36
  store i32 0, i32* %18, align 4
  br label %75

75:                                               ; preds = %74, %72
  %76 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %18, align 4
  switch i32 %77, label %88 [
    i32 0, label %78
    i32 1, label %86
  ]

78:                                               ; preds = %75
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %12, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %12, align 8
  br label %31

82:                                               ; preds = %31
  %83 = load i32, i32* %7, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = call i32* @NewUDPEx2(i64 0, i32 %83, i32* %84)
  store i32* %85, i32** %6, align 8
  br label %86

86:                                               ; preds = %82, %75, %24
  %87 = load i32*, i32** %6, align 8
  ret i32* %87

88:                                               ; preds = %75
  unreachable
}

declare dso_local %struct.TYPE_6__* @NewBuf(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @WriteBuf(%struct.TYPE_6__*, i8*, i64) #1

declare dso_local i32 @WriteBufInt(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @Sha1(i32*, i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_6__*) #1

declare dso_local i64 @READ_UINT(i32*) #1

declare dso_local i32* @NewUDPEx2(i64, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
