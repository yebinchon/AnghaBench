; ModuleID = '/home/carl/AnghaBench/TDengine/src/rpc/src/extr_trpc.c_taosBuildReqMsgWithSize.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/rpc/src/extr_trpc.c_taosBuildReqMsgWithSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8, i64, i64, i32, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_5__* }

@.str = private unnamed_addr constant [71 x i8] c"pConn:%p, connection has to be openned first before building a message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @taosBuildReqMsgWithSize(i8* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %10, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %14 = icmp eq %struct.TYPE_5__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %20 = icmp ne %struct.TYPE_5__* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %23 = call i32 @tError(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %22)
  store i8* null, i8** %4, align 8
  br label %100

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %26, 80
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = call i64 @malloc(i64 %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = call i32 @memset(i8* %33, i32 0, i64 %35)
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 4
  %39 = bitcast i8* %38 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %8, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i8, i8* %6, align 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i8 %42, i8* %44, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 10
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 9
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 8
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = call i8* @atomic_add_fetch_32(i32* %52, i32 1)
  %54 = ptrtoint i8* %53 to i64
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %24
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = call i8* @atomic_add_fetch_32(i32* %63, i32 1)
  %65 = ptrtoint i8* %64 to i64
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %61, %24
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %80 = ptrtoint %struct.TYPE_5__* %79 to i64
  %81 = call i64 (...) @getpid()
  %82 = add nsw i64 %80, %81
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 5
  store i64 %82, i64* %84, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @tListLen(i32 %93)
  %95 = call i32 @memcpy(i32 %87, i32 %90, i32 %94)
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i8*
  store i8* %99, i8** %4, align 8
  br label %100

100:                                              ; preds = %68, %21
  %101 = load i8*, i8** %4, align 8
  ret i8* %101
}

declare dso_local i32 @tError(i8*, %struct.TYPE_5__*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i8* @atomic_add_fetch_32(i32*, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @tListLen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
