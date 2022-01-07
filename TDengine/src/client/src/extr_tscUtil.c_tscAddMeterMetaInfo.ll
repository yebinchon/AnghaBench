; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscUtil.c_tscAddMeterMetaInfo.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscUtil.c_tscAddMeterMetaInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32*, i32*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__** }

@POINTER_BYTES = common dso_local global i32 0, align 4
@TSDB_METER_ID_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @tscAddMeterMetaInfo(%struct.TYPE_7__* %0, i8* %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %17, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* @POINTER_BYTES, align 4
  %24 = mul nsw i32 %22, %23
  %25 = call i8* @realloc(%struct.TYPE_8__** %18, i32 %24)
  store i8* %25, i8** %14, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  br label %98

29:                                               ; preds = %6
  %30 = load i8*, i8** %14, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_8__**
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store %struct.TYPE_8__** %31, %struct.TYPE_8__*** %33, align 8
  %34 = call %struct.TYPE_8__* @calloc(i32 1, i32 32)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %36, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %37, i64 %41
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %45, i64 %49
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %15, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %53 = icmp ne %struct.TYPE_8__* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i8*, i8** %9, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %29
  %59 = load i8*, i8** %9, align 8
  %60 = call i64 @strlen(i8* %59)
  %61 = load i64, i64* @TSDB_METER_ID_LEN, align 8
  %62 = icmp sle i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @strcpy(i32 %67, i8* %68)
  br label %70

70:                                               ; preds = %58, %29
  %71 = load i32*, i32** %10, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  store i32* %71, i32** %73, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  store i32* %74, i32** %76, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %70
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 4, %88
  %90 = trunc i64 %89 to i32
  %91 = call i32 @memcpy(i32 %85, i32* %86, i32 %90)
  br label %92

92:                                               ; preds = %82, %70
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %97, %struct.TYPE_8__** %7, align 8
  br label %98

98:                                               ; preds = %92, %28
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %99
}

declare dso_local i8* @realloc(%struct.TYPE_8__**, i32) #1

declare dso_local %struct.TYPE_8__* @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
