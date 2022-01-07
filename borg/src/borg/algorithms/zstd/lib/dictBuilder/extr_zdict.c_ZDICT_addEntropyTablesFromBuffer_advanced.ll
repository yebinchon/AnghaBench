; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_zdict.c_ZDICT_addEntropyTablesFromBuffer_advanced.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_zdict.c_ZDICT_addEntropyTablesFromBuffer_advanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@g_compressionLevel_default = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"\0D%70s\0D\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"statistics ... \0A\00", align 1
@ZSTD_MAGIC_DICTIONARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*, i64*, i32, %struct.TYPE_3__*)* @ZDICT_addEntropyTablesFromBuffer_advanced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZDICT_addEntropyTablesFromBuffer_advanced(i8* %0, i64 %1, i64 %2, i8* %3, i64* %4, i32 %5, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32 %5, i32* %14, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* @g_compressionLevel_default, align 4
  br label %30

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i32 [ %26, %25 ], [ %29, %27 ]
  store i32 %31, i32* %15, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %16, align 4
  store i64 8, i64* %17, align 8
  %34 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i8*, i8** %9, align 8
  %37 = load i64, i64* %17, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %17, align 8
  %41 = sub i64 %39, %40
  %42 = load i32, i32* %15, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = load i64*, i64** %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i64, i64* %10, align 8
  %50 = sub i64 0, %49
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i64, i64* %10, align 8
  %53 = load i32, i32* %16, align 4
  %54 = call i64 @ZDICT_analyzeEntropy(i8* %38, i64 %41, i32 %42, i8* %43, i64* %44, i32 %45, i8* %51, i64 %52, i32 %53)
  store i64 %54, i64* %18, align 8
  %55 = load i64, i64* %18, align 8
  %56 = call i64 @ZDICT_isError(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %30
  %59 = load i64, i64* %18, align 8
  store i64 %59, i64* %8, align 8
  br label %115

60:                                               ; preds = %30
  %61 = load i64, i64* %18, align 8
  %62 = load i64, i64* %17, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %17, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* @ZSTD_MAGIC_DICTIONARY, align 4
  %66 = call i32 @MEM_writeLE32(i8* %64, i32 %65)
  %67 = load i8*, i8** %9, align 8
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i64, i64* %10, align 8
  %71 = sub i64 0, %70
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @XXH64(i8* %72, i64 %73, i32 0)
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %19, align 4
  %76 = urem i32 %75, 2147450880
  %77 = add i32 %76, 32768
  store i32 %77, i32* %20, align 4
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %60
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  br label %86

84:                                               ; preds = %60
  %85 = load i32, i32* %20, align 4
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi i32 [ %83, %81 ], [ %85, %84 ]
  store i32 %87, i32* %21, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 4
  %90 = load i32, i32* %21, align 4
  %91 = call i32 @MEM_writeLE32(i8* %89, i32 %90)
  %92 = load i64, i64* %17, align 8
  %93 = load i64, i64* %10, align 8
  %94 = add i64 %92, %93
  %95 = load i64, i64* %11, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %86
  %98 = load i8*, i8** %9, align 8
  %99 = load i64, i64* %17, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  %101 = load i8*, i8** %9, align 8
  %102 = load i64, i64* %11, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = load i64, i64* %10, align 8
  %105 = sub i64 0, %104
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i64, i64* %10, align 8
  %108 = call i32 @memmove(i8* %100, i8* %106, i64 %107)
  br label %109

109:                                              ; preds = %97, %86
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* %17, align 8
  %112 = load i64, i64* %10, align 8
  %113 = add i64 %111, %112
  %114 = call i64 @MIN(i64 %110, i64 %113)
  store i64 %114, i64* %8, align 8
  br label %115

115:                                              ; preds = %109, %58
  %116 = load i64, i64* %8, align 8
  ret i64 %116
}

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local i64 @ZDICT_analyzeEntropy(i8*, i64, i32, i8*, i64*, i32, i8*, i64, i32) #1

declare dso_local i64 @ZDICT_isError(i64) #1

declare dso_local i32 @MEM_writeLE32(i8*, i32) #1

declare dso_local i32 @XXH64(i8*, i64, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
