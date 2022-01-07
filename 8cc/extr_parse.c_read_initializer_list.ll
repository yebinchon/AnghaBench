; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_initializer_list.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_initializer_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64 }

@TSTRING = common dso_local global i64 0, align 8
@KIND_ARRAY = common dso_local global i64 0, align 8
@KIND_STRUCT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_14__*, i32, i32)* @read_initializer_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_initializer_list(i32* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = call %struct.TYPE_15__* (...) @get()
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %9, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %13 = call i64 @is_string(%struct.TYPE_14__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TSTRING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @assign_string(i32* %22, %struct.TYPE_14__* %23, i32 %26, i32 %27)
  br label %85

29:                                               ; preds = %15
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %31 = call i64 @is_keyword(%struct.TYPE_15__* %30, i8 signext 123)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = call %struct.TYPE_16__* (...) @peek()
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TSTRING, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = call %struct.TYPE_15__* (...) @get()
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %9, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @assign_string(i32* %41, %struct.TYPE_14__* %42, i32 %45, i32 %46)
  %48 = call i32 @expect(i8 signext 125)
  br label %85

49:                                               ; preds = %33, %29
  br label %50

50:                                               ; preds = %49, %4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %52 = call i32 @unget_token(%struct.TYPE_15__* %51)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @KIND_ARRAY, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @read_array_initializer(i32* %59, %struct.TYPE_14__* %60, i32 %61, i32 %62)
  br label %85

64:                                               ; preds = %50
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @KIND_STRUCT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @read_struct_initializer(i32* %71, %struct.TYPE_14__* %72, i32 %73, i32 %74)
  br label %84

76:                                               ; preds = %64
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %78 = call %struct.TYPE_14__* @make_array_type(%struct.TYPE_14__* %77, i32 1)
  store %struct.TYPE_14__* %78, %struct.TYPE_14__** %10, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @read_array_initializer(i32* %79, %struct.TYPE_14__* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %76, %70
  br label %85

85:                                               ; preds = %21, %39, %84, %58
  ret void
}

declare dso_local %struct.TYPE_15__* @get(...) #1

declare dso_local i64 @is_string(%struct.TYPE_14__*) #1

declare dso_local i32 @assign_string(i32*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @is_keyword(%struct.TYPE_15__*, i8 signext) #1

declare dso_local %struct.TYPE_16__* @peek(...) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32 @unget_token(%struct.TYPE_15__*) #1

declare dso_local i32 @read_array_initializer(i32*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @read_struct_initializer(i32*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @make_array_type(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
