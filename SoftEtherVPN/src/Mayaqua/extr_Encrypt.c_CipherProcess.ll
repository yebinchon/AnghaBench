; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_CipherProcess.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_CipherProcess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CipherProcess(%struct.TYPE_3__* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  store i32 %14, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %5
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @Copy(i8* %27, i8* %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %6, align 4
  br label %86

33:                                               ; preds = %17, %5
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = icmp eq %struct.TYPE_3__* %34, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %8, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** %9, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %10, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %42, %39, %36, %33
  store i32 0, i32* %6, align 4
  br label %86

49:                                               ; preds = %45
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @EVP_CipherInit(i32 %52, i32* null, i32* null, i8* %53, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %86

60:                                               ; preds = %49
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i64 @EVP_CipherUpdate(i32 %63, i8* %64, i32* %12, i8* %65, i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %86

70:                                               ; preds = %60
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = bitcast i8* %74 to i32*
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i64 @EVP_CipherFinal(i32 %73, i32* %78, i32* %13)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  store i32 0, i32* %6, align 4
  br label %86

82:                                               ; preds = %70
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %82, %81, %69, %59, %48, %31
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @Copy(i8*, i8*, i32) #1

declare dso_local i64 @EVP_CipherInit(i32, i32*, i32*, i8*, i32) #1

declare dso_local i64 @EVP_CipherUpdate(i32, i8*, i32*, i8*, i32) #1

declare dso_local i64 @EVP_CipherFinal(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
