; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NullLan.c_NullGenerateMacAddress.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NullLan.c_NullGenerateMacAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@SHA1_SIZE = common dso_local global i32 0, align 4
@MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NullGenerateMacAddress(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @SHA1_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @MAX_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  br label %47

22:                                               ; preds = %3
  %23 = call %struct.TYPE_6__* (...) @NewBuf()
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %10, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @WriteBufInt(%struct.TYPE_6__* %24, i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @WriteBufInt(%struct.TYPE_6__* %27, i32 %28)
  %30 = trunc i64 %17 to i32
  %31 = call i32 @GetMachineHostName(i8* %18, i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = call i32 @WriteBufStr(%struct.TYPE_6__* %32, i8* %18)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @Sha1(i32* %15, i32 %36, i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %42 = call i32 @FreeBuf(%struct.TYPE_6__* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @Copy(i32* %43, i32* %15, i32 6)
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 126, i32* %46, align 4
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %22, %21
  %48 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %11, align 4
  switch i32 %49, label %51 [
    i32 0, label %50
    i32 1, label %50
  ]

50:                                               ; preds = %47, %47
  ret void

51:                                               ; preds = %47
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_6__* @NewBuf(...) #2

declare dso_local i32 @WriteBufInt(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @GetMachineHostName(i8*, i32) #2

declare dso_local i32 @WriteBufStr(%struct.TYPE_6__*, i8*) #2

declare dso_local i32 @Sha1(i32*, i32, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_6__*) #2

declare dso_local i32 @Copy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
