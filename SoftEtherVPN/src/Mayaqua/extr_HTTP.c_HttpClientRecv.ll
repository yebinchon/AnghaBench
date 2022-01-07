; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_HTTP.c_HttpClientRecv.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_HTTP.c_HttpClientRecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"HTTP/1.1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"200\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@HTTP_CONTENT_TYPE2 = common dso_local global i8* null, align 8
@MAX_PACK_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @HttpClientRecv(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = icmp eq %struct.TYPE_12__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %94

13:                                               ; preds = %1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = call %struct.TYPE_14__* @RecvHttpHeader(%struct.TYPE_12__* %14)
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %6, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = icmp eq %struct.TYPE_14__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32* null, i32** %2, align 8
  br label %94

19:                                               ; preds = %13
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @StrCmpi(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @StrCmpi(i32 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %19
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = call i32 @FreeHttpHeader(%struct.TYPE_14__* %32)
  store i32* null, i32** %2, align 8
  br label %94

34:                                               ; preds = %25
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = call %struct.TYPE_13__* @GetHttpValue(%struct.TYPE_14__* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %9, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %38 = icmp eq %struct.TYPE_13__* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** @HTTP_CONTENT_TYPE2, align 8
  %44 = call i64 @StrCmpi(i32 %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39, %34
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = call i32 @FreeHttpHeader(%struct.TYPE_14__* %47)
  store i32* null, i32** %2, align 8
  br label %94

49:                                               ; preds = %39
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = call i64 @GetContentLength(%struct.TYPE_14__* %50)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @MAX_PACK_SIZE, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54, %49
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = call i32 @FreeHttpHeader(%struct.TYPE_14__* %59)
  store i32* null, i32** %2, align 8
  br label %94

61:                                               ; preds = %54
  %62 = load i64, i64* %7, align 8
  %63 = call i32* @MallocEx(i64 %62, i32 1)
  store i32* %63, i32** %8, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @RecvAll(%struct.TYPE_12__* %64, i32* %65, i64 %66, i32 %69)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %61
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @Free(i32* %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %76 = call i32 @FreeHttpHeader(%struct.TYPE_14__* %75)
  store i32* null, i32** %2, align 8
  br label %94

77:                                               ; preds = %61
  %78 = call i32* (...) @NewBuf()
  store i32* %78, i32** %4, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @WriteBuf(i32* %79, i32* %80, i64 %81)
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @Free(i32* %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %86 = call i32 @FreeHttpHeader(%struct.TYPE_14__* %85)
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @SeekBuf(i32* %87, i32 0, i32 0)
  %89 = load i32*, i32** %4, align 8
  %90 = call i32* @BufToPack(i32* %89)
  store i32* %90, i32** %5, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @FreeBuf(i32* %91)
  %93 = load i32*, i32** %5, align 8
  store i32* %93, i32** %2, align 8
  br label %94

94:                                               ; preds = %77, %72, %58, %46, %31, %18, %12
  %95 = load i32*, i32** %2, align 8
  ret i32* %95
}

declare dso_local %struct.TYPE_14__* @RecvHttpHeader(%struct.TYPE_12__*) #1

declare dso_local i64 @StrCmpi(i32, i8*) #1

declare dso_local i32 @FreeHttpHeader(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @GetHttpValue(%struct.TYPE_14__*, i8*) #1

declare dso_local i64 @GetContentLength(%struct.TYPE_14__*) #1

declare dso_local i32* @MallocEx(i64, i32) #1

declare dso_local i32 @RecvAll(%struct.TYPE_12__*, i32*, i64, i32) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(i32*, i32*, i64) #1

declare dso_local i32 @SeekBuf(i32*, i32, i32) #1

declare dso_local i32* @BufToPack(i32*) #1

declare dso_local i32 @FreeBuf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
