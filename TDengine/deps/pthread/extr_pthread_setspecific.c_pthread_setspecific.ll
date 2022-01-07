; ModuleID = '/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_setspecific.c_pthread_setspecific.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_setspecific.c_pthread_setspecific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }

@ptw32_selfThreadKey = common dso_local global %struct.TYPE_13__* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_setspecific(%struct.TYPE_13__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ptw32_selfThreadKey, align 8
  %16 = icmp ne %struct.TYPE_13__* %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = call i32* (...) @pthread_self()
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i32* %18, i32** %19, align 8
  %20 = bitcast %struct.TYPE_12__* %6 to i8*
  %21 = bitcast %struct.TYPE_12__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @ENOENT, align 4
  store i32 %26, i32* %3, align 4
  br label %120

27:                                               ; preds = %17
  br label %50

28:                                               ; preds = %2
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ptw32_selfThreadKey, align 8
  %30 = call i64 @pthread_getspecific(%struct.TYPE_13__* %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %9, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %33 = icmp eq %struct.TYPE_11__* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @ENOENT, align 4
  store i32 %38, i32* %3, align 4
  br label %120

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = bitcast i8* %40 to %struct.TYPE_12__*
  %42 = bitcast %struct.TYPE_12__* %6 to i8*
  %43 = bitcast %struct.TYPE_12__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 8, i1 false)
  br label %49

44:                                               ; preds = %28
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = bitcast %struct.TYPE_12__* %6 to i8*
  %48 = bitcast %struct.TYPE_12__* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 8, i1 false)
  br label %49

49:                                               ; preds = %44, %39
  br label %50

50:                                               ; preds = %49, %27
  store i32 0, i32* %7, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = icmp ne %struct.TYPE_13__* %51, null
  br i1 %52, label %53, label %118

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %103

57:                                               ; preds = %53
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %103

62:                                               ; preds = %57
  %63 = load i8*, i8** %5, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %103

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = bitcast i32* %67 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %68, %struct.TYPE_11__** %12, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = call i32 @ptw32_mcs_lock_acquire(i32* %70, i32* %10)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = call i32 @ptw32_mcs_lock_acquire(i32* %73, i32* %11)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %78, %struct.TYPE_14__** %13, align 8
  br label %79

79:                                               ; preds = %89, %65
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %81 = icmp ne %struct.TYPE_14__* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = icmp eq %struct.TYPE_13__* %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %93

89:                                               ; preds = %82
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  store %struct.TYPE_14__* %92, %struct.TYPE_14__** %13, align 8
  br label %79

93:                                               ; preds = %88, %79
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %95 = icmp eq %struct.TYPE_14__* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %99 = call i32 @ptw32_tkAssocCreate(%struct.TYPE_11__* %97, %struct.TYPE_13__* %98)
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %96, %93
  %101 = call i32 @ptw32_mcs_lock_release(i32* %11)
  %102 = call i32 @ptw32_mcs_lock_release(i32* %10)
  br label %103

103:                                              ; preds = %100, %62, %57, %53
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = ptrtoint i8* %110 to i32
  %112 = call i32 @TlsSetValue(i32 %109, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %106
  %115 = load i32, i32* @EAGAIN, align 4
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %114, %106
  br label %117

117:                                              ; preds = %116, %103
  br label %118

118:                                              ; preds = %117, %50
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %37, %25
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32* @pthread_self(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @pthread_getspecific(%struct.TYPE_13__*) #1

declare dso_local i32 @ptw32_mcs_lock_acquire(i32*, i32*) #1

declare dso_local i32 @ptw32_tkAssocCreate(%struct.TYPE_11__*, %struct.TYPE_13__*) #1

declare dso_local i32 @ptw32_mcs_lock_release(i32*) #1

declare dso_local i32 @TlsSetValue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
