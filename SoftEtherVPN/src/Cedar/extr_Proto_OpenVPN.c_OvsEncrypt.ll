; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsEncrypt.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsEncrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"OvsEncrypt(): CipherProcessAead() failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"OvsEncrypt(): CipherProcess() failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"OvsEncrypt(): MdProcess() failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @OvsEncrypt(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32* %2, i32* %3, i32* %4, i32* %5, i64 %6, i32* %7, i64 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i64 %6, i64* %17, align 8
  store i32* %7, i32** %18, align 8
  store i64 %8, i64* %19, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %24 = icmp eq %struct.TYPE_9__* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %9
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %32 = icmp eq %struct.TYPE_8__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %9
  store i64 0, i64* %10, align 8
  br label %112

34:                                               ; preds = %30, %25
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = load i64, i64* %17, align 8
  %46 = load i32*, i32** %18, align 8
  %47 = load i64, i64* %19, align 8
  %48 = call i64 @CipherProcessAead(%struct.TYPE_9__* %40, i32* %41, i32* %42, i32 16, i32* %43, i32* %44, i64 %45, i32* %46, i64 %47)
  store i64 %48, i64* %20, align 8
  %49 = load i64, i64* %20, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = call i32 @Debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %112

53:                                               ; preds = %39
  %54 = load i64, i64* %20, align 8
  store i64 %54, i64* %10, align 8
  br label %112

55:                                               ; preds = %34
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32*, i32** %16, align 8
  %70 = load i64, i64* %17, align 8
  %71 = call i64 @CipherProcess(%struct.TYPE_9__* %56, i32* %57, i32* %68, i32* %69, i64 %70)
  store i64 %71, i64* %22, align 8
  %72 = load i64, i64* %22, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %55
  %75 = call i32 @Debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %112

76:                                               ; preds = %55
  %77 = load i32*, i32** %15, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = load i32*, i32** %13, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @Copy(i32* %82, i32* %83, i32 %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %22, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* %22, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = load i32*, i32** %15, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i64, i64* %22, align 8
  %103 = call i64 @MdProcess(%struct.TYPE_8__* %94, i32* %95, i32* %101, i64 %102)
  store i64 %103, i64* %21, align 8
  %104 = load i64, i64* %21, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %76
  %107 = call i32 @Debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %112

108:                                              ; preds = %76
  %109 = load i64, i64* %22, align 8
  %110 = load i64, i64* %21, align 8
  %111 = add nsw i64 %109, %110
  store i64 %111, i64* %10, align 8
  br label %112

112:                                              ; preds = %108, %106, %74, %53, %51, %33
  %113 = load i64, i64* %10, align 8
  ret i64 %113
}

declare dso_local i64 @CipherProcessAead(%struct.TYPE_9__*, i32*, i32*, i32, i32*, i32*, i64, i32*, i64) #1

declare dso_local i32 @Debug(i8*) #1

declare dso_local i64 @CipherProcess(%struct.TYPE_9__*, i32*, i32*, i32*, i64) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i64 @MdProcess(%struct.TYPE_8__*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
