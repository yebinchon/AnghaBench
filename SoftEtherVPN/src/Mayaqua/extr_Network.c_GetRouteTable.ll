; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetRouteTable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetRouteTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64**, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@MD5_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @GetRouteTable() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %1, align 8
  %7 = call %struct.TYPE_10__* (...) @NewBuf()
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %3, align 8
  %8 = load i32, i32* @MD5_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = call %struct.TYPE_9__* (...) @UnixGetRouteTable()
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %1, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = call i32 @WriteBuf(%struct.TYPE_10__* %13, i64* %15, i32 8)
  store i64 0, i64* %2, align 8
  br label %17

17:                                               ; preds = %33, %0
  %18 = load i64, i64* %2, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i64**, i64*** %25, align 8
  %27 = load i64, i64* %2, align 8
  %28 = getelementptr inbounds i64*, i64** %26, i64 %27
  %29 = load i64*, i64** %28, align 8
  store i64* %29, i64** %6, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = load i64*, i64** %6, align 8
  %32 = call i32 @WriteBuf(%struct.TYPE_10__* %30, i64* %31, i32 8)
  br label %33

33:                                               ; preds = %23
  %34 = load i64, i64* %2, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %2, align 8
  br label %17

36:                                               ; preds = %17
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @Md5(i32* %11, i32 %39, i32 %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = call i32 @FreeBuf(%struct.TYPE_10__* %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = call i32 @Copy(i32* %47, i32* %11, i32 4)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %50 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %50)
  ret %struct.TYPE_9__* %49
}

declare dso_local %struct.TYPE_10__* @NewBuf(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_9__* @UnixGetRouteTable(...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_10__*, i64*, i32) #1

declare dso_local i32 @Md5(i32*, i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_10__*) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
