; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_HTTP.c_HttpHeaderToStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_HTTP.c_HttpHeaderToStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@HTTP_HEADER_LINE_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s %s %s\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s: %s\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @HttpHeaderToStr(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = icmp eq %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %91

12:                                               ; preds = %1
  %13 = load i32, i32* @HTTP_HEADER_LINE_MAX_SIZE, align 4
  %14 = call i8* @Malloc(i32 %13)
  store i8* %14, i8** %5, align 8
  %15 = call %struct.TYPE_10__* (...) @NewBuf()
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @HTTP_HEADER_LINE_MAX_SIZE, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, i32, i8*, i32, i32, ...) @Format(i8* %16, i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @StrLen(i8* %30)
  %32 = call i32 @WriteBuf(%struct.TYPE_10__* %28, i8* %29, i32 %31)
  store i64 0, i64* %6, align 8
  br label %33

33:                                               ; preds = %61, %12
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @LIST_NUM(i32 %37)
  %39 = icmp slt i64 %34, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %33
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @LIST_DATA(i32 %43, i64 %44)
  %46 = inttoptr i64 %45 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %8, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* @HTTP_HEADER_LINE_MAX_SIZE, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i32, i8*, i32, i32, ...) @Format(i8* %47, i32 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @StrLen(i8* %58)
  %60 = call i32 @WriteBuf(%struct.TYPE_10__* %56, i8* %57, i32 %59)
  br label %61

61:                                               ; preds = %40
  %62 = load i64, i64* %6, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %6, align 8
  br label %33

64:                                               ; preds = %33
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = call i32 @WriteBuf(%struct.TYPE_10__* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i8* @Malloc(i32 %70)
  store i8* %71, i8** %7, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @Copy(i8* %72, i32 %75, i32 %78)
  %80 = load i8*, i8** %7, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  store i8 0, i8* %85, align 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = call i32 @FreeBuf(%struct.TYPE_10__* %86)
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @Free(i8* %88)
  %90 = load i8*, i8** %7, align 8
  store i8* %90, i8** %2, align 8
  br label %91

91:                                               ; preds = %64, %11
  %92 = load i8*, i8** %2, align 8
  ret i8* %92
}

declare dso_local i8* @Malloc(i32) #1

declare dso_local %struct.TYPE_10__* @NewBuf(...) #1

declare dso_local i32 @Format(i8*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i64 @LIST_DATA(i32, i64) #1

declare dso_local i32 @Copy(i8*, i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_10__*) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
