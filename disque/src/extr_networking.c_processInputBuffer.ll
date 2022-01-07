; ModuleID = '/home/carl/AnghaBench/disque/src/extr_networking.c_processInputBuffer.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_networking.c_processInputBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i32, i64, i64 }

@server = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@CLIENT_BLOCKED = common dso_local global i32 0, align 4
@CLIENT_CLOSE_AFTER_REPLY = common dso_local global i32 0, align 4
@PROTO_REQ_MULTIBULK = common dso_local global i64 0, align 8
@PROTO_REQ_INLINE = common dso_local global i64 0, align 8
@C_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Unknown request type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @processInputBuffer(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 8
  br label %4

4:                                                ; preds = %98, %1
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i64 @sdslen(i8* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %99

10:                                               ; preds = %4
  %11 = call i64 (...) @clientsArePaused()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %99

14:                                               ; preds = %10
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CLIENT_BLOCKED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %99

22:                                               ; preds = %14
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CLIENT_CLOSE_AFTER_REPLY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %99

30:                                               ; preds = %22
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 42
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i64, i64* @PROTO_REQ_MULTIBULK, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  br label %51

47:                                               ; preds = %35
  %48 = load i64, i64* @PROTO_REQ_INLINE, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %30
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PROTO_REQ_INLINE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %60 = call i64 @processInlineBuffer(%struct.TYPE_8__* %59)
  %61 = load i64, i64* @C_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %99

64:                                               ; preds = %58
  br label %81

65:                                               ; preds = %52
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PROTO_REQ_MULTIBULK, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %73 = call i64 @processMultibulkBuffer(%struct.TYPE_8__* %72)
  %74 = load i64, i64* @C_OK, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %99

77:                                               ; preds = %71
  br label %80

78:                                               ; preds = %65
  %79 = call i32 @serverPanic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %77
  br label %81

81:                                               ; preds = %80, %64
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %88 = call i32 @resetClient(%struct.TYPE_8__* %87)
  br label %98

89:                                               ; preds = %81
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %91 = call i64 @processCommand(%struct.TYPE_8__* %90)
  %92 = load i64, i64* @C_OK, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %96 = call i32 @resetClient(%struct.TYPE_8__* %95)
  br label %97

97:                                               ; preds = %94, %89
  br label %98

98:                                               ; preds = %97, %86
  br label %4

99:                                               ; preds = %76, %63, %29, %21, %13, %4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 8
  ret void
}

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i64 @clientsArePaused(...) #1

declare dso_local i64 @processInlineBuffer(%struct.TYPE_8__*) #1

declare dso_local i64 @processMultibulkBuffer(%struct.TYPE_8__*) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i32 @resetClient(%struct.TYPE_8__*) #1

declare dso_local i64 @processCommand(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
