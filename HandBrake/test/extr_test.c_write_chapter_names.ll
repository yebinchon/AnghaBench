; ModuleID = '/home/carl/AnghaBench/HandBrake/test/extr_test.c_write_chapter_names.c'
source_filename = "/home/carl/AnghaBench/HandBrake/test/extr_test.c_write_chapter_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Cannot open chapter marker file, using defaults\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Reading chapter markers from file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Destination\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ChapterList\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_chapter_names(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %76

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i32* @hb_open_csv_file(i8* %14)
  store i32* %15, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %76

21:                                               ; preds = %13
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32* @hb_dict_get(i32* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32* @hb_dict_get(i32* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %76

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %70, %31
  %33 = load i32*, i32** %5, align 8
  %34 = call %struct.TYPE_4__* @hb_read_next_cell(i32* %33)
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %6, align 8
  %35 = icmp ne %struct.TYPE_4__* null, %34
  br i1 %35, label %36, label %73

36:                                               ; preds = %32
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %70

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32* @hb_value_array_get(i32* %57, i32 %58)
  store i32* %59, i32** %9, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load i32*, i32** %9, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @hb_value_string(i32 %66)
  %68 = call i32 @hb_dict_set(i32* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %62, %56
  br label %70

70:                                               ; preds = %69, %50, %45
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %72 = call i32 @hb_dispose_cell(%struct.TYPE_4__* %71)
  br label %32

73:                                               ; preds = %32
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @hb_close_csv_file(i32* %74)
  br label %76

76:                                               ; preds = %73, %30, %18, %12
  ret void
}

declare dso_local i32* @hb_open_csv_file(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local %struct.TYPE_4__* @hb_read_next_cell(i32*) #1

declare dso_local i32* @hb_value_array_get(i32*, i32) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @hb_value_string(i32) #1

declare dso_local i32 @hb_dispose_cell(%struct.TYPE_4__*) #1

declare dso_local i32 @hb_close_csv_file(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
