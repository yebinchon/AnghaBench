; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testserv.c_cttest_binlog_size_limit.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testserv.c_cttest_binlog_size_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }

@size = common dso_local global i32 0, align 4
@srv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"%s/binlog.2\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"INSERTED %d\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"put 0 0 100 50\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%s/binlog.1\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"binlog.1 %d != %d\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"binlog.2 %d != %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cttest_binlog_size_limit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i32 4096, i32* @size, align 4
  %8 = call i32 (...) @ctdir()
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv, i32 0, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv, i32 0, i32 0, i32 1), align 4
  %9 = load i32, i32* @size, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv, i32 0, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv, i32 0, i32 0, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv, i32 0, i32 0, i32 3), align 4
  %10 = call i32 (...) @SERVER()
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @mustdiallocal(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = call i32 (...) @ctdir()
  %14 = call i8* @fmtalloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i8* %14, i8** %5, align 8
  br label %15

15:                                               ; preds = %20, %0
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @exist(i8* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  %23 = call i8* @fmtalloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i8* %23, i8** %6, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @mustsend(i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @mustsend(i32 %26, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32, i32* %4, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @ckresp(i32 %28, i8* %29)
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @free(i8* %31)
  br label %15

33:                                               ; preds = %15
  %34 = call i32 (...) @ctdir()
  %35 = call i8* @fmtalloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @filesize(i8* %36)
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @size, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @size, align 4
  %44 = call i32 @assertf(i32 %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @filesize(i8* %45)
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @size, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @size, align 4
  %53 = call i32 @assertf(i32 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @free(i8* %56)
  ret void
}

declare dso_local i32 @ctdir(...) #1

declare dso_local i32 @SERVER(...) #1

declare dso_local i32 @mustdiallocal(i32) #1

declare dso_local i8* @fmtalloc(i8*, i32) #1

declare dso_local i32 @exist(i8*) #1

declare dso_local i32 @mustsend(i32, i8*) #1

declare dso_local i32 @ckresp(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @filesize(i8*) #1

declare dso_local i32 @assertf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
