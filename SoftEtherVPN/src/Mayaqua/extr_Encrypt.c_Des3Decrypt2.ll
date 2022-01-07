; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_Des3Decrypt2.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_Des3Decrypt2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@DES_IV_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Des3Decrypt2(i8* %0, i8* %1, i64 %2, %struct.TYPE_5__* %3, %struct.TYPE_5__* %4, %struct.TYPE_5__* %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %13, align 8
  store i8* %6, i8** %14, align 8
  %18 = load i32, i32* @DES_IV_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %7
  %25 = load i8*, i8** %9, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %10, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %32 = icmp eq %struct.TYPE_5__* %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %35 = icmp eq %struct.TYPE_5__* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %38 = icmp eq %struct.TYPE_5__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** %14, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %36, %33, %30, %27, %24, %7
  store i32 1, i32* %17, align 4
  br label %60

43:                                               ; preds = %39
  %44 = load i8*, i8** %14, align 8
  %45 = load i32, i32* @DES_IV_SIZE, align 4
  %46 = call i32 @Copy(i32* %21, i8* %44, i32 %45)
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @DES_ede3_cbc_encrypt(i8* %47, i8* %48, i64 %49, i32 %52, i32 %55, i32 %58, i32* %21, i32 0)
  store i32 0, i32* %17, align 4
  br label %60

60:                                               ; preds = %43, %42
  %61 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %17, align 4
  switch i32 %62, label %64 [
    i32 0, label %63
    i32 1, label %63
  ]

63:                                               ; preds = %60, %60
  ret void

64:                                               ; preds = %60
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Copy(i32*, i8*, i32) #2

declare dso_local i32 @DES_ede3_cbc_encrypt(i8*, i8*, i64, i32, i32, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
