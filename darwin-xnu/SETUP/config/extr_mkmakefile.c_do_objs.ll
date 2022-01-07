; ModuleID = '/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_mkmakefile.c_do_objs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_mkmakefile.c_do_objs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_list = type { i64, i8*, %struct.file_list* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ftab = common dso_local global %struct.file_list* null, align 8
@INVISIBLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"\\\0A\09\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_objs(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.file_list*, %struct.file_list** @ftab, align 8
  store %struct.file_list* %18, %struct.file_list** %7, align 8
  br label %19

19:                                               ; preds = %104, %3
  %20 = load %struct.file_list*, %struct.file_list** %7, align 8
  %21 = icmp ne %struct.file_list* %20, null
  br i1 %21, label %22, label %108

22:                                               ; preds = %19
  %23 = load %struct.file_list*, %struct.file_list** %7, align 8
  %24 = getelementptr inbounds %struct.file_list, %struct.file_list* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @INVISIBLE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %104

29:                                               ; preds = %22
  %30 = load %struct.file_list*, %struct.file_list** %7, align 8
  %31 = getelementptr inbounds %struct.file_list, %struct.file_list* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.file_list*, %struct.file_list** %7, align 8
  %34 = getelementptr inbounds %struct.file_list, %struct.file_list* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strlen(i8* %35)
  store i32 %36, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %32, i64 %37
  %39 = getelementptr inbounds i8, i8* %38, i64 -1
  store i8* %39, i8** %10, align 8
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %49

42:                                               ; preds = %29
  %43 = load i8*, i8** %10, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %104

49:                                               ; preds = %42, %29
  %50 = load i8*, i8** %10, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 111
  br i1 %53, label %54, label %72

54:                                               ; preds = %49
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %55, %56
  %58 = icmp sgt i32 %57, 72
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  store i32 8, i32* %8, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 (i32*, i8*, ...) @fprintf(i32* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.file_list*, %struct.file_list** %7, align 8
  %65 = call i32 @put_source_file_name(i32* %63, %struct.file_list* %64)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %104

72:                                               ; preds = %49
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.file_list*, %struct.file_list** %7, align 8
  %75 = getelementptr inbounds %struct.file_list, %struct.file_list* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i8* @tail(i8* %76)
  store i8* %77, i8** %12, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = call i32 @strlen(i8* %79)
  store i32 %80, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  %83 = getelementptr inbounds i8, i8* %82, i64 -1
  store i8* %83, i8** %10, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load i8, i8* %84, align 1
  store i8 %85, i8* %11, align 1
  %86 = load i8*, i8** %10, align 8
  store i8 111, i8* %86, align 1
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %87, %88
  %90 = icmp sgt i32 %89, 72
  br i1 %90, label %91, label %94

91:                                               ; preds = %73
  store i32 8, i32* %8, align 4
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %73
  %95 = load i32*, i32** %4, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 (i32*, i8*, ...) @fprintf(i32* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %96)
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %8, align 4
  %102 = load i8, i8* %11, align 1
  %103 = load i8*, i8** %10, align 8
  store i8 %102, i8* %103, align 1
  br label %104

104:                                              ; preds = %94, %62, %48, %28
  %105 = load %struct.file_list*, %struct.file_list** %7, align 8
  %106 = getelementptr inbounds %struct.file_list, %struct.file_list* %105, i32 0, i32 2
  %107 = load %struct.file_list*, %struct.file_list** %106, align 8
  store %struct.file_list* %107, %struct.file_list** %7, align 8
  br label %19

108:                                              ; preds = %19
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @putc(i8 signext 10, i32* %109)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @put_source_file_name(i32*, %struct.file_list*) #1

declare dso_local i8* @tail(i8*) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
