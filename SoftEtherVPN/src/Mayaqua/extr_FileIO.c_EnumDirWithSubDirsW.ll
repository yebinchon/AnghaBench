; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_EnumDirWithSubDirsW.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_EnumDirWithSubDirsW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [3 x i32] [i32 46, i32 47, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @EnumDirWithSubDirsW(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* bitcast ([3 x i32]* @.str to i8*), i8** %2, align 8
  br label %10

10:                                               ; preds = %9, %1
  %11 = call i32 @Zero(%struct.TYPE_7__* %3, i32 4)
  %12 = call i32 @NewListFast(i32* null)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @EnumDirWithSubDirsMain(%struct.TYPE_7__* %3, i8* %14)
  %16 = call i8* @ZeroMalloc(i32 16)
  %17 = bitcast i8* %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @LIST_NUM(i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 8, %26
  %28 = trunc i64 %27 to i32
  %29 = call i8* @ZeroMalloc(i32 %28)
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  store i64 0, i64* %5, align 8
  br label %33

33:                                               ; preds = %52, %10
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %34, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %5, align 8
  %44 = call i8* @LIST_DATA(i32 %42, i64 %43)
  store i8* %44, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @UniCopyStr(i8* %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %46, i32* %51, align 4
  br label %52

52:                                               ; preds = %40
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %5, align 8
  br label %33

55:                                               ; preds = %33
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @FreeStrList(i32 %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %59
}

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @NewListFast(i32*) #1

declare dso_local i32 @EnumDirWithSubDirsMain(%struct.TYPE_7__*, i8*) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @LIST_NUM(i32) #1

declare dso_local i8* @LIST_DATA(i32, i64) #1

declare dso_local i32 @UniCopyStr(i8*) #1

declare dso_local i32 @FreeStrList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
