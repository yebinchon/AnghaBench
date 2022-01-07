; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vector_upl_subupl_byoffset.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vector_upl_subupl_byoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_9__** }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Vector UPL offset miscalculation\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"vector_upl_subupl_byoffset was passed a non-vectored UPL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @vector_upl_subupl_byoffset(%struct.TYPE_9__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_8__, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = call i64 @vector_upl_is_valid(%struct.TYPE_9__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %115

15:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %9, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %112

21:                                               ; preds = %15
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %108, %21
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %111

28:                                               ; preds = %22
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %31, i64 %32
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %10, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %38
  %40 = bitcast %struct.TYPE_8__* %11 to i8*
  %41 = bitcast %struct.TYPE_8__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 8, i1 false)
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %45, %47
  %49 = sub nsw i32 %48, 1
  %50 = icmp sle i32 %43, %49
  br i1 %50, label %51, label %107

51:                                               ; preds = %28
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %53 = icmp eq %struct.TYPE_9__* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %116

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %57, %59
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %62, %64
  %66 = icmp slt i32 %60, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %69, %71
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %72, %74
  %76 = load i32*, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %78, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %67
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %82, %67
  br label %87

87:                                               ; preds = %86, %55
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp sge i32 %89, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, %95
  store i32 %98, i32* %96, align 4
  br label %105

99:                                               ; preds = %87
  %100 = load i64, i64* %8, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %99
  br label %105

105:                                              ; preds = %104, %93
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %106, %struct.TYPE_9__** %4, align 8
  br label %116

107:                                              ; preds = %28
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %8, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %8, align 8
  br label %22

111:                                              ; preds = %22
  br label %114

112:                                              ; preds = %15
  %113 = call i32 @panic(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %111
  br label %115

115:                                              ; preds = %114, %3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %116

116:                                              ; preds = %115, %105, %54
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %117
}

declare dso_local i64 @vector_upl_is_valid(%struct.TYPE_9__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
