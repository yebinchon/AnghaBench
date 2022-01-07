; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/common/osi/extr_config.c_config_set_string.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/common/osi/extr_config.c_config_set_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_set_string(%struct.TYPE_13__* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call %struct.TYPE_12__* @section_find(%struct.TYPE_13__* %15, i8* %16)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %11, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %19 = icmp ne %struct.TYPE_12__* %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %5
  %21 = load i8*, i8** %7, align 8
  %22 = call %struct.TYPE_12__* @section_new(i8* %21)
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %11, align 8
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %30 = call i32 @list_append(i32 %28, %struct.TYPE_12__* %29)
  br label %37

31:                                               ; preds = %20
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %36 = call i32 @list_prepend(i32 %34, %struct.TYPE_12__* %35)
  br label %37

37:                                               ; preds = %31, %25
  br label %38

38:                                               ; preds = %37, %5
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @list_begin(i32 %41)
  store i32* %42, i32** %12, align 8
  br label %43

43:                                               ; preds = %69, %38
  %44 = load i32*, i32** %12, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @list_end(i32 %47)
  %49 = icmp ne i32* %44, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %43
  %51 = load i32*, i32** %12, align 8
  %52 = call %struct.TYPE_12__* @list_node(i32* %51)
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %13, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @strcmp(i32 %55, i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %50
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @osi_free(i32 %62)
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @osi_strdup(i8* %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %81

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68
  %70 = load i32*, i32** %12, align 8
  %71 = call i32* @list_next(i32* %70)
  store i32* %71, i32** %12, align 8
  br label %43

72:                                               ; preds = %43
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call %struct.TYPE_12__* @entry_new(i8* %73, i8* %74)
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %14, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %80 = call i32 @list_append(i32 %78, %struct.TYPE_12__* %79)
  br label %81

81:                                               ; preds = %72, %59
  ret void
}

declare dso_local %struct.TYPE_12__* @section_find(%struct.TYPE_13__*, i8*) #1

declare dso_local %struct.TYPE_12__* @section_new(i8*) #1

declare dso_local i32 @list_append(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @list_prepend(i32, %struct.TYPE_12__*) #1

declare dso_local i32* @list_begin(i32) #1

declare dso_local i32* @list_end(i32) #1

declare dso_local %struct.TYPE_12__* @list_node(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @osi_free(i32) #1

declare dso_local i32 @osi_strdup(i8*) #1

declare dso_local i32* @list_next(i32*) #1

declare dso_local %struct.TYPE_12__* @entry_new(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
