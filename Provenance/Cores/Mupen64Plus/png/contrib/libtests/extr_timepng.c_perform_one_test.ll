; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_timepng.c_perform_one_test.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_timepng.c_perform_one_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"temporary file\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"file %d: error reading PNG data\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"file %d: error from libpng\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"timepng: bad clock from kernel\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%lu.%.9ld\0A\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"timepng: error writing output\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @perform_one_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perform_one_test(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec, align 8
  %10 = alloca %struct.timespec, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @rewind(i32* %13)
  %15 = call i64 @mytime(%struct.timespec* %9)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %43, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @read_png(i32* %23, i32 %24, i32* null)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @ferror(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  store i32 0, i32* %4, align 4
  br label %89

36:                                               ; preds = %27
  br label %42

37:                                               ; preds = %22
  %38 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @stderr, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  store i32 0, i32* %4, align 4
  br label %89

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %18

46:                                               ; preds = %18
  br label %48

47:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %89

48:                                               ; preds = %46
  %49 = call i64 @mytime(%struct.timespec* %10)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %88

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %53, %55
  store i64 %56, i64* %11, align 8
  %57 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %58, %60
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %51
  %65 = load i64, i64* %11, align 8
  %66 = add i64 %65, -1
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* %12, align 8
  %68 = add nsw i64 %67, 1000000000
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %89

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %51
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 %76, i64 %77)
  %79 = load i32*, i32** @stdout, align 8
  %80 = call i32 @fflush(i32* %79)
  %81 = load i32*, i32** @stdout, align 8
  %82 = call i64 @ferror(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %89

87:                                               ; preds = %75
  store i32 1, i32* %4, align 4
  br label %89

88:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %87, %84, %71, %47, %37, %31
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @rewind(i32*) #1

declare dso_local i64 @mytime(%struct.timespec*) #1

declare dso_local i64 @read_png(i32*, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @printf(i8*, i64, i64) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
