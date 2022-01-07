; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_main.c_su.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_main.c_su.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"getpwnam(\22%s\22)\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"getpwnam(\22%s\22): no such user\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"setgid(%d \22%s\22)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"setuid(%d \22%s\22)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @su to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @su(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i64 0, i64* @errno, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct.passwd* @getpwnam(i8* %5)
  store %struct.passwd* %6, %struct.passwd** %3, align 8
  %7 = load i64, i64* @errno, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 (i8*, i8*, ...) @twarn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = call i32 @exit(i32 32) #3
  unreachable

13:                                               ; preds = %1
  %14 = load %struct.passwd*, %struct.passwd** %3, align 8
  %15 = icmp ne %struct.passwd* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @twarnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = call i32 @exit(i32 33) #3
  unreachable

20:                                               ; preds = %13
  %21 = load %struct.passwd*, %struct.passwd** %3, align 8
  %22 = getelementptr inbounds %struct.passwd, %struct.passwd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @setgid(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.passwd*, %struct.passwd** %3, align 8
  %29 = getelementptr inbounds %struct.passwd, %struct.passwd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 (i8*, i8*, ...) @twarn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %32, i8* %33)
  %35 = call i32 @exit(i32 34) #3
  unreachable

36:                                               ; preds = %20
  %37 = load %struct.passwd*, %struct.passwd** %3, align 8
  %38 = getelementptr inbounds %struct.passwd, %struct.passwd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @setuid(i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.passwd*, %struct.passwd** %3, align 8
  %45 = getelementptr inbounds %struct.passwd, %struct.passwd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = load i8*, i8** %2, align 8
  %50 = call i32 (i8*, i8*, ...) @twarn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %48, i8* %49)
  %51 = call i32 @exit(i32 34) #3
  unreachable

52:                                               ; preds = %36
  ret void
}

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @twarn(i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @twarnx(i8*, i8*) #1

declare dso_local i32 @setgid(i32) #1

declare dso_local i32 @setuid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
