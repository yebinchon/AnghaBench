; ModuleID = '/home/carl/AnghaBench/borg/src/borg/extr__hashindex.c_hashindex_write.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/extr__hashindex.c_hashindex_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"y#\00", align 1
@PyExc_OverflowError = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Failed to write header\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"hash_part\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"HashHeader\00", align 1
@PyExc_AttributeError = common dso_local global i32 0, align 4
@PyBUF_READ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Failed to write buckets\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*)* @hashindex_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hashindex_write(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %14, %17
  store i32 %18, i32* %9, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %23, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @_htole32(i64 %30)
  store i32 %31, i32* %27, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @_htole32(i64 %35)
  store i32 %36, i32* %32, align 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  %38 = load i32, i32* @MAGIC, align 4
  store i32 %38, i32* %37, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call i8* (i8*, i8*, i8*, ...) @PyObject_CallMethod(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_5__* %10, i32 20)
  store i8* %40, i8** %5, align 8
  %41 = call i64 (...) @PyErr_Occurred()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %2
  br label %113

44:                                               ; preds = %2
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* @PyExc_OverflowError, align 4
  %47 = call i32 @PyNumber_AsSsize_t(i8* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @Py_DECREF(i8* %48)
  %50 = call i64 (...) @PyErr_Occurred()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %113

53:                                               ; preds = %44
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %55, 20
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @PyExc_ValueError, align 4
  %59 = call i32 @PyErr_SetString(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %113

60:                                               ; preds = %53
  %61 = load i8*, i8** %4, align 8
  %62 = call i8* (i8*, i8*, i8*, ...) @PyObject_CallMethod(i8* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i8* %62, i8** %7, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @Py_XDECREF(i8* %63)
  %65 = call i64 (...) @PyErr_Occurred()
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = load i32, i32* @PyExc_AttributeError, align 4
  %69 = call i64 @PyErr_ExceptionMatches(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 (...) @PyErr_Clear()
  br label %74

73:                                               ; preds = %67
  br label %113

74:                                               ; preds = %71
  br label %75

75:                                               ; preds = %74, %60
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @PyBUF_READ, align 4
  %82 = call i8* @PyMemoryView_FromMemory(i8* %79, i32 %80, i32 %81)
  store i8* %82, i8** %6, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %75
  %86 = call i64 (...) @PyErr_Occurred()
  %87 = call i32 @assert(i64 %86)
  br label %113

88:                                               ; preds = %75
  %89 = load i8*, i8** %4, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i8* (i8*, i8*, i8*, ...) @PyObject_CallMethod(i8* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* %90)
  store i8* %91, i8** %5, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 @Py_DECREF(i8* %92)
  %94 = call i64 (...) @PyErr_Occurred()
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %113

97:                                               ; preds = %88
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* @PyExc_OverflowError, align 4
  %100 = call i32 @PyNumber_AsSsize_t(i8* %98, i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @Py_DECREF(i8* %101)
  %103 = call i64 (...) @PyErr_Occurred()
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %113

106:                                              ; preds = %97
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* @PyExc_ValueError, align 4
  %112 = call i32 @PyErr_SetString(i32 %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %113

113:                                              ; preds = %43, %52, %57, %73, %85, %96, %105, %110, %106
  ret void
}

declare dso_local i32 @_htole32(i64) #1

declare dso_local i8* @PyObject_CallMethod(i8*, i8*, i8*, ...) #1

declare dso_local i64 @PyErr_Occurred(...) #1

declare dso_local i32 @PyNumber_AsSsize_t(i8*, i32) #1

declare dso_local i32 @Py_DECREF(i8*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @Py_XDECREF(i8*) #1

declare dso_local i64 @PyErr_ExceptionMatches(i32) #1

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local i8* @PyMemoryView_FromMemory(i8*, i32, i32) #1

declare dso_local i32 @assert(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
