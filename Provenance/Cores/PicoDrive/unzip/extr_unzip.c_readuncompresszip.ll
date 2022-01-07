; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/unzip/extr_unzip.c_readuncompresszip.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/unzip/extr_unzip.c_readuncompresszip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.zipent = type { i32, i64, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [45 x i8] c"Wrong uncompressed size in store compression\00", align 1
@ERROR_CORRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Version too new\00", align 1
@ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"OS not supported\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Cannot span disks\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Inflating compressed data\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Compression method unsupported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readuncompresszip(%struct.TYPE_5__* %0, %struct.zipent* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.zipent*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.zipent* %1, %struct.zipent** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.zipent*, %struct.zipent** %6, align 8
  %9 = getelementptr inbounds %struct.zipent, %struct.zipent* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %3
  %13 = load %struct.zipent*, %struct.zipent** %6, align 8
  %14 = getelementptr inbounds %struct.zipent, %struct.zipent* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.zipent*, %struct.zipent** %6, align 8
  %17 = getelementptr inbounds %struct.zipent, %struct.zipent* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load i32, i32* @ERROR_CORRUPT, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @errormsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  store i32 -3, i32* %4, align 4
  br label %104

26:                                               ; preds = %12
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = load %struct.zipent*, %struct.zipent** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @readcompresszip(%struct.TYPE_5__* %27, %struct.zipent* %28, i8* %29)
  store i32 %30, i32* %4, align 4
  br label %104

31:                                               ; preds = %3
  %32 = load %struct.zipent*, %struct.zipent** %6, align 8
  %33 = getelementptr inbounds %struct.zipent, %struct.zipent* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %36, label %98

36:                                               ; preds = %31
  %37 = load %struct.zipent*, %struct.zipent** %6, align 8
  %38 = getelementptr inbounds %struct.zipent, %struct.zipent* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 20
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* @ERROR_UNSUPPORTED, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @errormsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45)
  store i32 -2, i32* %4, align 4
  br label %104

47:                                               ; preds = %36
  %48 = load %struct.zipent*, %struct.zipent** %6, align 8
  %49 = getelementptr inbounds %struct.zipent, %struct.zipent* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* @ERROR_UNSUPPORTED, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @errormsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %56)
  store i32 -2, i32* %4, align 4
  br label %104

58:                                               ; preds = %47
  %59 = load %struct.zipent*, %struct.zipent** %6, align 8
  %60 = getelementptr inbounds %struct.zipent, %struct.zipent* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load i32, i32* @ERROR_UNSUPPORTED, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @errormsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %70)
  store i32 -2, i32* %4, align 4
  br label %104

72:                                               ; preds = %58
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = load %struct.zipent*, %struct.zipent** %6, align 8
  %75 = call i64 @seekcompresszip(%struct.TYPE_5__* %73, %struct.zipent* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 -1, i32* %4, align 4
  br label %104

78:                                               ; preds = %72
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.zipent*, %struct.zipent** %6, align 8
  %83 = getelementptr inbounds %struct.zipent, %struct.zipent* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load %struct.zipent*, %struct.zipent** %6, align 8
  %87 = getelementptr inbounds %struct.zipent, %struct.zipent* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @inflate_file(i32 %81, i64 %84, i8* %85, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %78
  %92 = load i32, i32* @ERROR_CORRUPT, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @errormsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %92, i32 %95)
  store i32 -3, i32* %4, align 4
  br label %104

97:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %104

98:                                               ; preds = %31
  %99 = load i32, i32* @ERROR_UNSUPPORTED, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @errormsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %99, i32 %102)
  store i32 -2, i32* %4, align 4
  br label %104

104:                                              ; preds = %98, %97, %91, %77, %66, %52, %41, %26, %20
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @errormsg(i8*, i32, i32) #1

declare dso_local i32 @readcompresszip(%struct.TYPE_5__*, %struct.zipent*, i8*) #1

declare dso_local i64 @seekcompresszip(%struct.TYPE_5__*, %struct.zipent*) #1

declare dso_local i64 @inflate_file(i32, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
