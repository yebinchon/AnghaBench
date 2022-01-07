; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IkeCalcNatDetectHash.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IkeCalcNatDetectHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32*, i32* }

@IKE_MAX_HASH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @IkeCalcNatDetectHash(i32* %0, %struct.TYPE_15__* %1, i32 %2, i32 %3, %struct.TYPE_14__* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* @IKE_MAX_HASH_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %16, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %17, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %6
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %27 = icmp eq %struct.TYPE_14__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %30 = icmp eq %struct.TYPE_15__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %25, %6
  %32 = call %struct.TYPE_16__* (...) @NewBuf()
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %7, align 8
  store i32 1, i32* %18, align 4
  br label %75

33:                                               ; preds = %28
  %34 = call %struct.TYPE_16__* (...) @NewBuf()
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %14, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @WriteBufInt64(%struct.TYPE_16__* %35, i32 %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @WriteBufInt64(%struct.TYPE_16__* %38, i32 %39)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %42 = call i64 @IsIP6(%struct.TYPE_14__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @WriteBuf(%struct.TYPE_16__* %45, i32* %48, i32 8)
  br label %56

50:                                               ; preds = %33
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @WriteBuf(%struct.TYPE_16__* %51, i32* %54, i32 8)
  br label %56

56:                                               ; preds = %50, %44
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @Endian16(i32 %57)
  store i32 %58, i32* %15, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %60 = call i32 @WriteBuf(%struct.TYPE_16__* %59, i32* %15, i32 4)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @IkeHash(%struct.TYPE_15__* %61, i32* %22, i32 %64, i32 %67)
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %70 = call i32 @FreeBuf(%struct.TYPE_16__* %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.TYPE_16__* @MemToBuf(i32* %22, i32 %73)
  store %struct.TYPE_16__* %74, %struct.TYPE_16__** %7, align 8
  store i32 1, i32* %18, align 4
  br label %75

75:                                               ; preds = %56, %31
  %76 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  ret %struct.TYPE_16__* %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_16__* @NewBuf(...) #2

declare dso_local i32 @WriteBufInt64(%struct.TYPE_16__*, i32) #2

declare dso_local i64 @IsIP6(%struct.TYPE_14__*) #2

declare dso_local i32 @WriteBuf(%struct.TYPE_16__*, i32*, i32) #2

declare dso_local i32 @Endian16(i32) #2

declare dso_local i32 @IkeHash(%struct.TYPE_15__*, i32*, i32, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_16__*) #2

declare dso_local %struct.TYPE_16__* @MemToBuf(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
