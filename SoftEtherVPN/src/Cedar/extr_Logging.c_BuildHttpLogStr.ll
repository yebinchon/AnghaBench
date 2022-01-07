; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_BuildHttpLogStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_BuildHttpLogStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_9__ = type { i8* }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"http://%s%s\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"http://%s:%u%s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"https://%s/\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"https://%s:%u/\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"HttpMethod\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"HttpUrl\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"HttpProtocol\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"HttpReferer\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"HttpUserAgent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @BuildHttpLogStr(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %10 = load i32, i32* @MAX_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  store i8 0, i8* %7, align 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i8* @CopyStr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %123

18:                                               ; preds = %1
  %19 = call %struct.TYPE_9__* (...) @NewBuf()
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %4, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @StartWith(i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @StartWith(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25, %18
  %32 = trunc i64 %11 to i32
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @StrCpy(i8* %13, i32 %32, i32 %35)
  br label %91

37:                                               ; preds = %25
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %37
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 80
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = trunc i64 %11 to i32
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, i32, i8*, i32, ...) @Format(i8* %13, i32 %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %51, i32 %54)
  br label %68

56:                                               ; preds = %42
  %57 = trunc i64 %11 to i32
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, i32, i8*, i32, ...) @Format(i8* %13, i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %60, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %56, %47
  br label %90

69:                                               ; preds = %37
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 443
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = trunc i64 %11 to i32
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i8*, i32, i8*, i32, ...) @Format(i8* %13, i32 %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  br label %89

80:                                               ; preds = %69
  %81 = trunc i64 %11 to i32
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i8*, i32, i8*, i32, ...) @Format(i8* %13, i32 %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %80, %74
  br label %90

90:                                               ; preds = %89, %68
  br label %91

91:                                               ; preds = %90, %31
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @AddLogBufToStr(%struct.TYPE_9__* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %95)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %98 = call i32 @AddLogBufToStr(%struct.TYPE_9__* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %13)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 4
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @AddLogBufToStr(%struct.TYPE_9__* %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %102)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 5
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @AddLogBufToStr(%struct.TYPE_9__* %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %107)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 6
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @AddLogBufToStr(%struct.TYPE_9__* %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %112)
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %115 = call i32 @WriteBuf(%struct.TYPE_9__* %114, i8* %7, i32 1)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i8* @CopyStr(i8* %118)
  store i8* %119, i8** %8, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %121 = call i32 @FreeBuf(%struct.TYPE_9__* %120)
  %122 = load i8*, i8** %8, align 8
  store i8* %122, i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %123

123:                                              ; preds = %91, %16
  %124 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i8*, i8** %2, align 8
  ret i8* %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @CopyStr(i8*) #2

declare dso_local %struct.TYPE_9__* @NewBuf(...) #2

declare dso_local i64 @StartWith(i32, i8*) #2

declare dso_local i32 @StrCpy(i8*, i32, i32) #2

declare dso_local i32 @Format(i8*, i32, i8*, i32, ...) #2

declare dso_local i32 @AddLogBufToStr(%struct.TYPE_9__*, i8*, i8*) #2

declare dso_local i32 @WriteBuf(%struct.TYPE_9__*, i8*, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_9__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
