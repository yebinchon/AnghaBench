; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jcmaster.c_jinit_c_master_control.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jcmaster.c_jinit_c_master_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i8*, i32*, %struct.jpeg_comp_master*, %struct.TYPE_9__* }
%struct.jpeg_comp_master = type { i32 }
%struct.TYPE_9__ = type { i64 (i32, i32, i32)* }
%struct.TYPE_11__ = type { i32, i64, i64, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i32, i32, i32 }

@JPOOL_IMAGE = common dso_local global i32 0, align 4
@my_comp_master = common dso_local global i32 0, align 4
@prepare_for_pass = common dso_local global i32 0, align 4
@pass_startup = common dso_local global i32 0, align 4
@finish_pass_master = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@JERR_NOT_COMPILED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@huff_opt_pass = common dso_local global i32 0, align 4
@output_pass = common dso_local global i32 0, align 4
@main_pass = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jinit_c_master_control(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 5
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %9, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = ptrtoint %struct.TYPE_12__* %11 to i32
  %13 = load i32, i32* @JPOOL_IMAGE, align 4
  %14 = load i32, i32* @my_comp_master, align 4
  %15 = call i32 @SIZEOF(i32 %14)
  %16 = call i64 %10(i32 %12, i32 %13, i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %5, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = bitcast %struct.TYPE_11__* %18 to %struct.jpeg_comp_master*
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 4
  store %struct.jpeg_comp_master* %19, %struct.jpeg_comp_master** %21, align 8
  %22 = load i32, i32* @prepare_for_pass, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* @pass_startup, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @finish_pass_master, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = load i8*, i8** @FALSE, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = call i32 @initial_setup(%struct.TYPE_12__* %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %2
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = load i32, i32* @JERR_NOT_COMPILED, align 4
  %47 = call i32 @ERREXIT(%struct.TYPE_12__* %45, i32 %46)
  br label %54

48:                                               ; preds = %2
  %49 = load i8*, i8** @FALSE, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %48, %44
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i64, i64* @TRUE, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i64, i64* %4, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @huff_opt_pass, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  br label %79

75:                                               ; preds = %66
  %76 = load i32, i32* @output_pass, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %75, %71
  br label %84

80:                                               ; preds = %63
  %81 = load i32, i32* @main_pass, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %80, %79
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %84
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %96, 2
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  br label %106

100:                                              ; preds = %84
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %100, %93
  ret void
}

declare dso_local i32 @SIZEOF(i32) #1

declare dso_local i32 @initial_setup(%struct.TYPE_12__*) #1

declare dso_local i32 @ERREXIT(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
