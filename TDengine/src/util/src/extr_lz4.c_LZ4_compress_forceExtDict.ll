; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_lz4.c_LZ4_compress_forceExtDict.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_lz4.c_LZ4_compress_forceExtDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32* }

@notLimited = common dso_local global i32 0, align 4
@byU32 = common dso_local global i32 0, align 4
@usingExtDict = common dso_local global i32 0, align 4
@noDictIssue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LZ4_compress_forceExtDict(%struct.TYPE_7__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %9, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = icmp ugt i32* %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i8*, i8** %6, align 8
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %12, align 8
  br label %31

31:                                               ; preds = %28, %4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = call i32 @LZ4_renormDictT(%struct.TYPE_6__* %32, i32* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @notLimited, align 4
  %40 = load i32, i32* @byU32, align 4
  %41 = load i32, i32* @usingExtDict, align 4
  %42 = load i32, i32* @noDictIssue, align 4
  %43 = call i32 @LZ4_compress_generic(%struct.TYPE_6__* %35, i8* %36, i8* %37, i32 %38, i32 0, i32 %39, i32 %40, i32 %41, i32 %42, i32 1)
  store i32 %43, i32* %10, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %10, align 4
  ret i32 %56
}

declare dso_local i32 @LZ4_renormDictT(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @LZ4_compress_generic(%struct.TYPE_6__*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
