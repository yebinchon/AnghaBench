; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Wpc.c_WpcGeneratePacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Wpc.c_WpcGeneratePacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32* }

@SHA1_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PACK\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HASH\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"CERT\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SIGN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @WpcGeneratePacket(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [128 x i32], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32, i32* @SHA1_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  store i32 1, i32* %14, align 4
  br label %95

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = call %struct.TYPE_10__* @PackToBuf(i32* %24)
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %10, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @Sha1(i32* %19, i32* %28, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %23
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i32*, i32** %6, align 8
  %40 = call %struct.TYPE_10__* @XToBuf(i32* %39, i32 0)
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %11, align 8
  %41 = getelementptr inbounds [128 x i32], [128 x i32]* %15, i64 0, i64 0
  %42 = mul nuw i64 4, %17
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @RsaSign(i32* %41, i32* %19, i32 %43, i32* %44)
  %46 = call %struct.TYPE_10__* (...) @NewBuf()
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %12, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %48 = getelementptr inbounds [128 x i32], [128 x i32]* %15, i64 0, i64 0
  %49 = call i32 @WriteBuf(%struct.TYPE_10__* %47, i32* %48, i32 512)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %51 = call i32 @SeekBuf(%struct.TYPE_10__* %50, i32 0, i32 0)
  br label %52

52:                                               ; preds = %38, %35, %23
  %53 = call %struct.TYPE_10__* (...) @NewBuf()
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %13, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @WpcAddDataEntryBin(%struct.TYPE_10__* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %57, i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %63 = mul nuw i64 4, %17
  %64 = trunc i64 %63 to i32
  %65 = call i32 @WpcAddDataEntryBin(%struct.TYPE_10__* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %19, i32 %64)
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %67 = icmp ne %struct.TYPE_10__* %66, null
  br i1 %67, label %68, label %85

68:                                               ; preds = %52
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @WpcAddDataEntryBin(%struct.TYPE_10__* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %72, i32 %75)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @WpcAddDataEntryBin(%struct.TYPE_10__* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %80, i32 %83)
  br label %85

85:                                               ; preds = %68, %52
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %87 = call i32 @FreeBuf(%struct.TYPE_10__* %86)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %89 = call i32 @FreeBuf(%struct.TYPE_10__* %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %91 = call i32 @FreeBuf(%struct.TYPE_10__* %90)
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %93 = call i32 @SeekBuf(%struct.TYPE_10__* %92, i32 0, i32 0)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %94, %struct.TYPE_10__** %4, align 8
  store i32 1, i32* %14, align 4
  br label %95

95:                                               ; preds = %85, %22
  %96 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_10__* @PackToBuf(i32*) #2

declare dso_local i32 @Sha1(i32*, i32*, i32) #2

declare dso_local %struct.TYPE_10__* @XToBuf(i32*, i32) #2

declare dso_local i32 @RsaSign(i32*, i32*, i32, i32*) #2

declare dso_local %struct.TYPE_10__* @NewBuf(...) #2

declare dso_local i32 @WriteBuf(%struct.TYPE_10__*, i32*, i32) #2

declare dso_local i32 @SeekBuf(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @WpcAddDataEntryBin(%struct.TYPE_10__*, i8*, i32*, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
