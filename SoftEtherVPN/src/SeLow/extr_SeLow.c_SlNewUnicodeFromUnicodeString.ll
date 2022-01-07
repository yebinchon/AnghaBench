; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/SeLow/extr_SeLow.c_SlNewUnicodeFromUnicodeString.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/SeLow/extr_SeLow.c_SlNewUnicodeFromUnicodeString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i8* }
%struct.TYPE_7__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @SlNewUnicodeFromUnicodeString(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = icmp eq %struct.TYPE_7__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %43

8:                                                ; preds = %1
  %9 = call i8* @SlZeroMalloc(i32 16)
  %10 = bitcast i8* %9 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = icmp eq %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %43

14:                                               ; preds = %8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %17, i32* %23, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @SlZeroMalloc(i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  store i8* %27, i8** %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @SlCopy(i8* %34, i32 %37, i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %2, align 8
  br label %43

43:                                               ; preds = %14, %13, %7
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %44
}

declare dso_local i8* @SlZeroMalloc(i32) #1

declare dso_local i32 @SlCopy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
