; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_Internal_HMac.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_Internal_HMac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i8* }

@.str = private unnamed_addr constant [37 x i8] c"Internal_HMac(): SetMdKey() failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Internal_HMac(): MdProcess() returned 0!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i8*, i64, i8*, i64)* @Internal_HMac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Internal_HMac(i32* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %6
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %10, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %11, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** %12, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i64, i64* %13, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %24, %21, %18, %6
  store i64 0, i64* %7, align 8
  br label %71

34:                                               ; preds = %30, %27
  %35 = call i8* @ZeroMalloc(i32 24)
  %36 = bitcast i8* %35 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %14, align 8
  %37 = call i8* @ZeroMalloc(i32 4)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @HMAC_CTX_init(i8* %42)
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @SetMdKey(%struct.TYPE_5__* %49, i8* %50, i64 %51)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %34
  %55 = call i32 @Debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %67

56:                                               ; preds = %34
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call i64 @MdProcess(%struct.TYPE_5__* %57, i8* %58, i8* %59, i64 %60)
  store i64 %61, i64* %15, align 8
  %62 = load i64, i64* %15, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = call i32 @Debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %56
  br label %67

67:                                               ; preds = %66, %54
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %69 = call i32 @FreeMd(%struct.TYPE_5__* %68)
  %70 = load i64, i64* %15, align 8
  store i64 %70, i64* %7, align 8
  br label %71

71:                                               ; preds = %67, %33
  %72 = load i64, i64* %7, align 8
  ret i64 %72
}

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @HMAC_CTX_init(i8*) #1

declare dso_local i32 @SetMdKey(%struct.TYPE_5__*, i8*, i64) #1

declare dso_local i32 @Debug(i8*) #1

declare dso_local i64 @MdProcess(%struct.TYPE_5__*, i8*, i8*, i64) #1

declare dso_local i32 @FreeMd(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
