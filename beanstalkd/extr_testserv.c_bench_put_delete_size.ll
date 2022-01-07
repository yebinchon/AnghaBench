; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testserv.c_bench_put_delete_size.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testserv.c_bench_put_delete_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@srv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@JOB_DATA_SIZE_LIMIT_MAX = common dso_local global i32 0, align 4
@job_data_size_limit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"put 0 0 0 %d\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"INSERTED \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"delete %d\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"DELETED\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @bench_put_delete_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bench_put_delete_size(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [50 x i8], align 16
  %14 = alloca [50 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = call i32 (...) @ctdir()
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv, i32 0, i32 0, i32 4), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv, i32 0, i32 0, i32 0), align 4
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv, i32 0, i32 0, i32 1), align 4
  %23 = load i32, i32* %10, align 4
  %24 = mul nsw i32 %23, 1000000
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv, i32 0, i32 0, i32 2), align 4
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv, i32 0, i32 0, i32 3), align 4
  br label %26

26:                                               ; preds = %20, %5
  %27 = load i32, i32* @JOB_DATA_SIZE_LIMIT_MAX, align 4
  store i32 %27, i32* @job_data_size_limit, align 4
  %28 = call i32 (...) @SERVER()
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @mustdiallocal(i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %15, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %16, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @memset(i8* %35, i8 signext 97, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @ctsetbytes(i32 %41)
  %43 = getelementptr inbounds [50 x i8], [50 x i8]* %14, i64 0, i64 0
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = call i32 (...) @ctresettimer()
  store i32 0, i32* %17, align 4
  br label %47

47:                                               ; preds = %70, %26
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load i32, i32* %12, align 4
  %53 = getelementptr inbounds [50 x i8], [50 x i8]* %14, i64 0, i64 0
  %54 = call i32 @mustsend(i32 %52, i8* %53)
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @mustsend(i32 %55, i8* %35)
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @mustsend(i32 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @ckrespsub(i32 %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %61 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %62 = load i32, i32* %17, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %12, align 4
  %66 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %67 = call i32 @mustsend(i32 %65, i8* %66)
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @ckresp(i32 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %70

70:                                               ; preds = %51
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %17, align 4
  br label %47

73:                                               ; preds = %47
  %74 = call i32 (...) @ctstoptimer()
  %75 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %75)
  ret void
}

declare dso_local i32 @ctdir(...) #1

declare dso_local i32 @SERVER(...) #1

declare dso_local i32 @mustdiallocal(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @ctsetbytes(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ctresettimer(...) #1

declare dso_local i32 @mustsend(i32, i8*) #1

declare dso_local i32 @ckrespsub(i32, i8*) #1

declare dso_local i32 @ckresp(i32, i8*) #1

declare dso_local i32 @ctstoptimer(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
