; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tglobalcfg.c_tsReadConfigOption.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tglobalcfg.c_tsReadConfigOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }

@tsGlobalConfigNum = common dso_local global i32 0, align 4
@tsGlobalConfig = common dso_local global %struct.TYPE_10__* null, align 8
@TSDB_CFG_CTYPE_B_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"config option:%s, input value:%s, can't be recognized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tsReadConfigOption(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %68, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @tsGlobalConfigNum, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %71

11:                                               ; preds = %7
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** @tsGlobalConfig, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i64 %14
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TSDB_CFG_CTYPE_B_CONFIG, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  br label %68

23:                                               ; preds = %11
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 @strcasecmp(i32 %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %68

31:                                               ; preds = %23
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %63 [
    i32 130, label %35
    i32 132, label %39
    i32 128, label %43
    i32 133, label %47
    i32 129, label %51
    i32 131, label %55
    i32 134, label %59
  ]

35:                                               ; preds = %31
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @tsReadShortConfig(%struct.TYPE_10__* %36, i8* %37)
  br label %67

39:                                               ; preds = %31
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @tsReadIntConfig(%struct.TYPE_10__* %40, i8* %41)
  br label %67

43:                                               ; preds = %31
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @tsReadUIntConfig(%struct.TYPE_10__* %44, i8* %45)
  br label %67

47:                                               ; preds = %31
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @tsReadFloatConfig(%struct.TYPE_10__* %48, i8* %49)
  br label %67

51:                                               ; preds = %31
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @tsReadStrConfig(%struct.TYPE_10__* %52, i8* %53)
  br label %67

55:                                               ; preds = %31
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @tsReadIpConfig(%struct.TYPE_10__* %56, i8* %57)
  br label %67

59:                                               ; preds = %31
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @tsReadFilePathConfig(%struct.TYPE_10__* %60, i8* %61)
  br label %67

63:                                               ; preds = %31
  %64 = load i8*, i8** %3, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @pError(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %64, i8* %65)
  br label %67

67:                                               ; preds = %63, %59, %55, %51, %47, %43, %39, %35
  br label %71

68:                                               ; preds = %30, %22
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %7

71:                                               ; preds = %67, %7
  ret void
}

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i32 @tsReadShortConfig(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @tsReadIntConfig(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @tsReadUIntConfig(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @tsReadFloatConfig(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @tsReadStrConfig(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @tsReadIpConfig(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @tsReadFilePathConfig(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @pError(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
