; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_parser.c_read_cfg.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_parser.c_read_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Config file error line %d, could parse: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @read_cfg(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @file_error(i8* %13)
  br label %15

15:                                               ; preds = %12, %1
  store i32 0, i32* %5, align 4
  %16 = call i8* (...) @make_list()
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %6, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  br label %18

18:                                               ; preds = %60, %15
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @fgetl(i32* %19)
  store i8* %20, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %61

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strip(i8* %25)
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %45 [
    i32 91, label %31
    i32 0, label %42
    i32 35, label %42
    i32 59, label %42
  ]

31:                                               ; preds = %22
  %32 = call %struct.TYPE_4__* @malloc(i32 16)
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %7, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = call i32 @list_insert(i32* %33, %struct.TYPE_4__* %34)
  %36 = call i8* (...) @make_list()
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %60

42:                                               ; preds = %22, %22, %22
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @free(i8* %43)
  br label %60

45:                                               ; preds = %22
  %46 = load i8*, i8** %4, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @read_option(i8* %46, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @stderr, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %54, i8* %55)
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @free(i8* %57)
  br label %59

59:                                               ; preds = %52, %45
  br label %60

60:                                               ; preds = %59, %42, %31
  br label %18

61:                                               ; preds = %18
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @fclose(i32* %62)
  %64 = load i32*, i32** %6, align 8
  ret i32* %64
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @file_error(i8*) #1

declare dso_local i8* @make_list(...) #1

declare dso_local i8* @fgetl(i32*) #1

declare dso_local i32 @strip(i8*) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i32 @list_insert(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @read_option(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
