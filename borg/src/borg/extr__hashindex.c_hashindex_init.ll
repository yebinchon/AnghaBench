; ModuleID = '/home/carl/AnghaBench/borg/src/borg/extr__hashindex.c_hashindex_init.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/extr__hashindex.c_hashindex_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, i32, i32, i64, i32 }
%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [21 x i8] c"malloc header failed\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"malloc buckets failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32, i32, i32)* @hashindex_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @hashindex_init(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @fit_size(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = call %struct.TYPE_8__* @malloc(i32 64)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %8, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = call i32 @EPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %87

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  %21 = call i32 @calloc(i32 %17, i32 %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 10
  store i32 %21, i32* %23, align 8
  %24 = icmp ne i32 %21, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %16
  %26 = call i32 @EPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = call i32 @free(%struct.TYPE_8__* %27)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %87

29:                                               ; preds = %16
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 9
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %46, %49
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @get_lower_limit(i32 %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @get_upper_limit(i32 %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @get_min_empty(i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %82, %29
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @BUCKET_MARK_EMPTY(%struct.TYPE_8__* %79, i32 %80)
  br label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %74

85:                                               ; preds = %74
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %86, %struct.TYPE_8__** %4, align 8
  br label %87

87:                                               ; preds = %85, %25, %14
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %88
}

declare dso_local i32 @fit_size(i32) #1

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32 @EPRINTF(i8*) #1

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @get_lower_limit(i32) #1

declare dso_local i32 @get_upper_limit(i32) #1

declare dso_local i32 @get_min_empty(i32) #1

declare dso_local i32 @BUCKET_MARK_EMPTY(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
