; ModuleID = '/home/carl/AnghaBench/disque/src/extr_object.c_tryObjectEncoding.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_object.c_tryObjectEncoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i64, i32, i64, i8* }

@OBJ_STRING = common dso_local global i64 0, align 8
@OBJ_SHARED_INTEGERS = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@OBJ_ENCODING_RAW = common dso_local global i64 0, align 8
@OBJ_ENCODING_INT = common dso_local global i64 0, align 8
@OBJ_ENCODING_EMBSTR_SIZE_LIMIT = common dso_local global i64 0, align 8
@OBJ_ENCODING_EMBSTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @tryObjectEncoding(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OBJ_STRING, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @serverAssertWithInfo(i32* null, %struct.TYPE_10__* %11, i32 %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = call i32 @sdsEncodedObject(%struct.TYPE_10__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %2, align 8
  br label %121

24:                                               ; preds = %1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %2, align 8
  br label %121

31:                                               ; preds = %24
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @sdslen(i8* %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ule i64 %34, 21
  br i1 %35, label %36, label %80

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @string2l(i8* %37, i64 %38, i64* %4)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %80

41:                                               ; preds = %36
  %42 = load i64, i64* %4, align 8
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @OBJ_SHARED_INTEGERS, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = call i32 @decrRefCount(%struct.TYPE_10__* %49)
  %51 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @shared, i32 0, i32 0), align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %51, i64 %52
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = call i32 @incrRefCount(%struct.TYPE_10__* %54)
  %56 = load %struct.TYPE_10__**, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @shared, i32 0, i32 0), align 8
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %56, i64 %57
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** %2, align 8
  br label %121

60:                                               ; preds = %44, %41
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @OBJ_ENCODING_RAW, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @sdsfree(i8* %69)
  br label %71

71:                                               ; preds = %66, %60
  %72 = load i64, i64* @OBJ_ENCODING_INT, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %4, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %2, align 8
  br label %121

80:                                               ; preds = %36, %31
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* @OBJ_ENCODING_EMBSTR_SIZE_LIMIT, align 8
  %83 = icmp ule i64 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @OBJ_ENCODING_EMBSTR, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %91, %struct.TYPE_10__** %2, align 8
  br label %121

92:                                               ; preds = %84
  %93 = load i8*, i8** %5, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = call i64 @sdslen(i8* %94)
  %96 = call %struct.TYPE_10__* @createEmbeddedStringObject(i8* %93, i64 %95)
  store %struct.TYPE_10__* %96, %struct.TYPE_10__** %7, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %98 = call i32 @decrRefCount(%struct.TYPE_10__* %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %99, %struct.TYPE_10__** %2, align 8
  br label %121

100:                                              ; preds = %80
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @OBJ_ENCODING_RAW, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %100
  %107 = load i8*, i8** %5, align 8
  %108 = call i64 @sdsavail(i8* %107)
  %109 = load i64, i64* %6, align 8
  %110 = udiv i64 %109, 10
  %111 = icmp ugt i64 %108, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = call i8* @sdsRemoveFreeSpace(i8* %115)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 3
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %112, %106, %100
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %120, %struct.TYPE_10__** %2, align 8
  br label %121

121:                                              ; preds = %119, %92, %90, %71, %48, %29, %22
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %122
}

declare dso_local i32 @serverAssertWithInfo(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @sdsEncodedObject(%struct.TYPE_10__*) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i64 @string2l(i8*, i64, i64*) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_10__*) #1

declare dso_local i32 @incrRefCount(%struct.TYPE_10__*) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local %struct.TYPE_10__* @createEmbeddedStringObject(i8*, i64) #1

declare dso_local i64 @sdsavail(i8*) #1

declare dso_local i8* @sdsRemoveFreeSpace(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
