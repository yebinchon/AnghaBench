; ModuleID = '/home/carl/AnghaBench/disque/src/extr_config.c_rewriteConfigReadOldFile.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_config.c_rewriteConfigReadOldFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rewriteConfigState = type { i32, i32*, i64, i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@CONFIG_MAX_LINE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@optionToLineDictType = common dso_local global i32 0, align 4
@optionSetDictType = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"\0D\0A\09 \00", align 1
@DISQUE_CONFIG_REWRITE_SIGNATURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"# ??? \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rewriteConfigState* @rewriteConfigReadOldFile(i8* %0) #0 {
  %2 = alloca %struct.rewriteConfigState*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rewriteConfigState*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %4, align 8
  %16 = call %struct.rewriteConfigState* @zmalloc(i32 40)
  store %struct.rewriteConfigState* %16, %struct.rewriteConfigState** %5, align 8
  %17 = load i32, i32* @CONFIG_MAX_LINE, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  store i32 -1, i32* %8, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @ENOENT, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store %struct.rewriteConfigState* null, %struct.rewriteConfigState** %2, align 8
  store i32 1, i32* %9, align 4
  br label %122

29:                                               ; preds = %24, %1
  %30 = call i8* @dictCreate(i32* @optionToLineDictType, i32* null)
  %31 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  %32 = getelementptr inbounds %struct.rewriteConfigState, %struct.rewriteConfigState* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = call i8* @dictCreate(i32* @optionSetDictType, i32* null)
  %34 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  %35 = getelementptr inbounds %struct.rewriteConfigState, %struct.rewriteConfigState* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  %37 = getelementptr inbounds %struct.rewriteConfigState, %struct.rewriteConfigState* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  %39 = getelementptr inbounds %struct.rewriteConfigState, %struct.rewriteConfigState* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  %41 = getelementptr inbounds %struct.rewriteConfigState, %struct.rewriteConfigState* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  store %struct.rewriteConfigState* %45, %struct.rewriteConfigState** %2, align 8
  store i32 1, i32* %9, align 4
  br label %122

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %101, %91, %82, %46
  %48 = load i32, i32* @CONFIG_MAX_LINE, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32*, i32** %4, align 8
  %51 = call i32* @fgets(i8* %21, i32 %49, i32* %50)
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %118

53:                                               ; preds = %47
  %54 = call i8* @sdsnew(i8* %21)
  %55 = call i8* @sdstrim(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %55, i8** %12, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 35
  br i1 %62, label %69, label %63

63:                                               ; preds = %53
  %64 = load i8*, i8** %12, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %63, %53
  %70 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  %71 = getelementptr inbounds %struct.rewriteConfigState, %struct.rewriteConfigState* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %69
  %75 = load i8*, i8** %12, align 8
  %76 = load i32, i32* @DISQUE_CONFIG_REWRITE_SIGNATURE, align 4
  %77 = call i32 @strcmp(i8* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  %81 = getelementptr inbounds %struct.rewriteConfigState, %struct.rewriteConfigState* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %74, %69
  %83 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 @rewriteConfigAppendLine(%struct.rewriteConfigState* %83, i8* %84)
  br label %47

86:                                               ; preds = %63
  %87 = load i8*, i8** %12, align 8
  %88 = call i8** @sdssplitargs(i8* %87, i32* %10)
  store i8** %88, i8*** %11, align 8
  %89 = load i8**, i8*** %11, align 8
  %90 = icmp eq i8** %89, null
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = call i8* @sdsnew(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %92, i8** %13, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = call i8* @sdscatsds(i8* %93, i8* %94)
  store i8* %95, i8** %13, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 @sdsfree(i8* %96)
  %98 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = call i32 @rewriteConfigAppendLine(%struct.rewriteConfigState* %98, i8* %99)
  br label %47

101:                                              ; preds = %86
  %102 = load i8**, i8*** %11, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @sdstolower(i8* %104)
  %106 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = call i32 @rewriteConfigAppendLine(%struct.rewriteConfigState* %106, i8* %107)
  %109 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  %110 = load i8**, i8*** %11, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @rewriteConfigAddLineNumberToOption(%struct.rewriteConfigState* %109, i8* %112, i32 %113)
  %115 = load i8**, i8*** %11, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @sdsfreesplitres(i8** %115, i32 %116)
  br label %47

118:                                              ; preds = %47
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 @fclose(i32* %119)
  %121 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  store %struct.rewriteConfigState* %121, %struct.rewriteConfigState** %2, align 8
  store i32 1, i32* %9, align 4
  br label %122

122:                                              ; preds = %118, %44, %28
  %123 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  ret %struct.rewriteConfigState* %124
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local %struct.rewriteConfigState* @zmalloc(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @dictCreate(i32*, i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @sdstrim(i8*, i8*) #1

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @rewriteConfigAppendLine(%struct.rewriteConfigState*, i8*) #1

declare dso_local i8** @sdssplitargs(i8*, i32*) #1

declare dso_local i8* @sdscatsds(i8*, i8*) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32 @sdstolower(i8*) #1

declare dso_local i32 @rewriteConfigAddLineNumberToOption(%struct.rewriteConfigState*, i8*, i32) #1

declare dso_local i32 @sdsfreesplitres(i8**, i32) #1

declare dso_local i32 @fclose(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
