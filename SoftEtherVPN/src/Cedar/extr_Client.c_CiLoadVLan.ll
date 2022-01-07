; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiLoadVLan.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiLoadVLan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32*, i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"MacAddress\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CiLoadVLan(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [6 x i32], align 16
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %11 = load i32, i32* @MAX_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = icmp eq %struct.TYPE_17__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = icmp eq %struct.TYPE_16__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %2
  store i32 1, i32* %10, align 4
  br label %75

21:                                               ; preds = %17
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = trunc i64 %12 to i32
  %24 = call i32 @CfgGetStr(%struct.TYPE_16__* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %10, align 4
  br label %75

27:                                               ; preds = %21
  %28 = call %struct.TYPE_18__* @StrToBin(i8* %14)
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %8, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %30 = icmp eq %struct.TYPE_18__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 1, i32* %10, align 4
  br label %75

32:                                               ; preds = %27
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 6
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %39 = call i32 @FreeBuf(%struct.TYPE_18__* %38)
  store i32 1, i32* %10, align 4
  br label %75

40:                                               ; preds = %32
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @Copy(i32* %41, i32* %44, i32 6)
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %47 = call i32 @FreeBuf(%struct.TYPE_18__* %46)
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %49 = call i64 @IsZero(i32* %48, i32 6)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i32 1, i32* %10, align 4
  br label %75

52:                                               ; preds = %40
  %53 = call %struct.TYPE_15__* @ZeroMalloc(i32 16)
  store %struct.TYPE_15__* %53, %struct.TYPE_15__** %9, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %58 = call i32 @Copy(i32* %56, i32* %57, i32 6)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @StrCpy(i32 %61, i32 4, i32 %64)
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %67 = call i32 @CfgGetBool(%struct.TYPE_16__* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %74 = call i32 @Add(i32 %72, %struct.TYPE_15__* %73)
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %52, %51, %37, %31, %26, %20
  %76 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %10, align 4
  switch i32 %77, label %79 [
    i32 0, label %78
    i32 1, label %78
  ]

78:                                               ; preds = %75, %75
  ret void

79:                                               ; preds = %75
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CfgGetStr(%struct.TYPE_16__*, i8*, i8*, i32) #2

declare dso_local %struct.TYPE_18__* @StrToBin(i8*) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_18__*) #2

declare dso_local i32 @Copy(i32*, i32*, i32) #2

declare dso_local i64 @IsZero(i32*, i32) #2

declare dso_local %struct.TYPE_15__* @ZeroMalloc(i32) #2

declare dso_local i32 @StrCpy(i32, i32, i32) #2

declare dso_local i32 @CfgGetBool(%struct.TYPE_16__*, i8*) #2

declare dso_local i32 @Add(i32, %struct.TYPE_15__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
