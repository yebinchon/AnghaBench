; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_JSON_Writer_WriteSimpleToken.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_JSON_Writer_WriteSimpleToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }

@JSON_Failure = common dso_local global i32 0, align 4
@WRITER_IN_PROTECTED_API = common dso_local global i32 0, align 4
@JSON_Error_None = common dso_local global i64 0, align 8
@WriterState = common dso_local global i32 0, align 4
@WRITER_STARTED = common dso_local global i32 0, align 4
@JSON_Success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32**, i64)* @JSON_Writer_WriteSimpleToken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSON_Writer_WriteSimpleToken(%struct.TYPE_5__* %0, i32 %1, i32** %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32, i32* @JSON_Failure, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %68

14:                                               ; preds = %4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @WRITER_IN_PROTECTED_API, align 4
  %19 = call i32 @GET_FLAGS(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %68, label %21

21:                                               ; preds = %14
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @JSON_Error_None, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %68

27:                                               ; preds = %21
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @SHORTEST_ENCODING_SEQUENCE(i32 %31)
  %33 = mul i64 %28, %32
  store i64 %33, i64* %10, align 8
  %34 = load i32, i32* @WriterState, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @WRITER_STARTED, align 4
  %39 = load i32, i32* @WRITER_IN_PROTECTED_API, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @SET_FLAGS_ON(i32 %34, i32 %37, i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @JSON_Writer_ProcessToken(%struct.TYPE_5__* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %27
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = load i32**, i32*** %7, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %48, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i64 @JSON_Writer_OutputBytes(%struct.TYPE_5__* %47, i32* %55, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = load i32, i32* @JSON_Success, align 4
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %59, %46, %27
  %62 = load i32, i32* @WriterState, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @WRITER_IN_PROTECTED_API, align 4
  %67 = call i32 @SET_FLAGS_OFF(i32 %62, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %61, %21, %14, %4
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

declare dso_local i32 @GET_FLAGS(i32, i32) #1

declare dso_local i64 @SHORTEST_ENCODING_SEQUENCE(i32) #1

declare dso_local i32 @SET_FLAGS_ON(i32, i32, i32) #1

declare dso_local i64 @JSON_Writer_ProcessToken(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @JSON_Writer_OutputBytes(%struct.TYPE_5__*, i32*, i64) #1

declare dso_local i32 @SET_FLAGS_OFF(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
