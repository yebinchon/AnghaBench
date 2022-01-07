; ModuleID = '/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_mkmakefile.c_do_machdep.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_mkmakefile.c_do_machdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s/Makefile.%s\00", align 1
@config_directory = common dso_local global i8* null, align 8
@machinename = common dso_local global i8* null, align 8
@VPATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@profiling = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"LIBS=\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"LIBS=${LIBS_P}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_machdep(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @BUFSIZ, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load i32, i32* @BUFSIZ, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %14 = load i8*, i8** @config_directory, align 8
  %15 = load i8*, i8** @machinename, align 8
  %16 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15)
  %17 = load i32, i32* @VPATH, align 4
  %18 = call i32* @fopenp(i32 %17, i8* %13, i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = call i32 @perror(i8* %13)
  %23 = call i32 @exit(i32 1) #4
  unreachable

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %42, %24
  %26 = load i32, i32* @BUFSIZ, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @fgets(i8* %13, i32 %26, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load i64, i64* @profiling, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = call i64 @strncmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @fprintf(i32* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %42

39:                                               ; preds = %33, %30
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @fputs(i8* %13, i32* %40)
  br label %42

42:                                               ; preds = %39, %36
  br label %25

43:                                               ; preds = %25
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @fclose(i32* %44)
  %46 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %46)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32* @fopenp(i32, i8*, i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @fprintf(i32*, i8*) #2

declare dso_local i32 @fputs(i8*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
