; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Bridge.c_GetEthDeviceHash.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Bridge.c_GetEthDeviceHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32 }

@SHA1_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetEthDeviceHash() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %8 = call %struct.TYPE_10__* @MsCreateAdapterListEx(i32 1)
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %2, align 8
  %9 = load i32, i32* @SHA1_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %13, align 16
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = icmp ne %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %0
  store i64 0, i64* %4, align 8
  br label %17

17:                                               ; preds = %34, %16
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %28
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @StrCat(i8* %24, i32 4096, i32 %32)
  br label %34

34:                                               ; preds = %23
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %4, align 8
  br label %17

37:                                               ; preds = %17
  br label %38

38:                                               ; preds = %37, %0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = call i32 @MsFreeAdapterList(%struct.TYPE_10__* %39)
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %42 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %43 = call i32 @StrLen(i8* %42)
  %44 = call i32 @Sha0(i32* %12, i8* %41, i32 %43)
  %45 = call i32 @Copy(i64* %3, i32* %12, i32 8)
  %46 = load i64, i64* %3, align 8
  %47 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %47)
  ret i64 %46
}

declare dso_local %struct.TYPE_10__* @MsCreateAdapterListEx(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @StrCat(i8*, i32, i32) #1

declare dso_local i32 @MsFreeAdapterList(%struct.TYPE_10__*) #1

declare dso_local i32 @Sha0(i32*, i8*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @Copy(i64*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
