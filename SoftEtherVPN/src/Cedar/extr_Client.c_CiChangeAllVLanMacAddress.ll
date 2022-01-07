; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiChangeAllVLanMacAddress.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiChangeAllVLanMacAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CiChangeAllVLanMacAddress(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca [6 x i32], align 16
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca [6 x i32], align 16
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %71

13:                                               ; preds = %1
  %14 = call i32 @Zero(%struct.TYPE_8__* %3, i32 24)
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @CtEnumVLan(i32* %15, %struct.TYPE_8__* %3)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %71

18:                                               ; preds = %13
  store i64 0, i64* %4, align 8
  br label %19

19:                                               ; preds = %66, %18
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %24, label %69

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 3
  %26 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %26, i64 %27
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @StrToMac(i32* %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %24
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %38 = load i32, i32* %37, align 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 172
  br i1 %43, label %48, label %44

44:                                               ; preds = %40, %36
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %46 = load i32, i32* %45, align 16
  %47 = icmp eq i32 %46, 94
  br i1 %47, label %48, label %65

48:                                               ; preds = %44, %40
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %7, align 8
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %53 = call i32 @GenMacAddress(i32* %52)
  %54 = call i32 @Zero(%struct.TYPE_8__* %8, i32 24)
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @StrCpy(i32 %56, i32 4, i8* %57)
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %62 = call i32 @MacToStr(i32 %60, i32 4, i32* %61)
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @CtSetVLan(i32* %63, %struct.TYPE_8__* %8)
  br label %65

65:                                               ; preds = %48, %44, %24
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %4, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %4, align 8
  br label %19

69:                                               ; preds = %19
  %70 = call i32 @CiFreeClientEnumVLan(%struct.TYPE_8__* %3)
  br label %71

71:                                               ; preds = %12, %69, %13
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @CtEnumVLan(i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @StrToMac(i32*, i32) #1

declare dso_local i32 @GenMacAddress(i32*) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @MacToStr(i32, i32, i32*) #1

declare dso_local i32 @CtSetVLan(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @CiFreeClientEnumVLan(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
