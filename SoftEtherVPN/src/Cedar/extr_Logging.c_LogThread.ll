; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_LogThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_LogThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i64 }

@MAX_SIZE = common dso_local global i32 0, align 4
@g_foreground = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LogThread(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* @MAX_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32, i32* @MAX_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %2
  store i32 1, i32* %13, align 4
  br label %117

29:                                               ; preds = %25
  %30 = trunc i64 %17 to i32
  %31 = call i32 @Zero(i8* %19, i32 %30)
  %32 = trunc i64 %21 to i32
  %33 = call i32 @Zero(i8* %22, i32 %32)
  %34 = load i8*, i8** %4, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %5, align 8
  %36 = load i64, i64* @g_foreground, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32* (...) @GetIO4Stdout()
  br label %41

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32* [ %39, %38 ], [ null, %40 ]
  store i32* %42, i32** %6, align 8
  %43 = call i32* (...) @NewBuf()
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @NoticeThreadInit(i32* %44)
  br label %46

46:                                               ; preds = %104, %41
  br label %47

47:                                               ; preds = %46
  %48 = call i32 (...) @Tick64()
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %68, %47
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* @g_foreground, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @LogThreadWriteStdout(%struct.TYPE_6__* %54, i32* %55, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %69

60:                                               ; preds = %53
  br label %68

61:                                               ; preds = %50
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @LogThreadWriteGeneral(%struct.TYPE_6__* %62, i32* %63, i32** %6, i32* %12, i8* %22, i8* %19)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %69

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %60
  br label %49

69:                                               ; preds = %66, %59
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 1, i32* %8, align 4
  br label %78

78:                                               ; preds = %77, %74
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = call i32 @LockQueue(%struct.TYPE_7__* %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %15, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = call i32 @UnlockQueue(%struct.TYPE_7__* %90)
  %92 = load i64, i64* %15, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %78
  %95 = load i32*, i32** %6, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %94, %78
  br label %105

98:                                               ; preds = %94
  br label %104

99:                                               ; preds = %69
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @Wait(i32 %102, i32 9821)
  br label %104

104:                                              ; preds = %99, %98
  br label %46

105:                                              ; preds = %97
  %106 = load i32*, i32** %6, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i64, i64* @g_foreground, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @FileCloseEx(i32* %112, i32 1)
  br label %114

114:                                              ; preds = %111, %108, %105
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 @FreeBuf(i32* %115)
  store i32 0, i32* %13, align 4
  br label %117

117:                                              ; preds = %114, %28
  %118 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %13, align 4
  switch i32 %119, label %121 [
    i32 0, label %120
    i32 1, label %120
  ]

120:                                              ; preds = %117, %117
  ret void

121:                                              ; preds = %117
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Zero(i8*, i32) #2

declare dso_local i32* @GetIO4Stdout(...) #2

declare dso_local i32* @NewBuf(...) #2

declare dso_local i32 @NoticeThreadInit(i32*) #2

declare dso_local i32 @Tick64(...) #2

declare dso_local i32 @LogThreadWriteStdout(%struct.TYPE_6__*, i32*, i32*) #2

declare dso_local i32 @LogThreadWriteGeneral(%struct.TYPE_6__*, i32*, i32**, i32*, i8*, i8*) #2

declare dso_local i32 @LockQueue(%struct.TYPE_7__*) #2

declare dso_local i32 @UnlockQueue(%struct.TYPE_7__*) #2

declare dso_local i32 @Wait(i32, i32) #2

declare dso_local i32 @FileCloseEx(i32*, i32) #2

declare dso_local i32 @FreeBuf(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
