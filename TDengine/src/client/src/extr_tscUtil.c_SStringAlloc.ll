; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscUtil.c_SStringAlloc.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscUtil.c_SStringAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i32 }

@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to allocate memory, reason:%s\00", align 1
@TSDB_CODE_CLI_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SStringAlloc(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [256 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %14, i64* %3, align 8
  br label %67

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @ALIGN8(i64 %16)
  store i64 %17, i64* %5, align 8
  store i8* null, i8** %6, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %15
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i8* @realloc(i8* %25, i64 %26)
  store i8* %27, i8** %6, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %36, %40
  %42 = call i32 @memset(i8* %35, i32 0, i64 %41)
  br label %46

43:                                               ; preds = %15
  %44 = load i64, i64* %5, align 8
  %45 = call i8* @calloc(i32 1, i64 %44)
  store i8* %45, i8** %6, align 8
  br label %46

46:                                               ; preds = %43, %22
  %47 = load i8*, i8** %6, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = bitcast [256 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %50, i8 0, i64 256, i1 false)
  %51 = load i32, i32* @errno, align 4
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %54 = call i32 @tListLen(i8* %53)
  %55 = call i32 @strerror_r(i32 %51, i8* %52, i32 %54)
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %57 = call i32 @tscTrace(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = load i64, i64* @TSDB_CODE_CLI_OUT_OF_MEMORY, align 8
  store i64 %58, i64* %3, align 8
  br label %67

59:                                               ; preds = %46
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %59, %49, %13
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

declare dso_local i64 @ALIGN8(i64) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i8* @calloc(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @strerror_r(i32, i8*, i32) #1

declare dso_local i32 @tListLen(i8*) #1

declare dso_local i32 @tscTrace(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
