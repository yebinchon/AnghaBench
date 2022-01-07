; ModuleID = '/home/carl/AnghaBench/beanstalkd/ct/extr_ct.c_readtokens.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/ct/extr_ct.c_readtokens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"MAKEFLAGS\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c" --jobserver-fds=\00", align 1
@rjobfd = common dso_local global i32 0, align 4
@wjobfd = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @readtokens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readtokens() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 1, i32* %2, align 4
  %6 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %1, align 4
  br label %46

11:                                               ; preds = %0
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @strstr(i8* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i8* %13, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 17
  %18 = call i64 @strtol(i8* %17, i8** %4, i32 10)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* @rjobfd, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = call i64 @strtol(i8* %21, i8** null, i32 10)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* @wjobfd, align 4
  br label %24

24:                                               ; preds = %15, %11
  %25 = load i32, i32* @rjobfd, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load i32, i32* @rjobfd, align 4
  %29 = load i32, i32* @F_SETFL, align 4
  %30 = load i32, i32* @rjobfd, align 4
  %31 = load i32, i32* @F_GETFL, align 4
  %32 = call i32 (i32, i32, ...) @fcntl(i32 %30, i32 %31)
  %33 = load i32, i32* @O_NONBLOCK, align 4
  %34 = or i32 %32, %33
  %35 = call i32 (i32, i32, ...) @fcntl(i32 %28, i32 %29, i32 %34)
  br label %36

36:                                               ; preds = %40, %27
  %37 = load i32, i32* @rjobfd, align 4
  %38 = call i64 @read(i32 %37, i8* %3, i32 1)
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %36

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i32, i32* %2, align 4
  store i32 %45, i32* %1, align 4
  br label %46

46:                                               ; preds = %44, %9
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i64 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
