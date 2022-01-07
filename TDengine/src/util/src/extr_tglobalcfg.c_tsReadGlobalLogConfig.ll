; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tglobalcfg.c_tsReadGlobalLogConfig.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tglobalcfg.c_tsReadGlobalLogConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8** }

@mdebugFlag = common dso_local global i32 0, align 4
@sdbDebugFlag = common dso_local global i32 0, align 4
@configDir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"configDir:%s not there, use default value: /etc/taos\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/etc/taos\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"logDir\00", align 1
@logDir = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"%s/taos.cfg\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"\0Aoption file:%s not found, all options are set to system default\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tsReadGlobalLogConfig() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = call i32 (...) @tsInitGlobalConfig()
  store i32 135, i32* @mdebugFlag, align 4
  store i32 135, i32* @sdbDebugFlag, align 4
  %11 = load i8*, i8** @configDir, align 8
  %12 = call i32 @wordexp(i8* %11, %struct.TYPE_4__* %9, i32 0)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  %15 = icmp ne i8** %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i8*, i8** @configDir, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcpy(i8* %23, i8* %27)
  br label %34

29:                                               ; preds = %16, %0
  %30 = load i8*, i8** @configDir, align 8
  %31 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i8*, i8** @configDir, align 8
  %33 = call i32 @strcpy(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %29, %22
  %35 = call i32 @wordfree(%struct.TYPE_4__* %9)
  %36 = load i8*, i8** @logDir, align 8
  %37 = call i32 @tsReadLogOption(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %39 = load i8*, i8** @configDir, align 8
  %40 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %42 = call i32* @fopen(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %42, i32** %1, align 8
  %43 = load i32*, i32** %1, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %47 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i8* %46)
  br label %95

48:                                               ; preds = %34
  store i8* null, i8** %2, align 8
  br label %49

49:                                               ; preds = %82, %81, %67, %48
  %50 = load i32*, i32** %1, align 8
  %51 = call i32 @feof(i32* %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br i1 %53, label %54, label %90

54:                                               ; preds = %49
  %55 = load i8*, i8** %2, align 8
  %56 = call i32 @tfree(i8* %55)
  store i8* null, i8** %4, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %2, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %5, align 8
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @getline(i8** %2, i64* %5, i32* %57)
  %59 = load i8*, i8** %2, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %90

62:                                               ; preds = %54
  %63 = load i8*, i8** %2, align 8
  %64 = call i32 @paGetToken(i8* %63, i8** %3, i32* %6)
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %49

68:                                               ; preds = %62
  %69 = load i8*, i8** %3, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 0, i8* %72, align 1
  %73 = load i8*, i8** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = call i32 @paGetToken(i8* %77, i8** %4, i32* %7)
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %49

82:                                               ; preds = %68
  %83 = load i8*, i8** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  store i8 0, i8* %86, align 1
  %87 = load i8*, i8** %3, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @tsReadLogOption(i8* %87, i8* %88)
  br label %49

90:                                               ; preds = %61, %49
  %91 = load i8*, i8** %2, align 8
  %92 = call i32 @tfree(i8* %91)
  %93 = load i32*, i32** %1, align 8
  %94 = call i32 @fclose(i32* %93)
  br label %95

95:                                               ; preds = %90, %45
  ret void
}

declare dso_local i32 @tsInitGlobalConfig(...) #1

declare dso_local i32 @wordexp(i8*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @wordfree(%struct.TYPE_4__*) #1

declare dso_local i32 @tsReadLogOption(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @tfree(i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @paGetToken(i8*, i8**, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
