; ModuleID = '/home/carl/AnghaBench/TDengine/src/rpc/src/extr_trpc.c_taosSendQuickRsp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/rpc/src/extr_trpc.c_taosSendQuickRsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }
%struct.TYPE_7__ = type { i8*, i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }

@TSDB_AUTH_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosSendQuickRsp(i8* %0, i8 signext %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %13, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %6, align 1
  %19 = call i8* @taosBuildRspMsgWithSize(i8* %17, i8 signext %18, i32 32)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %96

23:                                               ; preds = %3
  %24 = load i8, i8* %7, align 1
  %25 = load i8*, i8** %8, align 8
  store i8 %24, i8* %25, align 1
  store i32 1, i32* %9, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 -16
  %28 = bitcast i8* %27 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %10, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %30 = bitcast %struct.TYPE_5__* %29 to i8*
  store i8* %30, i8** %11, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr i8, i8* inttoptr (i64 16 to i8*), i64 %32
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %23
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = bitcast i8* %48 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %14, align 8
  %50 = call i32 (...) @taosGetTimestampSec()
  %51 = call i64 @htonl(i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, 16
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i64 @htonl(i32 %58)
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = bitcast %struct.TYPE_5__* %63 to i32*
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* @TSDB_AUTH_LEN, align 8
  %68 = sub nsw i64 %66, %67
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @taosBuildAuthHeader(i32* %64, i64 %68, i32 %71, i32 %74)
  br label %82

76:                                               ; preds = %23
  %77 = load i32, i32* %12, align 4
  %78 = call i64 @htonl(i32 %77)
  %79 = inttoptr i64 %78 to i8*
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %76, %39
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @tfree(i8* %85)
  %87 = load i8*, i8** %11, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %92 = bitcast %struct.TYPE_5__* %91 to i8*
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @taosSendDataToPeer(%struct.TYPE_7__* %90, i8* %92, i32 %93)
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %82, %22
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i8* @taosBuildRspMsgWithSize(i8*, i8 signext, i32) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @taosGetTimestampSec(...) #1

declare dso_local i32 @taosBuildAuthHeader(i32*, i64, i32, i32) #1

declare dso_local i32 @tfree(i8*) #1

declare dso_local i32 @taosSendDataToPeer(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
