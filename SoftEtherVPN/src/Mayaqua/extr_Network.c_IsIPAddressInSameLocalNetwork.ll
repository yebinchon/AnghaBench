; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_IsIPAddressInSameLocalNetwork.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_IsIPAddressInSameLocalNetwork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsIPAddressInSameLocalNetwork(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = icmp eq %struct.TYPE_8__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

11:                                               ; preds = %1
  %12 = call i32* (...) @GetHostIPAddressList()
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %54

15:                                               ; preds = %11
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %48, %15
  %17 = load i64, i64* %6, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @LIST_NUM(i32* %18)
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call %struct.TYPE_8__* @LIST_DATA(i32* %22, i64 %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %7, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = call i64 @IsIP4(%struct.TYPE_8__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %21
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = call i32 @IsZeroIp(%struct.TYPE_8__* %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 127
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = call i64 @IsInSameNetwork4Standard(%struct.TYPE_8__* %40, %struct.TYPE_8__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %51

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %32, %28
  br label %47

47:                                               ; preds = %46, %21
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %6, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %6, align 8
  br label %16

51:                                               ; preds = %44, %16
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @FreeHostIPAddressList(i32* %52)
  br label %54

54:                                               ; preds = %51, %11
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %10
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32* @GetHostIPAddressList(...) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_8__* @LIST_DATA(i32*, i64) #1

declare dso_local i64 @IsIP4(%struct.TYPE_8__*) #1

declare dso_local i32 @IsZeroIp(%struct.TYPE_8__*) #1

declare dso_local i64 @IsInSameNetwork4Standard(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @FreeHostIPAddressList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
