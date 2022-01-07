; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_read_log.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_read_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@ACTIVITY_MAX_READ_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @read_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_log(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strcmp(i8* %17, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %86

22:                                               ; preds = %14, %2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @g_free(i8* %25)
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @g_strdup(i8* %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @gtk_text_buffer_set_text(i32 %33, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %35 = load i8*, i8** %4, align 8
  %36 = call i32* @g_fopen(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %36, i32** %5, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %22
  br label %86

40:                                               ; preds = %22
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @SEEK_END, align 4
  %43 = call i32 @fseek(i32* %41, i32 0, i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i64 @ftell(i32* %44)
  store i64 %45, i64* %7, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @SEEK_SET, align 4
  %48 = call i32 @fseek(i32* %46, i32 0, i32 %47)
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @ACTIVITY_MAX_READ_SZ, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i64, i64* @ACTIVITY_MAX_READ_SZ, align 8
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %52, %40
  %55 = load i64, i64* %7, align 8
  %56 = call i8* @g_malloc(i64 %55)
  store i8* %56, i8** %9, align 8
  br label %57

57:                                               ; preds = %70, %54
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @feof(i32* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %62, label %81

62:                                               ; preds = %57
  %63 = load i8*, i8** %9, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i64 @fread(i8* %63, i32 1, i64 %64, i32* %65)
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp ule i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %81

70:                                               ; preds = %62
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @gtk_text_buffer_get_end_iter(i32 %73, i32* %8)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @gtk_text_buffer_insert(i32 %77, i32* %8, i8* %78, i64 %79)
  br label %57

81:                                               ; preds = %69, %57
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @fclose(i32* %82)
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @g_free(i8* %84)
  br label %86

86:                                               ; preds = %81, %39, %21
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i32 @gtk_text_buffer_set_text(i32, i8*, i32) #1

declare dso_local i32* @g_fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i8* @g_malloc(i64) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @gtk_text_buffer_get_end_iter(i32, i32*) #1

declare dso_local i32 @gtk_text_buffer_insert(i32, i32*, i8*, i64) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
