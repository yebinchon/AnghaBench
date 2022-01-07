; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-cli.c_getRDB.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-cli.c_getRDB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8* }

@context = common dso_local global %struct.TYPE_3__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"SYNC sent to master, writing %llu bytes to '%s'\0A\00", align 1
@config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Error opening '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"I/O Error reading RDB payload from socket\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Error writing data to file: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Transfer finished with success.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @getRDB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getRDB() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @context, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i64 @sendSync(i32 %10)
  store i64 %11, i64* %3, align 8
  %12 = load i32, i32* @stderr, align 4
  %13 = load i64, i64* %3, align 8
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 0), align 8
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %13, i8* %14)
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 0), align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %0
  %20 = load i32, i32* @STDOUT_FILENO, align 4
  store i32 %20, i32* %2, align 4
  br label %37

21:                                               ; preds = %0
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 0), align 8
  %23 = load i32, i32* @O_CREAT, align 4
  %24 = load i32, i32* @O_WRONLY, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @open(i8* %22, i32 %25, i32 420)
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 0), align 8
  %32 = load i32, i32* @errno, align 4
  %33 = call i8* @strerror(i32 %32)
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %31, i8* %33)
  %35 = call i32 @exit(i32 1) #3
  unreachable

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %19
  br label %38

38:                                               ; preds = %73, %37
  %39 = load i64, i64* %3, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %38
  %42 = load i32, i32* %1, align 4
  %43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %44 = load i64, i64* %3, align 8
  %45 = icmp ugt i64 %44, 4096
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %49

47:                                               ; preds = %41
  %48 = load i64, i64* %3, align 8
  br label %49

49:                                               ; preds = %47, %46
  %50 = phi i64 [ 4096, %46 ], [ %48, %47 ]
  %51 = trunc i64 %50 to i32
  %52 = call i64 @read(i32 %42, i8* %43, i32 %51)
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %58 = call i32 @exit(i32 1) #3
  unreachable

59:                                               ; preds = %49
  %60 = load i32, i32* %2, align 4
  %61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %62 = load i64, i64* %5, align 8
  %63 = call i64 @write(i32 %60, i8* %61, i64 %62)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %5, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load i32, i32* @stderr, align 4
  %69 = load i32, i32* @errno, align 4
  %70 = call i8* @strerror(i32 %69)
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %70)
  %72 = call i32 @exit(i32 1) #3
  unreachable

73:                                               ; preds = %59
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %3, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %3, align 8
  br label %38

77:                                               ; preds = %38
  %78 = load i32, i32* %1, align 4
  %79 = call i32 @close(i32 %78)
  %80 = load i32, i32* %2, align 4
  %81 = call i32 @fsync(i32 %80)
  %82 = load i32, i32* @stderr, align 4
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %84 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @sendSync(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fsync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
