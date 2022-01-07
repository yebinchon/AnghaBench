; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_main.c_stabline.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_main.c_stabline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { i64, i64 }

@currentfile = common dso_local global i64 0, align 8
@srcfp = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@srcpos = common dso_local global i64 0, align 8
@currentline = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@comment = common dso_local global i32 0, align 4
@stabIR = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @stabline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stabline(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca [512 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @currentfile, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load i32*, i32** @srcfp, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32*, i32** @srcfp, align 8
  %19 = call i32 @fclose(i32* %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* @currentfile, align 8
  %24 = load i64, i64* @currentfile, align 8
  %25 = call i32* @fopen(i64 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** @srcfp, align 8
  store i64 0, i64* @srcpos, align 8
  store i64 0, i64* @currentline, align 8
  br label %26

26:                                               ; preds = %20, %8, %1
  %27 = load i64, i64* @currentline, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %26
  %33 = load i32*, i32** @srcfp, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %77

35:                                               ; preds = %32
  %36 = load i64, i64* @srcpos, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32*, i32** @srcfp, align 8
  %43 = call i32 @rewind(i32* %42)
  store i64 0, i64* @srcpos, align 8
  br label %44

44:                                               ; preds = %41, %35
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i64, i64* @srcpos, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %53 = load i32*, i32** @srcfp, align 8
  %54 = call i32* @fgets(i8* %52, i32 512, i32* %53)
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32*, i32** @srcfp, align 8
  %58 = call i32 @fclose(i32* %57)
  store i32* null, i32** @srcfp, align 8
  br label %63

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* @srcpos, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* @srcpos, align 8
  br label %45

63:                                               ; preds = %56, %45
  %64 = load i32*, i32** @srcfp, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load i64, i64* @srcpos, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* @comment, align 4
  %74 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %75 = call i32 @print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %73, i8* %74)
  br label %76

76:                                               ; preds = %72, %66, %63
  br label %77

77:                                               ; preds = %76, %32, %26
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* @currentline, align 8
  %81 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @stabIR, i32 0, i32 0), align 8
  %82 = icmp ne i32 (%struct.TYPE_5__*)* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @stabIR, i32 0, i32 0), align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %86 = call i32 %84(%struct.TYPE_5__* %85)
  br label %87

87:                                               ; preds = %83, %77
  ret void
}

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @fopen(i64, i8*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @print(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
