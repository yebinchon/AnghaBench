; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/common/osi/extr_list.c_list_remove.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/common/osi/extr_list.c_list_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_8__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @list_remove(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = icmp ne %struct.TYPE_7__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = call i64 @list_is_empty(%struct.TYPE_7__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %93

21:                                               ; preds = %2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %21
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = call i8* @list_free_node(%struct.TYPE_7__* %30, %struct.TYPE_8__* %33)
  %35 = bitcast i8* %34 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %6, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp eq %struct.TYPE_8__* %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %29
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %46, align 8
  br label %47

47:                                               ; preds = %43, %29
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %50, align 8
  store i32 1, i32* %3, align 4
  br label %93

51:                                               ; preds = %21
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %7, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %8, align 8
  br label %60

60:                                               ; preds = %87, %51
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = icmp ne %struct.TYPE_8__* %61, null
  br i1 %62, label %63, label %92

63:                                               ; preds = %60
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = icmp eq i8* %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %63
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = call i8* @list_free_node(%struct.TYPE_7__* %70, %struct.TYPE_8__* %71)
  %73 = bitcast i8* %72 to %struct.TYPE_8__*
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %75, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %80 = icmp eq %struct.TYPE_8__* %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %69
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store %struct.TYPE_8__* %82, %struct.TYPE_8__** %84, align 8
  br label %85

85:                                               ; preds = %81, %69
  store i32 1, i32* %3, align 4
  br label %93

86:                                               ; preds = %63
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %88, %struct.TYPE_8__** %7, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  store %struct.TYPE_8__* %91, %struct.TYPE_8__** %8, align 8
  br label %60

92:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %85, %47, %20
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @list_is_empty(%struct.TYPE_7__*) #1

declare dso_local i8* @list_free_node(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
