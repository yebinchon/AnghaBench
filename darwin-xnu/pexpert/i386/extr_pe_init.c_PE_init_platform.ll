; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_init.c_PE_init_platform.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_init.c_PE_init_platform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i8*, %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { i8*, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64 }

@PE_state = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"PPPPPPPP\00", align 1
@kPEScaleFactor1x = common dso_local global i8* null, align 8
@kBootArgsFlagHiDPI = common dso_local global i32 0, align 4
@kPEScaleFactor2x = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PE_init_platform(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %5, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @PE_state, i32 0, i32 0), align 8
  %9 = load i64, i64* @FALSE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %80

11:                                               ; preds = %2
  %12 = load i64, i64* @TRUE, align 8
  store i64 %12, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @PE_state, i32 0, i32 0), align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @PE_state, i32 0, i32 3), align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @ml_static_ptovirt(i32 %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @PE_state, i32 0, i32 1), align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %11
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @PE_state, i32 0, i32 2, i32 7), align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @PE_state, i32 0, i32 2, i32 6), align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @PE_state, i32 0, i32 2, i32 5), align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @PE_state, i32 0, i32 2, i32 4), align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @PE_state, i32 0, i32 2, i32 3), align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @PE_state, i32 0, i32 2, i32 2), align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @PE_state, i32 0, i32 2, i32 1), align 8
  %50 = call i32 @strlcpy(i32 %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %78

51:                                               ; preds = %11
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @PE_state, i32 0, i32 2, i32 7), align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @PE_state, i32 0, i32 2, i32 6), align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @PE_state, i32 0, i32 2, i32 5), align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @PE_state, i32 0, i32 2, i32 4), align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @PE_state, i32 0, i32 2, i32 3), align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @PE_state, i32 0, i32 2, i32 2), align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @PE_state, i32 0, i32 2, i32 1), align 8
  %77 = call i32 @strlcpy(i32 %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %78

78:                                               ; preds = %51, %24
  %79 = load i8*, i8** @kPEScaleFactor1x, align 8
  store i8* %79, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @PE_state, i32 0, i32 2, i32 0), align 8
  br label %80

80:                                               ; preds = %78, %2
  %81 = load i32, i32* %3, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %80
  %84 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @PE_state, i32 0, i32 1), align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @PE_state, i32 0, i32 1), align 8
  %88 = call i32 @DTInit(i8* %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = call i32 @pe_identify_machine(%struct.TYPE_10__* %90)
  %92 = call i32 (...) @pe_init_debug()
  br label %93

93:                                               ; preds = %89, %80
  ret void
}

declare dso_local i64 @ml_static_ptovirt(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @DTInit(i8*) #1

declare dso_local i32 @pe_identify_machine(%struct.TYPE_10__*) #1

declare dso_local i32 @pe_init_debug(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
