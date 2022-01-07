; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_HTTP.c_PostHttp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_HTTP.c_PostHttp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PostHttp(%struct.TYPE_8__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = icmp eq %struct.TYPE_8__* %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %4
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %17, %4
  store i32 0, i32* %5, align 4
  br label %75

27:                                               ; preds = %23, %20
  %28 = load i32*, i32** %7, align 8
  %29 = call i32* @GetHttpValue(i32* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i32, i32* @MAX_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %13, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %14, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @ToStr(i8* %35, i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @NewHttpValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %35)
  %40 = call i32 @AddHttpValue(i32* %38, i32 %39)
  %41 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %41)
  br label %42

42:                                               ; preds = %31, %27
  %43 = load i32*, i32** %7, align 8
  %44 = call i8* @HttpHeaderToStr(i32* %43)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %75

48:                                               ; preds = %42
  %49 = call %struct.TYPE_9__* (...) @NewBuf()
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %11, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @StrLen(i8* %52)
  %54 = call i32 @WriteBuf(%struct.TYPE_9__* %50, i8* %51, i32 %53)
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @Free(i8* %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @WriteBuf(%struct.TYPE_9__* %57, i8* %58, i32 %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @SendAll(%struct.TYPE_8__* %61, i32 %64, i32 %67, i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %73 = call i32 @FreeBuf(%struct.TYPE_9__* %72)
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %48, %47, %26
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32* @GetHttpValue(i32*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ToStr(i8*, i32) #1

declare dso_local i32 @AddHttpValue(i32*, i32) #1

declare dso_local i32 @NewHttpValue(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @HttpHeaderToStr(i32*) #1

declare dso_local %struct.TYPE_9__* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @SendAll(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
