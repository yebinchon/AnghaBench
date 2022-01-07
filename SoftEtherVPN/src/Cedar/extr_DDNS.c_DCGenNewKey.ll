; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_DDNS.c_DCGenNewKey.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_DDNS.c_DCGenNewKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@SHA1_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DCGenNewKey(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32, i32* @SHA1_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @SHA1_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %9, align 4
  br label %82

20:                                               ; preds = %1
  %21 = call %struct.TYPE_6__* (...) @NewBuf()
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %3, align 8
  %22 = mul nuw i64 4, %15
  %23 = trunc i64 %22 to i32
  %24 = call i32 @Rand(i32* %16, i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = mul nuw i64 4, %15
  %27 = trunc i64 %26 to i32
  %28 = call i32 @WriteBuf(%struct.TYPE_6__* %25, i32* %16, i32 %27)
  %29 = call i32 (...) @TickHighres64()
  store i32 %29, i32* %4, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @WriteBufInt64(%struct.TYPE_6__* %30, i32 %31)
  %33 = call i32 (...) @Tick64()
  store i32 %33, i32* %4, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @WriteBufInt64(%struct.TYPE_6__* %34, i32 %35)
  %37 = call i32 (...) @SystemTime64()
  store i32 %37, i32* %4, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @WriteBufInt64(%struct.TYPE_6__* %38, i32 %39)
  %41 = call i32 @GetCurrentMachineIpProcessHash(i32* %13)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = mul nuw i64 4, %11
  %44 = trunc i64 %43 to i32
  %45 = call i32 @WriteBuf(%struct.TYPE_6__* %42, i32* %13, i32 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @Sha1(i32* %46, i32 %49, i32 %52)
  %54 = mul nuw i64 4, %15
  %55 = trunc i64 %54 to i32
  %56 = call i32 @Rand(i32* %16, i32 %55)
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %76, %20
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @SHA1_SIZE, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %57
  %62 = load i32*, i32** %2, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %16, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = xor i32 %66, %70
  %72 = load i32*, i32** %2, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  br label %76

76:                                               ; preds = %61
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %57

79:                                               ; preds = %57
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = call i32 @FreeBuf(%struct.TYPE_6__* %80)
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %79, %19
  %83 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %9, align 4
  switch i32 %84, label %86 [
    i32 0, label %85
    i32 1, label %85
  ]

85:                                               ; preds = %82, %82
  ret void

86:                                               ; preds = %82
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_6__* @NewBuf(...) #2

declare dso_local i32 @Rand(i32*, i32) #2

declare dso_local i32 @WriteBuf(%struct.TYPE_6__*, i32*, i32) #2

declare dso_local i32 @TickHighres64(...) #2

declare dso_local i32 @WriteBufInt64(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @Tick64(...) #2

declare dso_local i32 @SystemTime64(...) #2

declare dso_local i32 @GetCurrentMachineIpProcessHash(i32*) #2

declare dso_local i32 @Sha1(i32*, i32, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
