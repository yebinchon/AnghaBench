; ModuleID = '/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_mkmakefile.c_do_files.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_mkmakefile.c_do_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_list = type { i64, i8*, %struct.file_list* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ftab = common dso_local global %struct.file_list* null, align 8
@INVISIBLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"\\\0A\09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_files(i32* %0, i8* %1, i8 signext %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.file_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8 %2, i8* %6, align 1
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 (i32*, i8*, ...) @fprintf(i32* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %11)
  store i32 8, i32* %8, align 4
  %13 = load %struct.file_list*, %struct.file_list** @ftab, align 8
  store %struct.file_list* %13, %struct.file_list** %7, align 8
  br label %14

14:                                               ; preds = %51, %3
  %15 = load %struct.file_list*, %struct.file_list** %7, align 8
  %16 = icmp ne %struct.file_list* %15, null
  br i1 %16, label %17, label %55

17:                                               ; preds = %14
  %18 = load %struct.file_list*, %struct.file_list** %7, align 8
  %19 = getelementptr inbounds %struct.file_list, %struct.file_list* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INVISIBLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %51

24:                                               ; preds = %17
  %25 = load %struct.file_list*, %struct.file_list** %7, align 8
  %26 = getelementptr inbounds %struct.file_list, %struct.file_list* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.file_list*, %struct.file_list** %7, align 8
  %29 = getelementptr inbounds %struct.file_list, %struct.file_list* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %27, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* %6, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %24
  br label %51

41:                                               ; preds = %24
  store i32 8, i32* %8, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.file_list*, %struct.file_list** %7, align 8
  %46 = call i32 @put_source_file_name(i32* %44, %struct.file_list* %45)
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %41, %40, %23
  %52 = load %struct.file_list*, %struct.file_list** %7, align 8
  %53 = getelementptr inbounds %struct.file_list, %struct.file_list* %52, i32 0, i32 2
  %54 = load %struct.file_list*, %struct.file_list** %53, align 8
  store %struct.file_list* %54, %struct.file_list** %7, align 8
  br label %14

55:                                               ; preds = %14
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @putc(i8 signext 10, i32* %56)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @put_source_file_name(i32*, %struct.file_list*) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
