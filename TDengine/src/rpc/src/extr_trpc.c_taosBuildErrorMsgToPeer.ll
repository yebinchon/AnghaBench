; ModuleID = '/home/carl/AnghaBench/TDengine/src/rpc/src/extr_trpc.c_taosBuildErrorMsgToPeer.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/rpc/src/extr_trpc.c_taosBuildErrorMsgToPeer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i8*, i32, i64, i64, i64, i32, i64, i64, i64, i32 }

@TSDB_CODE_INVALID_TIME_STAMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosBuildErrorMsgToPeer(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %8, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 10
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 8
  %24 = sext i8 %23 to i32
  %25 = add nsw i32 %24, 1
  %26 = trunc i32 %25 to i8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8 %26, i8* %28, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 9
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 8
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 7
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 5
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @tListLen(i8* %55)
  %57 = call i32 @memcpy(i8* %49, i8* %52, i32 %56)
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %9, align 8
  %62 = load i32, i32* %5, align 4
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %9, align 8
  store i8 %63, i8* %64, align 1
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %9, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @TSDB_CODE_INVALID_TIME_STAMP, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %3
  %71 = call signext i8 (...) @taosGetTimestampSec()
  store i8 %71, i8* %10, align 1
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @memcpy(i8* %72, i8* %10, i32 1)
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  store i8* %75, i8** %9, align 8
  br label %76

76:                                               ; preds = %70, %3
  %77 = load i8*, i8** %9, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = trunc i32 %83 to i8
  %85 = call i64 @htonl(i8 signext %84)
  %86 = trunc i64 %85 to i32
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %11, align 4
  ret i32 %89
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @tListLen(i8*) #1

declare dso_local signext i8 @taosGetTimestampSec(...) #1

declare dso_local i64 @htonl(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
