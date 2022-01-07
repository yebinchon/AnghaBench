; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_GenHubIpAddress.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_GenHubIpAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@MAX_SIZE = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GenHubIpAddress(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @MAX_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @MAX_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %17 = load i32, i32* @SHA1_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %2
  store i32 1, i32* %9, align 4
  br label %67

26:                                               ; preds = %22
  %27 = trunc i64 %11 to i32
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @StrCpy(i8* %13, i32 %27, i8* %28)
  %30 = call i32 @Trim(i8* %13)
  %31 = call i32 @GenerateMachineUniqueHash(i32* %19)
  %32 = trunc i64 %15 to i32
  %33 = mul nuw i64 4, %18
  %34 = trunc i64 %33 to i32
  %35 = call i32 @BinToStr(i8* %16, i32 %32, i32* %19, i32 %34)
  %36 = trunc i64 %15 to i32
  %37 = call i32 @StrCat(i8* %16, i32 %36, i8* %13)
  %38 = call i32 @StrUpper(i8* %16)
  %39 = call i32 @StrLen(i8* %16)
  %40 = call i32 @Sha0(i32* %19, i8* %16, i32 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = call i32 @Zero(%struct.TYPE_4__* %41, i32 8)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 172, i32* %46, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 31, i32* %50, align 4
  %51 = getelementptr inbounds i32, i32* %19, i64 0
  %52 = load i32, i32* %51, align 16
  %53 = srem i32 %52, 254
  %54 = add nsw i32 %53, 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32 %54, i32* %58, align 4
  %59 = getelementptr inbounds i32, i32* %19, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = srem i32 %60, 254
  %62 = add nsw i32 %61, 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  store i32 %62, i32* %66, align 4
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %26, %25
  %68 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %9, align 4
  switch i32 %69, label %71 [
    i32 0, label %70
    i32 1, label %70
  ]

70:                                               ; preds = %67, %67
  ret void

71:                                               ; preds = %67
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @Trim(i8*) #2

declare dso_local i32 @GenerateMachineUniqueHash(i32*) #2

declare dso_local i32 @BinToStr(i8*, i32, i32*, i32) #2

declare dso_local i32 @StrCat(i8*, i32, i8*) #2

declare dso_local i32 @StrUpper(i8*) #2

declare dso_local i32 @Sha0(i32*, i8*, i32) #2

declare dso_local i32 @StrLen(i8*) #2

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
