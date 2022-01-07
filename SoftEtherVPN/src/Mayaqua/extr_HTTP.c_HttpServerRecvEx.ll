; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_HTTP.c_HttpServerRecvEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_HTTP.c_HttpServerRecvEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@HTTP_PACK_MAX_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@HTTP_VPN_TARGET = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"HTTP/1.1\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@HTTP_CONTENT_TYPE2 = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"noop\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"recv: noop\0A\00", align 1
@MAX_NOOP_PER_SESSION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @HttpServerRecvEx(%struct.TYPE_13__* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @HTTP_PACK_MAX_SIZE, align 8
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %15, %2
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = icmp eq %struct.TYPE_13__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32* null, i32** %3, align 8
  br label %139

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %135, %21
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = call %struct.TYPE_15__* @RecvHttpHeader(%struct.TYPE_13__* %23)
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %8, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %26 = icmp eq %struct.TYPE_15__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %138

28:                                               ; preds = %22
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @StrCmpi(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** @HTTP_VPN_TARGET, align 8
  %39 = call i64 @StrCmpi(i32 %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @StrCmpi(i32 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %34, %28
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %49 = call i32 @FreeHttpHeader(%struct.TYPE_15__* %48)
  br label %138

50:                                               ; preds = %41
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %52 = call %struct.TYPE_14__* @GetHttpValue(%struct.TYPE_15__* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %11, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %54 = icmp eq %struct.TYPE_14__* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** @HTTP_CONTENT_TYPE2, align 8
  %60 = call i64 @StrCmpi(i32 %58, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55, %50
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = call i32 @FreeHttpHeader(%struct.TYPE_15__* %63)
  br label %138

65:                                               ; preds = %55
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %67 = call i64 @GetContentLength(%struct.TYPE_15__* %66)
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %9, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %5, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70, %65
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %76 = call i32 @FreeHttpHeader(%struct.TYPE_15__* %75)
  br label %138

77:                                               ; preds = %70
  %78 = load i64, i64* %9, align 8
  %79 = call i32* @MallocEx(i64 %78, i32 1)
  store i32* %79, i32** %10, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @RecvAll(%struct.TYPE_13__* %80, i32* %81, i64 %82, i32 %85)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @Free(i32* %89)
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %92 = call i32 @FreeHttpHeader(%struct.TYPE_15__* %91)
  store i32* null, i32** %3, align 8
  br label %139

93:                                               ; preds = %77
  %94 = call i32* (...) @NewBuf()
  store i32* %94, i32** %6, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @WriteBuf(i32* %95, i32* %96, i64 %97)
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @Free(i32* %99)
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %102 = call i32 @FreeHttpHeader(%struct.TYPE_15__* %101)
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @SeekBuf(i32* %103, i32 0, i32 0)
  %105 = load i32*, i32** %6, align 8
  %106 = call i32* @BufToPack(i32* %105)
  store i32* %106, i32** %7, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @FreeBuf(i32* %107)
  %109 = load i32*, i32** %7, align 8
  %110 = call i64 @PackGetInt(i32* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %136

112:                                              ; preds = %93
  %113 = call i32 @Debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @FreePack(i32* %114)
  %116 = call i32* @PackError(i32 0)
  store i32* %116, i32** %7, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 @PackAddInt(i32* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @HttpServerSend(%struct.TYPE_13__* %119, i32* %120)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %112
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @FreePack(i32* %124)
  store i32* null, i32** %3, align 8
  br label %139

126:                                              ; preds = %112
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @FreePack(i32* %127)
  %129 = load i64, i64* %12, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %12, align 8
  %131 = load i64, i64* %12, align 8
  %132 = load i64, i64* @MAX_NOOP_PER_SESSION, align 8
  %133 = icmp sgt i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  store i32* null, i32** %3, align 8
  br label %139

135:                                              ; preds = %126
  br label %22

136:                                              ; preds = %93
  %137 = load i32*, i32** %7, align 8
  store i32* %137, i32** %3, align 8
  br label %139

138:                                              ; preds = %74, %62, %47, %27
  store i32* null, i32** %3, align 8
  br label %139

139:                                              ; preds = %138, %136, %134, %123, %88, %20
  %140 = load i32*, i32** %3, align 8
  ret i32* %140
}

declare dso_local %struct.TYPE_15__* @RecvHttpHeader(%struct.TYPE_13__*) #1

declare dso_local i64 @StrCmpi(i32, i8*) #1

declare dso_local i32 @FreeHttpHeader(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @GetHttpValue(%struct.TYPE_15__*, i8*) #1

declare dso_local i64 @GetContentLength(%struct.TYPE_15__*) #1

declare dso_local i32* @MallocEx(i64, i32) #1

declare dso_local i32 @RecvAll(%struct.TYPE_13__*, i32*, i64, i32) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(i32*, i32*, i64) #1

declare dso_local i32 @SeekBuf(i32*, i32, i32) #1

declare dso_local i32* @BufToPack(i32*) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i64 @PackGetInt(i32*, i8*) #1

declare dso_local i32 @Debug(i8*) #1

declare dso_local i32 @FreePack(i32*) #1

declare dso_local i32* @PackError(i32) #1

declare dso_local i32 @PackAddInt(i32*, i8*, i32) #1

declare dso_local i32 @HttpServerSend(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
