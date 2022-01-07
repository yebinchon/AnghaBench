; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_task.c_machine_task_get_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_task.c_machine_task_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i8* }

@x86_DEBUG_STATE32_COUNT = common dso_local global i8* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@x86_DEBUG_STATE64_COUNT = common dso_local global i8* null, align 8
@x86_DEBUG_STATE_COUNT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_task_get_state(%struct.TYPE_10__* %0, i32 %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %141 [
    i32 129, label %14
    i32 128, label %43
    i32 130, label %72
  ]

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  store i32* %15, i32** %10, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = call i32 @task_has_64Bit_addr(%struct.TYPE_10__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i8**, i8*** %9, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** @x86_DEBUG_STATE32_COUNT, align 8
  %23 = icmp ne i8* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %14
  %25 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %25, i32* %5, align 4
  br label %143

26:                                               ; preds = %19
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @bzero(i32* %32, i32 4)
  br label %41

34:                                               ; preds = %26
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i32 @copy_debug_state32(i32* %37, i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %31
  %42 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %42, i32* %5, align 4
  br label %143

43:                                               ; preds = %4
  %44 = load i32*, i32** %8, align 8
  store i32* %44, i32** %11, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = call i32 @task_has_64Bit_addr(%struct.TYPE_10__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i8**, i8*** %9, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** @x86_DEBUG_STATE64_COUNT, align 8
  %52 = icmp ne i8* %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48, %43
  %54 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %54, i32* %5, align 4
  br label %143

55:                                               ; preds = %48
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @bzero(i32* %61, i32 4)
  br label %70

63:                                               ; preds = %55
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* @TRUE, align 4
  %69 = call i32 @copy_debug_state64(i32* %66, i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %63, %60
  %71 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %71, i32* %5, align 4
  br label %143

72:                                               ; preds = %4
  %73 = load i32*, i32** %8, align 8
  %74 = bitcast i32* %73 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %12, align 8
  %75 = load i8**, i8*** %9, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** @x86_DEBUG_STATE_COUNT, align 8
  %78 = icmp ne i8* %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %80, i32* %5, align 4
  br label %143

81:                                               ; preds = %72
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = call i32 @task_has_64Bit_addr(%struct.TYPE_10__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %81
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i32 128, i32* %88, align 8
  %89 = load i8*, i8** @x86_DEBUG_STATE64_COUNT, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  store i8* %89, i8** %92, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %85
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = call i32 @bzero(i32* %100, i32 4)
  br label %111

102:                                              ; preds = %85
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* @TRUE, align 4
  %110 = call i32 @copy_debug_state64(i32* %105, i32* %108, i32 %109)
  br label %111

111:                                              ; preds = %102, %97
  br label %139

112:                                              ; preds = %81
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  store i32 129, i32* %115, align 8
  %116 = load i8*, i8** @x86_DEBUG_STATE32_COUNT, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  store i8* %116, i8** %119, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %112
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = call i32 @bzero(i32* %127, i32 4)
  br label %138

129:                                              ; preds = %112
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* @TRUE, align 4
  %137 = call i32 @copy_debug_state32(i32* %132, i32* %135, i32 %136)
  br label %138

138:                                              ; preds = %129, %124
  br label %139

139:                                              ; preds = %138, %111
  %140 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %140, i32* %5, align 4
  br label %143

141:                                              ; preds = %4
  %142 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %141, %139, %79, %70, %53, %41, %24
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @task_has_64Bit_addr(%struct.TYPE_10__*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @copy_debug_state32(i32*, i32*, i32) #1

declare dso_local i32 @copy_debug_state64(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
