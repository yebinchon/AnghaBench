; ModuleID = '/home/carl/AnghaBench/brotli/c/tools/extr_brotli.c_CopyStat.c'
source_filename = "/home/carl/AnghaBench/brotli/c/tools/extr_brotli.c_CopyStat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i32, i32, i32 }
%struct.utimbuf = type { i32, i32 }

@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"setting access bits failed for [%s]: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"setting group failed for [%s]: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"setting user failed for [%s]: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @CopyStat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CopyStat(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca %struct.utimbuf, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  br label %75

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @stat(i8* %15, %struct.stat* %5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %75

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %6, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %6, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @utime(i8* %26, %struct.utimbuf* %6)
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @S_IRWXU, align 4
  %32 = load i32, i32* @S_IRWXG, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @S_IRWXO, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %30, %35
  %37 = call i32 @chmod(i8* %28, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %19
  %41 = load i32, i32* @stderr, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = call i8* @PrintablePath(i8* %42)
  %44 = load i32, i32* @errno, align 4
  %45 = call i8* @strerror(i32 %44)
  %46 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %45)
  br label %47

47:                                               ; preds = %40, %19
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @chown(i8* %48, i32 -1, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load i32, i32* @stderr, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = call i8* @PrintablePath(i8* %56)
  %58 = load i32, i32* @errno, align 4
  %59 = call i8* @strerror(i32 %58)
  %60 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %57, i8* %59)
  br label %61

61:                                               ; preds = %54, %47
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @chown(i8* %62, i32 %64, i32 -1)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load i32, i32* @stderr, align 4
  %70 = load i8*, i8** %4, align 8
  %71 = call i8* @PrintablePath(i8* %70)
  %72 = load i32, i32* @errno, align 4
  %73 = call i8* @strerror(i32 %72)
  %74 = call i32 @fprintf(i32 %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %71, i8* %73)
  br label %75

75:                                               ; preds = %13, %18, %68, %61
  ret void
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @utime(i8*, %struct.utimbuf*) #1

declare dso_local i32 @chmod(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @PrintablePath(i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @chown(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
