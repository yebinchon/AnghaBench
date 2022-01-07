; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IkeExpandKeySize.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IkeExpandKeySize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i8* }
%struct.TYPE_10__ = type { i64 }

@IKE_MAX_HASH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @IkeExpandKeySize(%struct.TYPE_10__* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i32, i32* @IKE_MAX_HASH_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = icmp eq %struct.TYPE_10__* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22, %4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  store i32 1, i32* %15, align 4
  br label %69

29:                                               ; preds = %25
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call %struct.TYPE_11__* @MemToBuf(i8* %34, i64 %35)
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %5, align 8
  store i32 1, i32* %15, align 4
  br label %69

37:                                               ; preds = %29
  %38 = getelementptr inbounds i64, i64* %19, i64 0
  store i64 0, i64* %38, align 16
  store i64 1, i64* %14, align 8
  %39 = call %struct.TYPE_11__* (...) @NewBuf()
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %10, align 8
  br label %40

40:                                               ; preds = %54, %37
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %14, align 8
  %45 = call i32 @IkeHMac(%struct.TYPE_10__* %41, i64* %19, i8* %42, i64 %43, i64* %19, i64 %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @WriteBuf(%struct.TYPE_11__* %46, i64* %19, i64 %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %14, align 8
  br label %54

54:                                               ; preds = %40
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %40, label %60

60:                                               ; preds = %54
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call %struct.TYPE_11__* @MemToBuf(i8* %63, i64 %64)
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %11, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %67 = call i32 @FreeBuf(%struct.TYPE_11__* %66)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %68, %struct.TYPE_11__** %5, align 8
  store i32 1, i32* %15, align 4
  br label %69

69:                                               ; preds = %60, %33, %28
  %70 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_11__* @MemToBuf(i8*, i64) #2

declare dso_local %struct.TYPE_11__* @NewBuf(...) #2

declare dso_local i32 @IkeHMac(%struct.TYPE_10__*, i64*, i8*, i64, i64*, i64) #2

declare dso_local i32 @WriteBuf(%struct.TYPE_11__*, i64*, i64) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_11__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
