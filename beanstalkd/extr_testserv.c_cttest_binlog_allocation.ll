; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testserv.c_cttest_binlog_allocation.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testserv.c_cttest_binlog_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i32 }

@size = common dso_local global i32 0, align 4
@srv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"INSERTED %d\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"put 0 0 120 22\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"job payload xxxxxxxxxx\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"delete %d\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"DELETED\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cttest_binlog_allocation() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i32 601, i32* @size, align 4
  %6 = call i32 (...) @ctdir()
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv, i32 0, i32 0, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv, i32 0, i32 0, i32 0), align 8
  %7 = load i32, i32* @size, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv, i32 0, i32 0, i32 1), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv, i32 0, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv, i32 0, i32 0, i32 2), align 8
  %8 = call i32 (...) @SERVER()
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @mustdiallocal(i32 %9)
  store i32 %10, i32* %3, align 4
  store i32 1, i32* %1, align 4
  br label %11

11:                                               ; preds = %26, %0
  %12 = load i32, i32* %1, align 4
  %13 = icmp sle i32 %12, 96
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = load i32, i32* %1, align 4
  %16 = call i8* @fmtalloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i8* %16, i8** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @mustsend(i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @mustsend(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32, i32* %3, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @ckresp(i32 %21, i8* %22)
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @free(i8* %24)
  br label %26

26:                                               ; preds = %14
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %11

29:                                               ; preds = %11
  store i32 1, i32* %1, align 4
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i32, i32* %1, align 4
  %32 = icmp sle i32 %31, 96
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i32, i32* %1, align 4
  %35 = call i8* @fmtalloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  store i8* %35, i8** %5, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @mustsend(i32 %36, i8* %37)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @ckresp(i32 %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @free(i8* %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %1, align 4
  br label %30

46:                                               ; preds = %30
  ret void
}

declare dso_local i32 @ctdir(...) #1

declare dso_local i32 @SERVER(...) #1

declare dso_local i32 @mustdiallocal(i32) #1

declare dso_local i8* @fmtalloc(i8*, i32) #1

declare dso_local i32 @mustsend(i32, i8*) #1

declare dso_local i32 @ckresp(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
